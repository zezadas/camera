/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.controller;

public class ZoomController {
    private static final float PINCH_ZOOM_COEFFICIENT = 0.2f;

    public static float getZoomValue(float f, float f2) {
        return f + 0.2f * f2;
    }
}

