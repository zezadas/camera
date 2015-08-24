/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import com.sonyericsson.cameracommon.utility.RotationUtil;

class LayoutCoordinateUtil {
    LayoutCoordinateUtil() {
    }

    public static Rect coodinatePosition(int n, View object, Rect rect, Rect rect2, Point point) {
        int n2 = rect.left - rect2.left;
        int n3 = rect.top - rect2.top;
        object.setLeft(n2);
        object.setRight(rect.width() + n2);
        object.setTop(n3);
        object.setBottom(rect.height() + n3);
        object.setPivotX(- object.getLeft());
        object.setPivotY(- object.getTop());
        object.setRotation(RotationUtil.getAngle(n));
        if (n == 1) {
            n = point.x;
            n2 = point.y + rect2.width();
            object.setTranslationX(0.0f);
            object.setTranslationY(0.0f);
            object.offsetLeftAndRight(n);
            object.offsetTopAndBottom(n2);
            object = new Rect(0, 0, rect.height(), rect.width());
            object.offset(n, n2 - rect2.width());
            return object;
        }
        n = point.x;
        n2 = point.y;
        object.setTranslationX(n);
        object.setTranslationY(n2);
        rect = new Rect(0, 0, rect.width(), rect.height());
        rect.offset(object.getLeft() + n, object.getTop() + n2);
        return rect;
    }
}

