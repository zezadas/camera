/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.device;

import android.hardware.Camera;
import java.util.Iterator;
import java.util.List;

public class CameraParameterUtil {
    private static final String TAG = CameraParameterUtil.class.getSimpleName();

    public static int getPreviewMasFps(Camera.Parameters iterator) {
        int n = 0;
        int n2 = 0;
        int n3 = n;
        if (iterator != null) {
            iterator = iterator.getSupportedPreviewFpsRange();
            n3 = n;
            if (iterator != null) {
                iterator = iterator.iterator();
                do {
                    n3 = n2;
                    if (!iterator.hasNext()) break;
                    n3 = ((int[])iterator.next())[1] / 1000;
                    if (n2 >= n3) continue;
                    n2 = n3;
                } while (true);
            }
        }
        return n3;
    }
}

