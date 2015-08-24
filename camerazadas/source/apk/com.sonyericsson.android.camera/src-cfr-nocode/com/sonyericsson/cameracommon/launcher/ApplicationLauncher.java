/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.launcher;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ApplicationLauncher {
    private static final String ACTION_CROP = "com.android.camera.action.CROP";
    private static final String ACTION_FACE_REGISTRATION_UI = "com.sonymobile.android.camera.intent.action.SHOW_FACE_REGISTRATION_UI";
    private static final String CROP_RETURN_DATA_REQUIRE = "return-data";
    private static final String EXTRA_APP_ICON = "extra_app_icon";
    private static final String TAG;

    static;

    private ApplicationLauncher();

    public static void launchAlbum(Activity var0, String var1, Uri var2, int var3, int var4);

    public static void launchLocationSourceSettings(Activity var0);

    public static boolean launchOneShot(Activity var0, int var1);

    public static boolean launchOneShotCrop(Activity var0, Uri var1, Uri var2, String var3);

    public static void launchPhotoAnalyzer(Activity var0);

    public static boolean launchPickPicture(Activity var0, int var1);

    public static void playback(Activity var0, String var1, Uri var2, int var3, int var4);

    public static void startCameraTouchBlock(Context var0);

    public static boolean startResolvedActivity(Context var0, Intent var1, ResolveInfo var2);
}

