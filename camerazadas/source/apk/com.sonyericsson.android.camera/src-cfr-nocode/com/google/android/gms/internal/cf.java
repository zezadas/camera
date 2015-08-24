/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.internal.cg;
import com.google.android.gms.internal.ez;

@ez
public final class cf {
    public static void a(Context var0, b var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class a
    implements GooglePlayServicesClient.ConnectionCallbacks,
    GooglePlayServicesClient.OnConnectionFailedListener {
        private final Object mw;
        private final b pN;
        private final cg pO;

        public a(Context var1, b var2);

        a(Context var1, b var2, boolean var3);

        @Override
        public void onConnected(Bundle var1);

        @Override
        public void onConnectionFailed(ConnectionResult var1);

        @Override
        public void onDisconnected();
    }

    public static interface b {
        public void a(Bundle var1);
    }

}

