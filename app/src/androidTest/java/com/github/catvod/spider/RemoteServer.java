package com.github.catvod.spider;

import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import fi.iki.elonen.NanoHTTPD;
import fi.iki.elonen.NanoHTTPD.Response.Status;

public class RemoteServer extends NanoHTTPD {
    /**
     * Constructs an HTTP server on given port.
     *
     * @param port
     */
    private static String TAG = "xiaxl: M3U8Server";

    public RemoteServer(int port) {
        super(9978);
    }

    public RemoteServer() throws IOException {
        super(9978);
        start(NanoHTTPD.SOCKET_READ_TIMEOUT, false);
        System.out.println("\nRunning! Point your browsers to http://localhost:9978/ \n");
    }
    /**
     * Constructs an HTTP server on given hostname and port.
     *
     * @param hostname
     * @param port
     */
    public RemoteServer(String hostname, int port) {
        super(hostname, port);
    }

    @Override
    public Response serve(IHTTPSession session) {
        Log.d(TAG, "---serve---");
        //
        String url = String.valueOf(session.getUri());
        Log.d(TAG, "请求URL：" + url);
        File file = new File(url);
        //
        if (file.exists()) {
            FileInputStream fis = null;
            try {
                fis = new FileInputStream(file);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return newFixedLengthResponse(Response.Status.NOT_FOUND, "text/html", "文件不存在：" + url);
            }
            long length = file.length();
            // ts文件
            String mimeType = "video/mpeg";
            if (url.contains(".m3u8")) {
                // m3u8文件
                mimeType = "video/x-mpegURL";
            }
            return newChunkedResponse(Status.OK, mimeType, fis);
        } else {
            return newFixedLengthResponse(Status.NOT_FOUND, "text/html", "文件不存在：" + url);
        }
    }
}
