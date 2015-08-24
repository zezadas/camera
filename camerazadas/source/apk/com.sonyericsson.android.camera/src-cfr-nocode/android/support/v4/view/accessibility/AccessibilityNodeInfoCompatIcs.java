/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.view.View;
import java.util.List;

class AccessibilityNodeInfoCompatIcs {
    AccessibilityNodeInfoCompatIcs();

    public static void addAction(Object var0, int var1);

    public static void addChild(Object var0, View var1);

    public static List<Object> findAccessibilityNodeInfosByText(Object var0, String var1);

    public static int getActions(Object var0);

    public static void getBoundsInParent(Object var0, Rect var1);

    public static void getBoundsInScreen(Object var0, Rect var1);

    public static Object getChild(Object var0, int var1);

    public static int getChildCount(Object var0);

    public static CharSequence getClassName(Object var0);

    public static CharSequence getContentDescription(Object var0);

    public static CharSequence getPackageName(Object var0);

    public static Object getParent(Object var0);

    public static CharSequence getText(Object var0);

    public static int getWindowId(Object var0);

    public static boolean isCheckable(Object var0);

    public static boolean isChecked(Object var0);

    public static boolean isClickable(Object var0);

    public static boolean isEnabled(Object var0);

    public static boolean isFocusable(Object var0);

    public static boolean isFocused(Object var0);

    public static boolean isLongClickable(Object var0);

    public static boolean isPassword(Object var0);

    public static boolean isScrollable(Object var0);

    public static boolean isSelected(Object var0);

    public static Object obtain();

    public static Object obtain(View var0);

    public static Object obtain(Object var0);

    public static boolean performAction(Object var0, int var1);

    public static void recycle(Object var0);

    public static void setBoundsInParent(Object var0, Rect var1);

    public static void setBoundsInScreen(Object var0, Rect var1);

    public static void setCheckable(Object var0, boolean var1);

    public static void setChecked(Object var0, boolean var1);

    public static void setClassName(Object var0, CharSequence var1);

    public static void setClickable(Object var0, boolean var1);

    public static void setContentDescription(Object var0, CharSequence var1);

    public static void setEnabled(Object var0, boolean var1);

    public static void setFocusable(Object var0, boolean var1);

    public static void setFocused(Object var0, boolean var1);

    public static void setLongClickable(Object var0, boolean var1);

    public static void setPackageName(Object var0, CharSequence var1);

    public static void setParent(Object var0, View var1);

    public static void setPassword(Object var0, boolean var1);

    public static void setScrollable(Object var0, boolean var1);

    public static void setSelected(Object var0, boolean var1);

    public static void setSource(Object var0, View var1);

    public static void setText(Object var0, CharSequence var1);
}

