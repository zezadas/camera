/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.hb;
import com.google.android.gms.internal.hc;
import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
class c
implements com.google.android.gms.analytics.b {
    private Context mContext;
    private ServiceConnection xG;
    private b xH;
    private c xI;
    private hc xJ;

    public c(Context var1, b var2, c var3);

    static /* synthetic */ ServiceConnection a(c var0, ServiceConnection var1);

    static /* synthetic */ hc a(c var0, hc var1);

    static /* synthetic */ void a(c var0);

    static /* synthetic */ Context b(c var0);

    static /* synthetic */ c c(c var0);

    static /* synthetic */ b d(c var0);

    private hc dI();

    private void dK();

    private void dL();

    @Override
    public void a(Map<String, String> var1, long var2, String var4, List<hb> var5);

    @Override
    public void connect();

    @Override
    public void dH();

    protected void dJ();

    @Override
    public void disconnect();

    public boolean isConnected();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class a
    implements ServiceConnection {
        final /* synthetic */ c xK;

        a(c var1);

        @Override
        public void onServiceConnected(ComponentName var1, IBinder var2);

        @Override
        public void onServiceDisconnected(ComponentName var1);
    }

    public static interface b {
        public void onConnected();

        public void onDisconnected();
    }

    public static interface c {
        public void a(int var1, Intent var2);
    }

}

