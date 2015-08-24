/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.device;

import android.view.SurfaceHolder;

public class CameraSurfaceHolder {
    private final int mHeight;
    private final SurfaceHolder mSurface;
    private final int mWidth;

    public CameraSurfaceHolder(SurfaceHolder surfaceHolder, int n, int n2) {
        this.mSurface = surfaceHolder;
        this.mWidth = n;
        this.mHeight = n2;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public SurfaceHolder getSurface() {
        return this.mSurface;
    }

    public int getWidth() {
        return this.mWidth;
    }
}

