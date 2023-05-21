package com.github.catvod.script;

public class ScriptException extends Exception{

    private int columnNumber;
    private String filename;
    private int lineNumber;

    public ScriptException(String s) {
        this.filename = null;
        this.lineNumber = -1;
        columnNumber = -1;
    }

    public ScriptException(Exception e) {
        this.filename = null;
        this.lineNumber = -1;
        columnNumber = -1;
    }

    public ScriptException(String message, String filename, int lineNumber) {
        this.filename = filename;
        this.lineNumber = lineNumber;
        columnNumber = -1;
    }

    public ScriptException(String message, String filename, int lineNumber, int columnNumber) {
        this.filename = filename;
        this.lineNumber = lineNumber;
        columnNumber = this.columnNumber;
    }

    @Override
    public String toString() {
        return "ScriptException{" +
                "columnNumber=" + columnNumber +
                ", filename='" + filename + '\'' +
                ", lineNumber=" + lineNumber +
                '}';
    }
}
