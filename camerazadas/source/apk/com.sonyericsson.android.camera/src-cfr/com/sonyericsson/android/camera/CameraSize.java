/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.Camera;
import android.util.DisplayMetrics;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CameraSize {
    private static final double ASPECT_TOLERANCE = 0.05;
    public static final int MIN_RECORDING_DURATION = 1;
    private static final String TAG = "CameraSize";

    public static long computeSize(int n, int n2, int n3) {
        return (long)((n + n2) * n3 / 8) / 1024;
    }

    private static int getAspectRatio(double d, double d2) {
        return (int)(100.0 * d / d2);
    }

    public static int getAspectRatio(Rect rect) {
        return CameraSize.getAspectRatio(rect.width(), rect.height());
    }

    public static long getAverageFileSize(int n, int n2) {
        return CameraSize.computeSize(n, n2, 60);
    }

    public static int getDispayHeightWithoutNavigationBar(Context context) {
        return Math.min(context.getResources().getDisplayMetrics().widthPixels, context.getResources().getDisplayMetrics().heightPixels);
    }

    public static int getDispayWidthWithoutNavigationBar(Context context) {
        return Math.max(context.getResources().getDisplayMetrics().widthPixels, context.getResources().getDisplayMetrics().heightPixels);
    }

    static Rect getIdealPictureRect(Rect rect) {
        switch (rect.width()) {
            default: {
                return new Rect(0, 0, rect.width(), rect.height());
            }
            case 3920: {
                return new Rect(0, 0, 4128, 3096);
            }
            case 3104: {
                return new Rect(0, 0, 3264, 2448);
            }
            case 1824: 
        }
        return new Rect(0, 0, 1920, 1080);
    }

    public static long getMinFileSize(int n, int n2) {
        return CameraSize.computeSize(n, n2, 1);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Rect getOptimalPreviewRect(Rect rect, Rect rect2, List<Rect> object) {
        Object object2 = rect2;
        int n = Integer.MAX_VALUE;
        double d = (double)rect.width() / (double)rect.height();
        Iterator iterator = object.iterator();
        object = object2;
        do {
            int n2;
            object2 = object;
            if (!iterator.hasNext()) return object2;
            object2 = (Rect)iterator.next();
            if (object2.height() > rect2.height()) continue;
            if (object2.width() == rect.width() && object2.height() == rect.height()) {
                return object2;
            }
            if (Math.abs(d - (double)object2.width() / (double)object2.height()) > 0.05 || (n2 = Math.abs(object2.height() - rect.height())) >= n) continue;
            object = object2;
            n = n2;
        } while (true);
    }

    public static Rect getOptimalVideoSnapshotSize(Rect rect, List<Rect> object) {
        Rect rect2 = null;
        Iterator<Rect> iterator = object.iterator();
        object = rect2;
        while (iterator.hasNext()) {
            rect2 = iterator.next();
            if (rect.width() > rect2.width() || rect.height() > rect2.height()) continue;
            if (object == null) {
                object = rect2;
                continue;
            }
            if (rect2.width() >= object.width() || rect2.height() >= object.height()) continue;
            object = rect2;
        }
        return object;
    }

    public static Rect getOptimalVideoSnapshotSizeFromCamerSizeList(Rect rect, List<Camera.Size> object) {
        ArrayList<Rect> arrayList = new ArrayList<Rect>();
        for (Camera.Size size : object) {
            arrayList.add(new Rect(0, 0, size.width, size.height));
        }
        return CameraSize.getOptimalVideoSnapshotSize(rect, arrayList);
    }

    public static Rect getVideoPreviewRect(Rect rect, Rect rect2, List<Rect> list) {
        return CameraSize.getOptimalPreviewRect(rect, rect2, list);
    }

    public static boolean isAspectRatioDifferent(Rect rect, Rect rect2) {
        int n = CameraSize.getAspectRatio(rect);
        int n2 = CameraSize.getAspectRatio(rect2);
        boolean bl = false;
        if (n != n2) {
            bl = true;
        }
        return bl;
    }
}

