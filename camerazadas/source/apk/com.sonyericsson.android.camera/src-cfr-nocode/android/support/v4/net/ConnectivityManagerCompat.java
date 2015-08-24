/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.net;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ConnectivityManagerCompat {
    private static final ConnectivityManagerCompatImpl IMPL;

    static;

    public ConnectivityManagerCompat();

    public static NetworkInfo getNetworkInfoFromBroadcast(ConnectivityManager var0, Intent var1);

    public static boolean isActiveNetworkMetered(ConnectivityManager var0);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class BaseConnectivityManagerCompatImpl
    implements ConnectivityManagerCompatImpl {
        BaseConnectivityManagerCompatImpl();

        @Override
        public boolean isActiveNetworkMetered(ConnectivityManager var1);
    }

    static interface ConnectivityManagerCompatImpl {
        public boolean isActiveNetworkMetered(ConnectivityManager var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class GingerbreadConnectivityManagerCompatImpl
    implements ConnectivityManagerCompatImpl {
        GingerbreadConnectivityManagerCompatImpl();

        @Override
        public boolean isActiveNetworkMetered(ConnectivityManager var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class HoneycombMR2ConnectivityManagerCompatImpl
    implements ConnectivityManagerCompatImpl {
        HoneycombMR2ConnectivityManagerCompatImpl();

        @Override
        public boolean isActiveNetworkMetered(ConnectivityManager var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class JellyBeanConnectivityManagerCompatImpl
    implements ConnectivityManagerCompatImpl {
        JellyBeanConnectivityManagerCompatImpl();

        @Override
        public boolean isActiveNetworkMetered(ConnectivityManager var1);
    }

}

