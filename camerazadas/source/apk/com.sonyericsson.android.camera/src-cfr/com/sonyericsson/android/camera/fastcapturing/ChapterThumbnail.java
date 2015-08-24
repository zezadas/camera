/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.graphics.Rect;

public class ChapterThumbnail {
    public final Integer format;
    private int mOrientation;
    public final Rect rect;
    public final byte[] yuvData;

    public ChapterThumbnail(byte[] arrby, Integer n, Rect rect) {
        this.yuvData = arrby;
        this.format = n;
        this.rect = rect;
        this.mOrientation = 0;
    }

    public int orientation() {
        return this.mOrientation;
    }

    public void setOrientation(int n) {
        this.mOrientation = n;
    }
}

