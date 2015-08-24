/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.updator.CrDeleteParameter;
import com.sonyericsson.cameracommon.mediasaving.updator.CrQueryParameter;

/*
 * Exception performing whole class analysis ignored.
 */
public class PhotoStackQueryHelper {
    private static final String TAG = "PhotoStackQueryHelper";

    public PhotoStackQueryHelper();

    public static int crDelete(ContentResolver var0, Uri var1, CrDeleteParameter var2);

    public static Cursor crQuery(ContentResolver var0, Uri var1, CrQueryParameter var2);

    public static boolean deleteImage(ContentResolver var0, Uri var1);
}

