//package com.github.catvod.spider;
//
//import android.text.TextUtils;
//
//import com.github.catvod.ali.API;
//import com.github.catvod.bean.Result;
//import com.github.catvod.crawler.SpiderDebug;
//
//import org.json.JSONObject;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.regex.Matcher;
//import java.util.regex.Pattern;
//
//public class XYQHikerAL extends XYQHiker {
//
//    public static final Pattern pattern = Pattern.compile("www.aliyundrive.com/s/([^/]+)(/folder/([^/]+))?");
//
//    @Override
//    public String detailContent(List<String> list) {
//        String detailContent = super.detailContent(list);
//        if (detailContent.length() <= 0 || !detailContent.contains("vod_play_url")) {
//            return detailContent;
//        }
//        try {
//            ArrayList arrayList = new ArrayList();
//            ArrayList arrayList2 = new ArrayList();
//            ArrayList arrayList3 = new ArrayList();
//            JSONObject jSONObject = new JSONObject(detailContent);
//            String[] split = jSONObject.optJSONArray("list").getJSONObject(0).optString("vod_play_url").split("\\$\\$\\$");
//            if (split.length > 0) {
//                for (String str : split) {
//                    String[] split2 = str.split("\\#");
//                    if (split2.length > 0) {
//                        for (String str2 : split2) {
//                            String str3 = str2.split("\\$")[1];
//                            if (!str3.isEmpty()) {
//                                arrayList.add(str3);
//                            }
//                        }
//                    }
//                }
//            }
//            if (arrayList.size() > 0) {
//                for (int i = 0; i < arrayList.size(); i++) {
//                    ArrayList arrayList4 = new ArrayList();
//                    try {
//                        if (arrayList.get(i).toString().startsWith("magnet")) {
//                            return detailContent;
//                        }
//                        Matcher matcher = pattern.matcher(arrayList.get(i).toString());
//                        if (matcher.find()) {
//                            API.get().setRefreshToken("344d4e2759d14e349c6591ef4e5e772a");
//                            String shareId = matcher.group(1);
//                            String fileId = matcher.groupCount() == 3 ? matcher.group(3) : "";
//                            API.get().setShareId(shareId);
//                            return Result.string(API.get().getVod(arrayList.get(i).toString(), fileId));
//                        }
//                        String detailContent2 = super.detailContent(arrayList4);
//                        if (detailContent2.length() > 0 && detailContent2.contains("vod_play_url")) {
//                            JSONObject jSONObject2 = new JSONObject(detailContent2);
//                            String optString = jSONObject2.optJSONArray("list").getJSONObject(0).optString("vod_play_from");
//                            String optString2 = jSONObject2.optJSONArray("list").getJSONObject(0).optString("vod_play_url");
//                            if (!optString2.isEmpty()) {
//                                arrayList2.add(optString2);
//                                arrayList3.add(optString);
//                            }
//                        }
//                    } catch (Exception e) {
//                        e = e;
//                        SpiderDebug.log(e);
//                        return detailContent;
//                    }
//                }
//                String[] split3 = TextUtils.join("$$$", arrayList3).split("\\$\\$\\$");
//                ArrayList arrayList5 = new ArrayList();
//                int i2 = 0;
//                while (i2 < split3.length) {
//                    StringBuilder sb = new StringBuilder();
//                    sb.append(split3[i2]);
//                    sb.append("");
//                    i2++;
//                    sb.append(i2);
//                    arrayList5.add(sb.toString());
//                }
//                String join = TextUtils.join("$$$", arrayList5);
//                jSONObject.optJSONArray("list").getJSONObject(0).put("vod_play_url", TextUtils.join("$$$", arrayList2));
//                jSONObject.optJSONArray("list").getJSONObject(0).put("vod_play_from", join);
//                return jSONObject.toString();
//            }
//            return detailContent;
//        } catch (Exception e2) {
//            SpiderDebug.log(e2);
//        }
//        return "";
//    }
//
//    @Override
//    public String playerContent(String flag, String id, List<String> vipFlags) {
//        if (id.startsWith("magnet")) {
//            return super.playerContent(flag,id,vipFlags);
//        }
//        API.get().checkAccessToken();
//        String[] ids = id.split("\\+");
//        String url = flag.equals("原畫") ? API.get().getDownloadUrl(ids[0]) : API.get().getPreviewUrl(ids[0], flag);
//        return Result.get().url(url).subs(API.get().getSub(ids)).header(API.get().getHeader()).parse(0).string();
//    }
//}
