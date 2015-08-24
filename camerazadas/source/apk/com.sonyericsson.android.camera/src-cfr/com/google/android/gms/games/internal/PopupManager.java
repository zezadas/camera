/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.GamesLog;
import com.google.android.gms.internal.kc;

public class PopupManager {
    protected GamesClientImpl XZ;
    protected PopupLocationInfo Ya;

    private PopupManager(GamesClientImpl gamesClientImpl, int n) {
        this.XZ = gamesClientImpl;
        this.dG(n);
    }

    public static PopupManager a(GamesClientImpl gamesClientImpl, int n) {
        if (kc.hC()) {
            return new PopupManagerHCMR1(gamesClientImpl, n);
        }
        return new PopupManager(gamesClientImpl, n);
    }

    protected void dG(int n) {
        this.Ya = new PopupLocationInfo(n, new Binder());
    }

    public void kM() {
        this.XZ.a(this.Ya.Yb, this.Ya.kP());
    }

    public Bundle kN() {
        return this.Ya.kP();
    }

    public IBinder kO() {
        return this.Ya.Yb;
    }

    public void l(View view) {
    }

    public void setGravity(int n) {
        this.Ya.gravity = n;
    }

    public static final class PopupLocationInfo {
        public IBinder Yb;
        public int Yc = -1;
        public int bottom = 0;
        public int gravity;
        public int left = 0;
        public int right = 0;
        public int top = 0;

        private PopupLocationInfo(int n, IBinder iBinder) {
            this.gravity = n;
            this.Yb = iBinder;
        }

        public Bundle kP() {
            Bundle bundle = new Bundle();
            bundle.putInt("popupLocationInfo.gravity", this.gravity);
            bundle.putInt("popupLocationInfo.displayId", this.Yc);
            bundle.putInt("popupLocationInfo.left", this.left);
            bundle.putInt("popupLocationInfo.top", this.top);
            bundle.putInt("popupLocationInfo.right", this.right);
            bundle.putInt("popupLocationInfo.bottom", this.bottom);
            return bundle;
        }
    }

    private static final class PopupManagerHCMR1
    extends PopupManager
    implements View.OnAttachStateChangeListener,
    ViewTreeObserver.OnGlobalLayoutListener {
        private boolean Wy = false;
        private WeakReference<View> Yd;

        protected PopupManagerHCMR1(GamesClientImpl gamesClientImpl, int n) {
            super(gamesClientImpl, n);
        }

        private void m(View view) {
            int n;
            Object object;
            int n2 = n = -1;
            if (kc.hG()) {
                object = view.getDisplay();
                n2 = n;
                if (object != null) {
                    n2 = object.getDisplayId();
                }
            }
            object = view.getWindowToken();
            int[] arrn = new int[2];
            view.getLocationInWindow(arrn);
            n = view.getWidth();
            int n3 = view.getHeight();
            this.Ya.Yc = n2;
            this.Ya.Yb = object;
            this.Ya.left = arrn[0];
            this.Ya.top = arrn[1];
            this.Ya.right = arrn[0] + n;
            this.Ya.bottom = arrn[1] + n3;
            if (this.Wy) {
                this.kM();
                this.Wy = false;
            }
        }

        @Override
        protected void dG(int n) {
            this.Ya = new PopupLocationInfo(n, null);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void kM() {
            if (this.Ya.Yb != null) {
                super.kM();
                return;
            }
            boolean bl = this.Yd != null;
            this.Wy = bl;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void l(View object) {
            Object object2;
            Object object3;
            this.XZ.kx();
            if (this.Yd != null) {
                object3 = this.Yd.get();
                Context context = this.XZ.getContext();
                object2 = object3;
                if (object3 == null) {
                    object2 = object3;
                    if (context instanceof Activity) {
                        object2 = ((Activity)context).getWindow().getDecorView();
                    }
                }
                if (object2 != null) {
                    object2.removeOnAttachStateChangeListener(this);
                    object2 = object2.getViewTreeObserver();
                    if (kc.hF()) {
                        object2.removeOnGlobalLayoutListener(this);
                    } else {
                        object2.removeGlobalOnLayoutListener(this);
                    }
                }
            }
            this.Yd = null;
            object3 = this.XZ.getContext();
            object2 = object;
            if (object == null) {
                object2 = object;
                if (object3 instanceof Activity) {
                    object = object2 = ((Activity)object3).findViewById(16908290);
                    if (object2 == null) {
                        object = ((Activity)object3).getWindow().getDecorView();
                    }
                    GamesLog.p("PopupManager", "You have not specified a View to use as content view for popups. Falling back to the Activity content view which may not work properly in future versions of the API. Use setViewForPopups() to set your content view.");
                    object2 = object;
                }
            }
            if (object2 != null) {
                this.m((View)object2);
                this.Yd = new WeakReference<Object>(object2);
                object2.addOnAttachStateChangeListener(this);
                object2.getViewTreeObserver().addOnGlobalLayoutListener(this);
                return;
            }
            GamesLog.q("PopupManager", "No content view usable to display popups. Popups will not be displayed in response to this client's calls. Use setViewForPopups() to set your content view.");
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onGlobalLayout() {
            View view;
            if (this.Yd == null || (view = this.Yd.get()) == null) {
                return;
            }
            this.m(view);
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            this.m(view);
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            this.XZ.kx();
            view.removeOnAttachStateChangeListener(this);
        }
    }

}

