/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.graphics.Rect;

/*
 * Exception performing whole class analysis.
 */
public class ChapterThumbnail {
    public final Integer format;
    private int mOrientation;
    public final Rect rect;
    public final byte[] yuvData;

    public ChapterThumbnail(byte[] var1, Integer var2, Rect var3);

    public int orientation();

    public void setOrientation(int var1);
}

