/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InvalidObjectException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ImageLoader {
    private static final int FIRST_REDUCE_RATIO_FULL_IMG = 2;
    private static final int FULL_SIZE_MAX_LENGTH = 1025;
    private static final String TAG;
    private final Context mContext;
    private final byte[] mImageData;
    private final BitmapFactory.Options mOption;
    private final int mOrientation;
    private final Uri mUri;

    static;

    public ImageLoader(Context var1, Uri var2, int var3);

    public ImageLoader(Context var1, byte[] var2, int var3);

    private void calcBounds(InputStream var1, BitmapFactory.Options var2) throws InvalidObjectException, FileNotFoundException;

    private int calcRatio(BitmapFactory.Options var1, int var2, int var3);

    private Bitmap decodeStream(InputStream var1, BitmapFactory.Options var2) throws FileNotFoundException;

    private Bitmap loadFullSize(InputStream var1, BitmapFactory.Options var2) throws FileNotFoundException, InvalidObjectException;

    public Bitmap load();
}

