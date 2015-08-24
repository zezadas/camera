/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.cameracommon.activity.BaseActivity;

public enum ZoomDirection {
    IN,
    OUT,
    IN_OUT,
    NONE;
    
    private float mScaleLength;

    private ZoomDirection() {
    }

    public static ZoomDirection get(float f, float f2) {
        if (f < f2) {
            return IN;
        }
        if (f > f2) {
            return OUT;
        }
        return NONE;
    }

    public static ZoomDirection get(int n, ExtendedActivity extendedActivity) {
        if (extendedActivity.getLastDetectedOrientation() != BaseActivity.LayoutOrientation.Portrait) {
            // empty if block
        }
        if (n == 24) {
            return IN;
        }
        if (n == 25) {
            return OUT;
        }
        return NONE;
    }

    public float getScaleLength() {
        return this.mScaleLength;
    }

    public void setScaleLength(float f) {
        this.mScaleLength = f;
    }
}

