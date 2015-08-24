/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Parcelable;
import com.sonyericsson.cameracommon.utility.ImageLoader;

public class OneShotUtility {
    public static final String KEY_ADD_TO_MEDIA_STORE = "addToMediaStore";
    public static final int REQUEST_ONE_SHOT = 1;
    private static final String TAG = OneShotUtility.class.getSimpleName();

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static int computeInitialSampleSize(double d, double d2, int n, int n2) {
        int n3 = n2 < 0 ? 1 : (int)Math.ceil(Math.sqrt(d * d2 / (double)n2));
        int n4 = n < 0 ? 128 : (int)Math.min(Math.floor(d / (double)n), Math.floor(d2 / (double)n));
        if (n4 < n3) {
            return n3;
        }
        if (n2 < 0 && n < 0) {
            return 1;
        }
        if (n < 0) return n3;
        return n4;
    }

    public static int computeSampleSize(double d, double d2, int n, int n2) {
        int n3 = OneShotUtility.computeInitialSampleSize(d, d2, n, n2);
        if (n3 <= 8) {
            n = 1;
            do {
                n2 = n;
                if (n < n3) {
                    --n;
                    continue;
                } else {
                    break;
                }
                break;
            } while (true);
        } else {
            n2 = (n3 + 7) / 8 * 8;
        }
        return n2;
    }

    public static Intent createResultIntent(Activity activity, Uri uri, String string, int n) {
        return OneShotUtility.createResultIntent(uri, string, new ImageLoader((Context)activity, uri, n).load());
    }

    public static Intent createResultIntent(Uri uri, String string, Bitmap bitmap) {
        Intent intent = new Intent("inline-data");
        if (bitmap != null) {
            float f = 1.0f / (float)OneShotUtility.computeSampleSize(bitmap.getWidth(), bitmap.getHeight(), -1, 51200);
            Object object = new Matrix();
            object.setScale(f, f);
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), (Matrix)object, true);
            object = bitmap.copy(Bitmap.Config.ARGB_8888, false);
            bitmap.recycle();
            intent.putExtra("data", (Parcelable)object);
        }
        intent.setDataAndType(uri, string);
        return intent;
    }
}

