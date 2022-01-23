package com.github.catvod.analyzeRules;

import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;

import kotlin.jvm.internal.Intrinsics;

public final class RuleAnalyzer {
    private String queue;
    private int pos;
    private int start;
    private int startX;
    private ArrayList rule;
    private int step;

    private boolean code;

    private String elementsType;

    private static final char ESC = '\\';


    public final String getElementsType() {
        return this.elementsType;
    }

    public final void setElementsType(String var1) {
        this.elementsType = var1;
    }

    public final void trim() {
        if (this.queue.charAt(this.pos) == '@' || Intrinsics.compare(this.queue.charAt(this.pos), 33) < 0) {
            for (int var10001 = this.pos++; this.queue.charAt(this.pos) == '@' || Intrinsics.compare(this.queue.charAt(this.pos), 33) < 0; var10001 = this.pos++) {
            }

            this.start = this.pos;
            this.startX = this.pos;
        }

    }

    public final void reSetPos() {
        this.pos = 0;
        this.startX = 0;
    }

    private final boolean consumeTo(String seq) {
        this.start = this.pos;
        int offset = StringUtils.indexOf(this.queue, seq, this.pos);
        if (offset != -1) {
            this.pos = offset;
            return true;
        } else {
            return false;
        }
    }

    private final boolean consumeToAny(String... seq) {
        for (int pos = this.pos; pos != this.queue.length(); ++pos) {
            for (String s : seq) {
                if (this.queue.regionMatches(pos, s, 0, s.length())) {
                    this.step = s.length();
                    this.pos = pos;
                    return true;
                }
            }
        }
        return false;
    }

    private final int findToAny(char... seq) {
        while (pos != queue.length()) {
            for(char s:seq) {
                if(queue.charAt(pos) == s) {
                    return pos;
                }
            }
            pos++;
        }
        return -1;
    }

    private final boolean chompCodeBalanced(char open, char close) {
        int pos = this.pos;
        int depth = 0;
        int otherDepth = 0;
        boolean inSingleQuote = false;
        boolean inDoubleQuote = false;

        do {
            if (pos == queue.length()) break;
            char c = this.queue.charAt(pos++);
            if (c != ESC) {
                if (c == '\'' && !inDoubleQuote) {
                    inSingleQuote = !inSingleQuote;
                } else if (c == '"' && !inSingleQuote) {
                    inDoubleQuote = !inDoubleQuote;
                }
                if (inSingleQuote || inDoubleQuote) continue; //语法单元未匹配结束，直接进入下个循环
                if (c == '[') {
                    depth++;
                } else if (c == ']') {
                    depth--;
                } else if (depth == 0) {
                    if (c == open) {
                        otherDepth++;
                    } else if (c == close) {
                        otherDepth--;
                    }
                }

            } else pos++;
        } while (depth > 0 || otherDepth > 0);
        if (depth > 0 || otherDepth > 0) return false;
        else {
            this.pos = pos; //同步位置
            return true;
        }
    }

    private final boolean chompRuleBalanced(char open, char close) {
        int pos = this.pos;
        int depth = 0;
        boolean inSingleQuote = false;
        boolean inDoubleQuote = false;
        do {
            if (pos == queue.length()) break;
            char c = this.queue.charAt(pos++);
            if (c == '\'' && !inDoubleQuote) {
                inSingleQuote = !inSingleQuote;
            } else if (c == '"' && !inSingleQuote) {
                inDoubleQuote = !inDoubleQuote;
            }
            if(inSingleQuote || inDoubleQuote) continue;
            else if(c == '\\'){
                pos++;
                continue;
            }
            if(c == open) depth++;
            else if( c == close) depth--;
        } while (depth>0);
        if(depth > 0) return false;
        else {
            this.pos = pos;
            return true;
        }
    }


    public final ArrayList splitRule(String... split) {
        if (split.length == 1) {
            this.elementsType = split[0];
            if (!this.consumeTo(this.elementsType)) {
                rule.add(queue.substring(startX));
                return rule;
            } else {
                this.step = this.elementsType.length();
                return splitRuleNext();
            }
        } else if (!consumeToAny(split)) {
            rule.add(queue.substring(startX));
            return rule;
        }

        int end = this.pos;
        this.pos = this.start;

        do {
            int st = this.findToAny('[', '(');
            if (st == -1) {
                rule.add(queue.substring(startX, end));
                this.elementsType = queue.substring(end, end + step);
                pos = end + step;
                while (consumeTo(this.elementsType)) {
                    rule.add(queue.substring(start, pos));
                    pos += step;
                }
                rule.add(queue.substring(pos));
                return this.rule;
            }
            if (st > end) {
                rule.add(queue.substring(startX, end));
                this.elementsType = queue.substring(end, end + step);
                pos = end + step;
                while (consumeTo(elementsType) && pos < st) {
                    rule.add(queue.substring(start, pos));
                    pos += step;
                }
                if (this.pos > st) {
                    this.startX = this.start;
                    return splitRuleNext();
                } else {
                    rule.add(queue.substring(pos));
                    return rule;
                }
            }
            this.pos = st;
            char next = queue.charAt(pos) == '[' ? ']' : ')';
            if (!chompBalanced(queue.charAt(pos), next)) {
                throw new Error(queue.substring(0, start) + "后未平衡");
            }
        } while (end > this.pos);
        this.start = this.pos;
        return splitRule(split);
    }


    private boolean chompBalanced(char open, char close) {
        if (code) {
            return chompCodeBalanced(open, close);
        } else {
            return chompRuleBalanced(open, close);
        }
    }

    private final ArrayList splitRuleNext() {
        int end = this.pos;
        this.pos = this.start;

        do {
            int st = this.findToAny('[', '(');
            if (st == -1) {
                rule.add(queue.substring(startX, end));
                pos = end + step;
                while (consumeTo(elementsType)) {
                    rule.add(queue.substring(start, pos));
                    pos += step;
                }
                rule.add(queue.substring(pos));
                return this.rule;
            }
            if (st > end) {
                rule.add(queue.substring(startX, end));
                pos = end + step;
                while (consumeTo(elementsType) && pos < st) {
                    rule.add(queue.substring(start, pos));
                    pos += step;
                }

                if (this.pos > st) {
                    this.startX = this.start;
                    splitRuleNext();
                } else {
                    rule.add(queue.substring(pos));
                    return rule;
                }
            }
            this.pos = st;
            char next = queue.charAt(pos) == '[' ? ']' : ')';
            if (!chompBalanced(queue.charAt(pos), next)) {
                throw new Error(queue.substring(0, start) + "后未平衡");
            }
        } while (end > this.pos);

        this.start = this.pos;
        if (!this.consumeTo(this.elementsType)) {
            rule.add(queue.substring(startX));
        } else {
            splitRuleNext();
        }
        return rule;
    }


    public final String innerRule(String inner, int startStep, int endStep, AnalyzeByJSonPath analyzeByJSonPath) {

        StringBuilder st = new StringBuilder();
        while (consumeTo(inner)) {
            int posPre = pos;
            if (chompCodeBalanced('{', '}')) {
                String frv = analyzeByJSonPath.getString(queue.substring(posPre + startStep, pos - endStep));
                if (StringUtils.isNotEmpty(frv)) {
                    st.append(queue.substring(startX, posPre)).append(frv);
                    startX = pos;
                    continue;
                }
            }
            pos += inner.length();
        }
        if (startX == 0) {
            return "";
        } else {
            return st.append(queue.substring(startX)).toString();
        }
    }

    public final String innerRule(String startStr, String endStr, AnalyzeByJSonPath analyzeByJSonPath) {
        StringBuilder st = new StringBuilder();
        while (consumeTo(startStr)) {
            pos += startStr.length();
            int posPre = pos;
            if (consumeTo(endStr)) {
                String frv = analyzeByJSonPath.getString(queue.substring(posPre, pos));
                st.append(queue.substring(startX, posPre - startStr.length())).append(frv);
                pos += endStr.length();
                startX = pos;
            }
        }
        if (startX == 0) {
            return queue;
        } else {
            return st.append(queue.substring(startX)).toString();
        }
    }


    public RuleAnalyzer(String data, boolean code) {
        this.queue = data;
        this.rule = new ArrayList();
        this.elementsType = "";
        this.code = code;
    }

    public RuleAnalyzer(String data) {
        this.queue = data;
        this.rule = new ArrayList();
        this.elementsType = "";
        this.code = false;
    }
}

