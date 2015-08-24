/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;

class ViewCompatJB {
    ViewCompatJB();

    public static Object getAccessibilityNodeProvider(View var0);

    public static int getImportantForAccessibility(View var0);

    public static int getMinimumHeight(View var0);

    public static int getMinimumWidth(View var0);

    public static ViewParent getParentForAccessibility(View var0);

    public static boolean hasTransientState(View var0);

    public static boolean performAccessibilityAction(View var0, int var1, Bundle var2);

    public static void postInvalidateOnAnimation(View var0);

    public static void postInvalidateOnAnimation(View var0, int var1, int var2, int var3, int var4);

    public static void postOnAnimation(View var0, Runnable var1);

    public static void postOnAnimationDelayed(View var0, Runnable var1, long var2);

    public static void setHasTransientState(View var0, boolean var1);

    public static void setImportantForAccessibility(View var0, int var1);
}

