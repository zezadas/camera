/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.os.Build;
import android.support.v4.view.ViewGroupCompatHC;
import android.support.v4.view.ViewGroupCompatIcs;
import android.support.v4.view.ViewGroupCompatJellybeanMR2;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class ViewGroupCompat {
    static final ViewGroupCompatImpl IMPL;
    public static final int LAYOUT_MODE_CLIP_BOUNDS = 0;
    public static final int LAYOUT_MODE_OPTICAL_BOUNDS = 1;

    static {
        int n = Build.VERSION.SDK_INT;
        if (n >= 18) {
            IMPL = new ViewGroupCompatJellybeanMR2Impl();
            return;
        }
        if (n >= 14) {
            IMPL = new ViewGroupCompatIcsImpl();
            return;
        }
        if (n >= 11) {
            IMPL = new ViewGroupCompatHCImpl();
            return;
        }
        IMPL = new ViewGroupCompatStubImpl();
    }

    private ViewGroupCompat() {
    }

    public static int getLayoutMode(ViewGroup viewGroup) {
        return IMPL.getLayoutMode(viewGroup);
    }

    public static boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return IMPL.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public static void setLayoutMode(ViewGroup viewGroup, int n) {
        IMPL.setLayoutMode(viewGroup, n);
    }

    public static void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean bl) {
        IMPL.setMotionEventSplittingEnabled(viewGroup, bl);
    }

    static class ViewGroupCompatHCImpl
    extends ViewGroupCompatStubImpl {
        ViewGroupCompatHCImpl() {
        }

        @Override
        public void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean bl) {
            ViewGroupCompatHC.setMotionEventSplittingEnabled(viewGroup, bl);
        }
    }

    static class ViewGroupCompatIcsImpl
    extends ViewGroupCompatHCImpl {
        ViewGroupCompatIcsImpl() {
        }

        @Override
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return ViewGroupCompatIcs.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    static interface ViewGroupCompatImpl {
        public int getLayoutMode(ViewGroup var1);

        public boolean onRequestSendAccessibilityEvent(ViewGroup var1, View var2, AccessibilityEvent var3);

        public void setLayoutMode(ViewGroup var1, int var2);

        public void setMotionEventSplittingEnabled(ViewGroup var1, boolean var2);
    }

    static class ViewGroupCompatJellybeanMR2Impl
    extends ViewGroupCompatIcsImpl {
        ViewGroupCompatJellybeanMR2Impl() {
        }

        @Override
        public int getLayoutMode(ViewGroup viewGroup) {
            return ViewGroupCompatJellybeanMR2.getLayoutMode(viewGroup);
        }

        @Override
        public void setLayoutMode(ViewGroup viewGroup, int n) {
            ViewGroupCompatJellybeanMR2.setLayoutMode(viewGroup, n);
        }
    }

    static class ViewGroupCompatStubImpl
    implements ViewGroupCompatImpl {
        ViewGroupCompatStubImpl() {
        }

        @Override
        public int getLayoutMode(ViewGroup viewGroup) {
            return 0;
        }

        @Override
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return true;
        }

        @Override
        public void setLayoutMode(ViewGroup viewGroup, int n) {
        }

        @Override
        public void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean bl) {
        }
    }

}

