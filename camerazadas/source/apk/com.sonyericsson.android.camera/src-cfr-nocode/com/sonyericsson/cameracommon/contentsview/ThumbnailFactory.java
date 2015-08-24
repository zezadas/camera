/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.sonyericsson.cameracommon.contentsview.contents.Content;

/*
 * Exception performing whole class analysis ignored.
 */
public class ThumbnailFactory {
    private static final int MAX_NUM_PIXELS_MICRO_THUMBNAIL = 19200;
    private static final String TAG = "ThumbnailFactory";
    public static final int TARGET_SIZE_MICRO_THUMBNAIL = 96;
    private static final int UNCONSTRAINED = -1;

    public ThumbnailFactory();

    private static int computeInitialSampleSize(BitmapFactory.Options var0, int var1, int var2);

    private static int computeSampleSize(BitmapFactory.Options var0, int var1, int var2);

    public static Bitmap createMicroThumbnail(Content.ContentInfo var0);

    public static Bitmap createVideoThumbnail(Context var0, Uri var1);

    public static Bitmap createVideoThumbnail(String var0);

    private static Bitmap rotateThumbnail(Bitmap var0, int var1);
}

