/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Handler;
import android.webkit.WebView;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.ha;

/*
 * Exception performing whole class analysis.
 */
@ez
public class fc
implements Runnable {
    private final int lf;
    private final int lg;
    protected final gv md;
    private final Handler td;
    private final long te;
    private long tf;
    private gw.a tg;
    protected boolean th;
    protected boolean ti;

    public fc(gw.a var1, gv var2, int var3, int var4);

    public fc(gw.a var1, gv var2, int var3, int var4, long var5, long var7);

    static /* synthetic */ int a(fc var0);

    static /* synthetic */ int b(fc var0);

    static /* synthetic */ long c(fc var0);

    static /* synthetic */ long d(fc var0);

    static /* synthetic */ gw.a e(fc var0);

    static /* synthetic */ long f(fc var0);

    static /* synthetic */ Handler g(fc var0);

    public void a(fk var1, ha var2);

    public void b(fk var1);

    public boolean cA();

    public boolean cB();

    public void cy();

    public void cz();

    @Override
    public void run();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected final class a
    extends AsyncTask<Void, Void, Boolean> {
        private final WebView tj;
        private Bitmap tk;
        final /* synthetic */ fc tl;

        public a(fc var1, WebView var2);

        protected /* varargs */ Boolean a(Void ... var1);

        protected void a(Boolean var1);

        @Override
        protected /* synthetic */ Object doInBackground(Object[] var1);

        @Override
        protected /* synthetic */ void onPostExecute(Object var1);

        @Override
        protected void onPreExecute();
    }

}

