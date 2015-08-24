/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.net;

import java.net.Socket;
import java.net.SocketException;

class TrafficStatsCompatIcs {
    TrafficStatsCompatIcs();

    public static void clearThreadStatsTag();

    public static int getThreadStatsTag();

    public static void incrementOperationCount(int var0);

    public static void incrementOperationCount(int var0, int var1);

    public static void setThreadStatsTag(int var0);

    public static void tagSocket(Socket var0) throws SocketException;

    public static void untagSocket(Socket var0) throws SocketException;
}

