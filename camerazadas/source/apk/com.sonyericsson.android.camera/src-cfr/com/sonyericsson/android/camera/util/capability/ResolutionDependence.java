/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import android.content.res.Resources;
import com.sonyericsson.android.camera.CameraActivity;

public class ResolutionDependence {
    public static boolean isDependOnAspect(Context context) {
        if (context instanceof CameraActivity) {
            return context.getResources().getBoolean(2131558402);
        }
        return false;
    }
}

