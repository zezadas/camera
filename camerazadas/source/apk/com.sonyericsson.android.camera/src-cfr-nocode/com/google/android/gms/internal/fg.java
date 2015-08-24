/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.ff;
import com.google.android.gms.internal.fh;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fm;
import com.google.android.gms.internal.gg;

/*
 * Exception performing whole class analysis.
 */
@ez
public abstract class fg
extends gg {
    private final fi pQ;
    private final ff.a tu;

    public fg(fi var1, ff.a var2);

    private static fk a(fm var0, fi var1);

    public abstract void cC();

    public abstract fm cD();

    @Override
    public final void co();

    @Override
    public final void onStop();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    @ez
    public static final class a
    extends fg {
        private final Context mContext;

        public a(Context var1, fi var2, ff.a var3);

        @Override
        public void cC();

        @Override
        public fm cD();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    @ez
    public static final class b
    extends fg
    implements GooglePlayServicesClient.ConnectionCallbacks,
    GooglePlayServicesClient.OnConnectionFailedListener {
        private final Object mw;
        private final ff.a tu;
        private final fh tv;

        public b(Context var1, fi var2, ff.a var3);

        @Override
        public void cC();

        @Override
        public fm cD();

        @Override
        public void onConnected(Bundle var1);

        @Override
        public void onConnectionFailed(ConnectionResult var1);

        @Override
        public void onDisconnected();
    }

}

