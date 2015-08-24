/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.cb;
import com.google.android.gms.internal.dg;
import com.google.android.gms.internal.dj;
import com.google.android.gms.internal.dk;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.t;
import com.google.android.gms.internal.v;
import java.util.HashMap;

/*
 * Exception performing whole class analysis.
 */
@ez
public class gw
extends WebViewClient {
    protected final gv md;
    private final Object mw;
    private cb pJ;
    private bz pL;
    private v pM;
    private bw pz;
    private a tg;
    private final HashMap<String, by> wP;
    private t wQ;
    private dn wR;
    private boolean wS;
    private boolean wT;
    private dq wU;
    private final dg wV;

    public gw(gv var1, boolean var2);

    gw(gv var1, boolean var2, dg var3);

    private static boolean d(Uri var0);

    private void e(Uri var1);

    public final void a(dj var1);

    protected void a(dm var1);

    public final void a(a var1);

    public void a(t var1, dn var2, bw var3, dq var4, boolean var5, bz var6, cb var7, v var8);

    public void a(t var1, dn var2, bw var3, dq var4, boolean var5, bz var6, v var7);

    public final void a(String var1, by var2);

    public final void a(boolean var1, int var2);

    public final void a(boolean var1, int var2, String var3);

    public final void a(boolean var1, int var2, String var3, String var4);

    public final void bX();

    public v dD();

    public boolean dE();

    public void dF();

    @Override
    public final void onLoadResource(WebView var1, String var2);

    @Override
    public final void onPageFinished(WebView var1, String var2);

    public final void reset();

    @Override
    public final boolean shouldOverrideUrlLoading(WebView var1, String var2);

    public final void y(boolean var1);

    public static interface a {
        public void a(gv var1);
    }

}

