/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;

class ViewCompatICS {
    ViewCompatICS();

    public static boolean canScrollHorizontally(View var0, int var1);

    public static boolean canScrollVertically(View var0, int var1);

    public static void onInitializeAccessibilityEvent(View var0, AccessibilityEvent var1);

    public static void onInitializeAccessibilityNodeInfo(View var0, Object var1);

    public static void onPopulateAccessibilityEvent(View var0, AccessibilityEvent var1);

    public static void setAccessibilityDelegate(View var0, Object var1);
}

