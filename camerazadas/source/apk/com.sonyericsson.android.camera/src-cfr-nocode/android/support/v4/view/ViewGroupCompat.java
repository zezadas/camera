/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ViewGroupCompat {
    static final ViewGroupCompatImpl IMPL;
    public static final int LAYOUT_MODE_CLIP_BOUNDS = 0;
    public static final int LAYOUT_MODE_OPTICAL_BOUNDS = 1;

    static;

    private ViewGroupCompat();

    public static int getLayoutMode(ViewGroup var0);

    public static boolean onRequestSendAccessibilityEvent(ViewGroup var0, View var1, AccessibilityEvent var2);

    public static void setLayoutMode(ViewGroup var0, int var1);

    public static void setMotionEventSplittingEnabled(ViewGroup var0, boolean var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ViewGroupCompatHCImpl
    extends ViewGroupCompatStubImpl {
        ViewGroupCompatHCImpl();

        @Override
        public void setMotionEventSplittingEnabled(ViewGroup var1, boolean var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ViewGroupCompatIcsImpl
    extends ViewGroupCompatHCImpl {
        ViewGroupCompatIcsImpl();

        @Override
        public boolean onRequestSendAccessibilityEvent(ViewGroup var1, View var2, AccessibilityEvent var3);
    }

    static interface ViewGroupCompatImpl {
        public int getLayoutMode(ViewGroup var1);

        public boolean onRequestSendAccessibilityEvent(ViewGroup var1, View var2, AccessibilityEvent var3);

        public void setLayoutMode(ViewGroup var1, int var2);

        public void setMotionEventSplittingEnabled(ViewGroup var1, boolean var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ViewGroupCompatJellybeanMR2Impl
    extends ViewGroupCompatIcsImpl {
        ViewGroupCompatJellybeanMR2Impl();

        @Override
        public int getLayoutMode(ViewGroup var1);

        @Override
        public void setLayoutMode(ViewGroup var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ViewGroupCompatStubImpl
    implements ViewGroupCompatImpl {
        ViewGroupCompatStubImpl();

        @Override
        public int getLayoutMode(ViewGroup var1);

        @Override
        public boolean onRequestSendAccessibilityEvent(ViewGroup var1, View var2, AccessibilityEvent var3);

        @Override
        public void setLayoutMode(ViewGroup var1, int var2);

        @Override
        public void setMotionEventSplittingEnabled(ViewGroup var1, boolean var2);
    }

}

