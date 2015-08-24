/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view.accessibility;

import android.os.Bundle;
import android.view.View;

class AccessibilityNodeInfoCompatJellyBean {
    AccessibilityNodeInfoCompatJellyBean();

    public static void addChild(Object var0, View var1, int var2);

    public static Object findFocus(Object var0, int var1);

    public static Object focusSearch(Object var0, int var1);

    public static int getMovementGranularities(Object var0);

    public static boolean isAccessibilityFocused(Object var0);

    public static boolean isVisibleToUser(Object var0);

    public static Object obtain(View var0, int var1);

    public static boolean performAction(Object var0, int var1, Bundle var2);

    public static void setAccesibilityFocused(Object var0, boolean var1);

    public static void setMovementGranularities(Object var0, int var1);

    public static void setParent(Object var0, View var1, int var2);

    public static void setSource(Object var0, View var1, int var2);

    public static void setVisibleToUser(Object var0, boolean var1);
}

