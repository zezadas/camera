/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.graphics.Rect;
import android.view.Gravity;

class GravityCompatJellybeanMr1 {
    GravityCompatJellybeanMr1() {
    }

    public static void apply(int n, int n2, int n3, Rect rect, int n4, int n5, Rect rect2, int n6) {
        Gravity.apply(n, n2, n3, rect, n4, n5, rect2, n6);
    }

    public static void apply(int n, int n2, int n3, Rect rect, Rect rect2, int n4) {
        Gravity.apply(n, n2, n3, rect, rect2, n4);
    }

    public static void applyDisplay(int n, Rect rect, Rect rect2, int n2) {
        Gravity.applyDisplay(n, rect, rect2, n2);
    }

    public static int getAbsoluteGravity(int n, int n2) {
        return Gravity.getAbsoluteGravity(n, n2);
    }
}

