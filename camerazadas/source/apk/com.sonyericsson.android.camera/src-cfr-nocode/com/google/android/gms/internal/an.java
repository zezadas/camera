/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.al;
import com.google.android.gms.internal.am;
import com.google.android.gms.internal.ey;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 */
@ez
public class an
extends Thread {
    private boolean mStarted;
    private final Object mw;
    private final int nf;
    private final int nh;
    private boolean ns;
    private boolean nt;
    private final am nu;
    private final al nv;
    private final ey nw;
    private final int nx;
    private final int ny;
    private final int nz;

    public an(am var1, al var2, Bundle var3, ey var4);

    private void a(Activity var1);

    private boolean a(WebView var1, ak var2);

    private boolean aW();

    a a(View var1, ak var2);

    void a(ak var1, WebView var2, String var3);

    public void aV();

    public ak aX();

    public void aY();

    public boolean aZ();

    boolean g(View var1);

    void h(View var1);

    @Override
    public void run();

    public void wakeup();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    @ez
    class a {
        final /* synthetic */ an nB;
        final int nG;
        final int nH;

        a(an var1, int var2, int var3);
    }

}

