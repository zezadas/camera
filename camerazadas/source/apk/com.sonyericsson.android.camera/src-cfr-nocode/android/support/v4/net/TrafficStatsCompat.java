/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.net;

import java.net.Socket;
import java.net.SocketException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TrafficStatsCompat {
    private static final TrafficStatsCompatImpl IMPL;

    static;

    public TrafficStatsCompat();

    public static void clearThreadStatsTag();

    public static int getThreadStatsTag();

    public static void incrementOperationCount(int var0);

    public static void incrementOperationCount(int var0, int var1);

    public static void setThreadStatsTag(int var0);

    public static void tagSocket(Socket var0) throws SocketException;

    public static void untagSocket(Socket var0) throws SocketException;

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class BaseTrafficStatsCompatImpl
    implements TrafficStatsCompatImpl {
        private ThreadLocal<SocketTags> mThreadSocketTags;

        BaseTrafficStatsCompatImpl();

        @Override
        public void clearThreadStatsTag();

        @Override
        public int getThreadStatsTag();

        @Override
        public void incrementOperationCount(int var1);

        @Override
        public void incrementOperationCount(int var1, int var2);

        @Override
        public void setThreadStatsTag(int var1);

        @Override
        public void tagSocket(Socket var1);

        @Override
        public void untagSocket(Socket var1);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class SocketTags {
            public int statsTag;

            private SocketTags();

            /* synthetic */ SocketTags(android.support.v4.net.TrafficStatsCompat$1 var1);
        }

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class IcsTrafficStatsCompatImpl
    implements TrafficStatsCompatImpl {
        IcsTrafficStatsCompatImpl();

        @Override
        public void clearThreadStatsTag();

        @Override
        public int getThreadStatsTag();

        @Override
        public void incrementOperationCount(int var1);

        @Override
        public void incrementOperationCount(int var1, int var2);

        @Override
        public void setThreadStatsTag(int var1);

        @Override
        public void tagSocket(Socket var1) throws SocketException;

        @Override
        public void untagSocket(Socket var1) throws SocketException;
    }

    static interface TrafficStatsCompatImpl {
        public void clearThreadStatsTag();

        public int getThreadStatsTag();

        public void incrementOperationCount(int var1);

        public void incrementOperationCount(int var1, int var2);

        public void setThreadStatsTag(int var1);

        public void tagSocket(Socket var1) throws SocketException;

        public void untagSocket(Socket var1) throws SocketException;
    }

}

