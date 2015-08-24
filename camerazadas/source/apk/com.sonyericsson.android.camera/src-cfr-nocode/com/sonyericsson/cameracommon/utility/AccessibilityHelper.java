/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AccessibilityHelper {
    public static final String TAG = "AccessibilityHelper";
    private static final Rect sRectForHit;

    static;

    public AccessibilityHelper();

    private static boolean checkToTouch(View var0, int var1, int var2);

    public static View requestAccessibilityFocus(ViewGroup var0, MotionEvent var1);

    private static View searchContentDescribedView(ViewGroup var0, MotionEvent var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class HoverEventInterceptView
    extends FrameLayout {
        public HoverEventInterceptView(Context var1);

        @Override
        public boolean onInterceptHoverEvent(MotionEvent var1);
    }

}

