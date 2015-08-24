/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class OneShotUtility {
    public static final String KEY_ADD_TO_MEDIA_STORE = "addToMediaStore";
    public static final int REQUEST_ONE_SHOT = 1;
    private static final String TAG;

    static;

    public OneShotUtility();

    private static int computeInitialSampleSize(double var0, double var2, int var4, int var5);

    public static int computeSampleSize(double var0, double var2, int var4, int var5);

    public static Intent createResultIntent(Activity var0, Uri var1, String var2, int var3);

    public static Intent createResultIntent(Uri var0, String var1, Bitmap var2);
}

