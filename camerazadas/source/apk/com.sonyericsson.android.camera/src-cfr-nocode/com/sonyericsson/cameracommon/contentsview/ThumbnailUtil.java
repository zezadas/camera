/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.RelativeLayout;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ThumbnailUtil {
    private static final String TAG;

    static;

    public ThumbnailUtil();

    public static RelativeLayout createThumbnailViewFromJpeg(Activity var0, byte[] var1, int var2);

    public static RelativeLayout createThumbnailViewFromUri(Activity var0, Uri var1);

    public static RelativeLayout createThumbnailViewFromUri(Activity var0, Uri var1, int var2);

    public static Bitmap rotateThumbnail(Bitmap var0, int var1);
}

