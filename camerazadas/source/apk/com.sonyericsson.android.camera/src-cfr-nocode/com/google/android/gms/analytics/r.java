/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.af;
import com.google.android.gms.analytics.c;
import com.google.android.gms.analytics.f;
import com.google.android.gms.internal.hb;
import com.google.android.gms.internal.ju;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;

/*
 * Exception performing whole class analysis.
 */
class r
implements af,
c.b,
c.c {
    private final Context mContext;
    private boolean yA;
    private boolean yB;
    private boolean yC;
    private ju yD;
    private long yE;
    private com.google.android.gms.analytics.d yd;
    private final f ye;
    private boolean yg;
    private volatile long yq;
    private volatile a yr;
    private volatile com.google.android.gms.analytics.b ys;
    private com.google.android.gms.analytics.d yt;
    private final GoogleAnalytics yu;
    private final Queue<d> yv;
    private volatile int yw;
    private volatile Timer yx;
    private volatile Timer yy;
    private volatile Timer yz;

    r(Context var1, f var2);

    r(Context var1, f var2, com.google.android.gms.analytics.d var3, GoogleAnalytics var4);

    private Timer a(Timer var1);

    static /* synthetic */ void a(r var0);

    static /* synthetic */ a b(r var0);

    static /* synthetic */ void c(r var0);

    private void cC();

    static /* synthetic */ void d(r var0);

    static /* synthetic */ Queue e(r var0);

    private void ef();

    private void eh();

    private void ei();

    private void ej();

    private void ek();

    private void el();

    static /* synthetic */ long f(r var0);

    static /* synthetic */ long g(r var0);

    static /* synthetic */ ju h(r var0);

    static /* synthetic */ void i(r var0);

    static /* synthetic */ Timer j(r var0);

    @Override
    public void a(int var1, Intent var2);

    @Override
    public void b(Map<String, String> var1, long var2, String var4, List<hb> var5);

    @Override
    public void dH();

    @Override
    public void dN();

    @Override
    public void dispatch();

    @Override
    public void eg();

    @Override
    public void onConnected();

    @Override
    public void onDisconnected();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class a
    extends Enum<a> {
        public static final /* enum */ a yH;
        public static final /* enum */ a yI;
        public static final /* enum */ a yJ;
        public static final /* enum */ a yK;
        public static final /* enum */ a yL;
        public static final /* enum */ a yM;
        public static final /* enum */ a yN;
        private static final /* synthetic */ a[] yO;

        static;

        private a();

        public static a valueOf(String var0);

        public static a[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class b
    extends TimerTask {
        final /* synthetic */ r yF;

        private b(r var1);

        /* synthetic */ b(r var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class c
    extends TimerTask {
        final /* synthetic */ r yF;

        private c(r var1);

        /* synthetic */ c(r var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class d {
        private final Map<String, String> yP;
        private final long yQ;
        private final String yR;
        private final List<hb> yS;

        public d(Map<String, String> var1, long var2, String var4, List<hb> var5);

        public Map<String, String> em();

        public long en();

        public List<hb> eo();

        public String getPath();

        public String toString();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class e
    extends TimerTask {
        final /* synthetic */ r yF;

        private e(r var1);

        /* synthetic */ e(r var1,  var2);

        @Override
        public void run();
    }

}

