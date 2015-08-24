/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.app.Activity;
import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class ThumbnailUtil {
    private static final String TAG = ThumbnailUtil.class.getSimpleName();

    /*
     * Enabled aggressive block sorting
     */
    public static RelativeLayout createThumbnailViewFromJpeg(Activity object, byte[] object2, int n) {
        if (object2 == null) {
            CameraLogger.e(TAG, "data is null");
            return null;
        }
        RelativeLayout relativeLayout = (RelativeLayout)object.getLayoutInflater().inflate(R.layout.content_early_thumbnail, null);
        ImageView imageView = (ImageView)relativeLayout.findViewById(R.id.early_thumbnail_image);
        object = new BitmapFactory.Options();
        object.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray((byte[])object2, 0, object2.length, (BitmapFactory.Options)object);
        int n2 = object.outWidth;
        int n3 = object.outHeight;
        object.inSampleSize = n2 > n3 ? Math.round((float)n3 / 96.0f) : Math.round((float)n2 / 96.0f);
        object.inJustDecodeBounds = false;
        object.inPreferredConfig = Bitmap.Config.RGB_565;
        object.inPurgeable = true;
        object2 = ThumbnailUtils.extractThumbnail(BitmapFactory.decodeByteArray((byte[])object2, 0, object2.length, (BitmapFactory.Options)object), 96, 96);
        object = null;
        if (object2 != null && (object = ThumbnailUtil.rotateThumbnail((Bitmap)object2, n)) != null) {
            imageView.setImageBitmap((Bitmap)object);
            return relativeLayout;
        }
        imageView.setImageDrawable(null);
        return relativeLayout;
    }

    public static RelativeLayout createThumbnailViewFromUri(Activity activity, Uri uri) {
        return ThumbnailUtil.createThumbnailViewFromUri(activity, uri, 0);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static RelativeLayout createThumbnailViewFromUri(Activity object, Uri parcelable, int n) {
        int n2;
        void var2_6;
        int n3;
        if (parcelable == null) {
            CameraLogger.e(TAG, "uri is null");
            return null;
        }
        RelativeLayout relativeLayout = (RelativeLayout)object.getLayoutInflater().inflate(R.layout.content_early_thumbnail, null);
        ImageView imageView = (ImageView)relativeLayout.findViewById(R.id.early_thumbnail_image);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Object object2 = null;
        try {
            InputStream inputStream;
            object2 = inputStream = object.getContentResolver().openInputStream((Uri)parcelable);
        }
        catch (FileNotFoundException var6_12) {
            CameraLogger.e(TAG, "FileNotFoundException :  = " + var6_12);
        }
        BitmapFactory.decodeStream((InputStream)object2, null, options);
        if (object2 != null) {
            try {
                object2.close();
            }
            catch (IOException var6_13) {
                CameraLogger.e(TAG, "IOException :  = " + var6_13);
            }
        }
        options.inSampleSize = (n2 = options.outWidth) > (n3 = options.outHeight) ? Math.round((float)n3 / 96.0f) : Math.round((float)n2 / 96.0f);
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inPurgeable = true;
        try {
            object2 = object = object.getContentResolver().openInputStream((Uri)parcelable);
        }
        catch (FileNotFoundException var0_1) {
            CameraLogger.e(TAG, "FileNotFoundException :  = " + var0_1);
        }
        object = BitmapFactory.decodeStream((InputStream)object2, null, options);
        if (object2 != null) {
            try {
                object2.close();
            }
            catch (IOException var1_5) {
                CameraLogger.e(TAG, "IOException :  = " + var1_5);
            }
        }
        Bitmap bitmap = ThumbnailUtils.extractThumbnail((Bitmap)object, 96, 96);
        object = null;
        if (bitmap != null && (object = ThumbnailUtil.rotateThumbnail(bitmap, (int)var2_6)) != null) {
            imageView.setImageBitmap((Bitmap)object);
            return relativeLayout;
        }
        imageView.setImageDrawable(null);
        return relativeLayout;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Bitmap rotateThumbnail(Bitmap bitmap, int n) {
        int n2 = bitmap.getWidth();
        int n3 = bitmap.getHeight();
        Object object = bitmap;
        if (n == 0) return object;
        try {
            object = new Matrix();
            object.setRotate(n, (float)n2 / 2.0f, (float)n3 / 2.0f);
            object = Bitmap.createBitmap(bitmap, 0, 0, n2, n3, (Matrix)object, false);
            bitmap.recycle();
        }
        catch (IllegalArgumentException illegalArgumentException) {
            CameraLogger.e(TAG, "IllegalArgumentException : width = " + n2 + ", height = " + n3);
            return bitmap;
        }
        catch (Exception exception) {
            CameraLogger.e(TAG, "Exception : width = " + n2 + ", height = " + n3);
            return bitmap;
        }
        return object;
    }
}

