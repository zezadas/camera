/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.do;
import com.google.android.gms.internal.dp;
import com.google.android.gms.internal.ds;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gm;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public class dk
extends ds.a {
    private static final int ru;
    private gv md;
    private final Activity nr;
    private boolean rA;
    private FrameLayout rB;
    private WebChromeClient.CustomViewCallback rC;
    private boolean rD;
    private boolean rE;
    private boolean rF;
    private RelativeLayout rG;
    private dm rv;
    private do rw;
    private c rx;
    private dp ry;
    private boolean rz;

    static;

    public dk(Activity var1);

    private static RelativeLayout.LayoutParams a(int var0, int var1, int var2, int var3);

    public static void a(Context var0, dm var1);

    @Override
    public void U();

    public void a(View var1, WebChromeClient.CustomViewCallback var2);

    public void b(int var1, int var2, int var3, int var4);

    public do bV();

    public void bW();

    public void bX();

    void bY();

    void bZ();

    public void c(int var1, int var2, int var3, int var4);

    void ca();

    public void close();

    public void n(boolean var1);

    public void o(boolean var1);

    @Override
    public void onCreate(Bundle var1);

    @Override
    public void onDestroy();

    @Override
    public void onPause();

    @Override
    public void onRestart();

    @Override
    public void onResume();

    @Override
    public void onSaveInstanceState(Bundle var1);

    @Override
    public void onStart();

    @Override
    public void onStop();

    void p(boolean var1) throws a;

    public void setRequestedOrientation(int var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    @ez
    private static final class a
    extends Exception {
        public a(String var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    @ez
    private static final class b
    extends RelativeLayout {
        private final gm ly;

        public b(Context var1, String var2);

        @Override
        public boolean onInterceptTouchEvent(MotionEvent var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    @ez
    private static final class c {
        public final int index;
        public final ViewGroup.LayoutParams rI;
        public final ViewGroup rJ;

        public c(gv var1) throws a;
    }

}

