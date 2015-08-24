/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.net;

import android.net.TrafficStats;
import java.net.Socket;
import java.net.SocketException;

class TrafficStatsCompatIcs {
    TrafficStatsCompatIcs() {
    }

    public static void clearThreadStatsTag() {
        TrafficStats.clearThreadStatsTag();
    }

    public static int getThreadStatsTag() {
        return TrafficStats.getThreadStatsTag();
    }

    public static void incrementOperationCount(int n) {
        TrafficStats.incrementOperationCount(n);
    }

    public static void incrementOperationCount(int n, int n2) {
        TrafficStats.incrementOperationCount(n, n2);
    }

    public static void setThreadStatsTag(int n) {
        TrafficStats.setThreadStatsTag(n);
    }

    public static void tagSocket(Socket socket) throws SocketException {
        TrafficStats.tagSocket(socket);
    }

    public static void untagSocket(Socket socket) throws SocketException {
        TrafficStats.untagSocket(socket);
    }
}

