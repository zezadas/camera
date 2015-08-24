/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.games.internal.GamesClientImpl;

/*
 * Exception performing whole class analysis.
 */
public class PopupManager {
    protected GamesClientImpl XZ;
    protected PopupLocationInfo Ya;

    private PopupManager(GamesClientImpl var1, int var2);

    /* synthetic */ PopupManager(GamesClientImpl var1, int var2,  var3);

    public static PopupManager a(GamesClientImpl var0, int var1);

    protected void dG(int var1);

    public void kM();

    public Bundle kN();

    public IBinder kO();

    public void l(View var1);

    public void setGravity(int var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class PopupLocationInfo {
        public IBinder Yb;
        public int Yc;
        public int bottom;
        public int gravity;
        public int left;
        public int right;
        public int top;

        private PopupLocationInfo(int var1, IBinder var2);

        /* synthetic */ PopupLocationInfo(int var1, IBinder var2,  var3);

        public Bundle kP();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class PopupManagerHCMR1
    extends PopupManager
    implements View.OnAttachStateChangeListener,
    ViewTreeObserver.OnGlobalLayoutListener {
        private boolean Wy;
        private WeakReference<View> Yd;

        protected PopupManagerHCMR1(GamesClientImpl var1, int var2);

        private void m(View var1);

        @Override
        protected void dG(int var1);

        @Override
        public void kM();

        @Override
        public void l(View var1);

        @Override
        public void onGlobalLayout();

        @Override
        public void onViewAttachedToWindow(View var1);

        @Override
        public void onViewDetachedFromWindow(View var1);
    }

}

