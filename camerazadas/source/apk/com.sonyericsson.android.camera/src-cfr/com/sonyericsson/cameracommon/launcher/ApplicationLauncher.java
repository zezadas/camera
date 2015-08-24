/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.launcher;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.Window;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.intent.IntentConstants;
import com.sonyericsson.cameracommon.launcher.AlbumLauncher;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.CommonUtility;

public final class ApplicationLauncher {
    private static final String ACTION_CROP = "com.android.camera.action.CROP";
    private static final String ACTION_FACE_REGISTRATION_UI = "com.sonymobile.android.camera.intent.action.SHOW_FACE_REGISTRATION_UI";
    private static final String CROP_RETURN_DATA_REQUIRE = "return-data";
    private static final String EXTRA_APP_ICON = "extra_app_icon";
    private static final String TAG = ApplicationLauncher.class.getSimpleName();

    private ApplicationLauncher() {
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void launchAlbum(Activity activity, String string, Uri uri, int n, int n2) {
        boolean bl = n2 == 2;
        AlbumLauncher.launchAlbum(activity, uri, string, n, bl);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void launchLocationSourceSettings(Activity activity) {
        Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
        intent.addCategory("android.intent.category.DEFAULT");
        if (!CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent)) return;
        try {
            activity.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException var0_1) {
            CameraLogger.e(TAG, "launchLocationSourceSettings: failed.", var0_1);
            return;
        }
    }

    public static boolean launchOneShot(Activity activity, int n) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.media.action.IMAGE_CAPTURE");
            intent.setComponent(IntentConstants.CAMERA_UI_ONE_SHOT_COMPONENT_NAME);
            activity.startActivityForResult(intent, n);
            return true;
        }
        catch (ActivityNotFoundException var0_1) {
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static boolean launchOneShotCrop(Activity activity, Uri uri, Uri parcelable, String string) {
        void var3_5;
        Bundle bundle = new Bundle();
        if (var3_5.equals("circle")) {
            bundle.putString("circleCrop", "true");
        }
        if (parcelable != null) {
            bundle.putParcelable("output", parcelable);
        } else {
            bundle.putBoolean("return-data", true);
        }
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setData(uri);
        intent.putExtras(bundle);
        if (!CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent)) return true;
        try {
            activity.startActivityForResult(intent, 7);
            return true;
        }
        catch (ActivityNotFoundException activityNotFoundException) {
            CameraLogger.e(TAG, "launchOneShotCrop failed.", activityNotFoundException);
            return false;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void launchPhotoAnalyzer(Activity activity) {
        Intent intent = new Intent("com.sonymobile.android.camera.intent.action.SHOW_FACE_REGISTRATION_UI");
        intent.putExtra("extra_app_icon", ((BitmapDrawable)activity.getResources().getDrawable(R.drawable.cam_application_common_icn, null)).getBitmap());
        if (!CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent)) return;
        try {
            activity.getWindow().addFlags(2048);
            activity.getWindow().clearFlags(1024);
            activity.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException var0_1) {
            CameraLogger.e(TAG, "launchPhotoAnalyzer: failed.", var0_1);
            return;
        }
    }

    public static boolean launchPickPicture(Activity activity, int n) {
        try {
            Intent intent = new Intent("android.intent.action.PICK");
            intent.setType("image/jpeg");
            activity.startActivityForResult(intent, n);
            return true;
        }
        catch (ActivityNotFoundException var0_1) {
            return false;
        }
    }

    public static void playback(Activity activity, String string, Uri uri, int n, int n2) {
        Intent intent = new Intent();
        intent.setClass(activity, AlbumLauncher.class);
        intent.setDataAndType(uri, string);
        intent.putExtra("android.intent.extra.finishOnCompletion", true);
        intent.putExtra("burst_bucketId", n);
        intent.putExtra("somc_type", n2);
        if (CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent)) {
            activity.startActivityForResult(intent, 8);
        }
    }

    public static void startCameraTouchBlock(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.sonymobile.touchblocker", "com.sonymobile.touchblocker.TouchBlockerService"));
        intent.putExtra("launched_from_smallapp", false);
        context.startService(intent);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean startResolvedActivity(Context context, Intent intent, ResolveInfo parcelable) {
        Intent intent2 = new Intent(intent);
        parcelable = parcelable.activityInfo;
        intent2.setComponent(new ComponentName(parcelable.applicationInfo.packageName, parcelable.name));
        if (!CommonUtility.isActivityAvailable(context, intent)) return true;
        try {
            context.startActivity(intent2);
        }
        catch (ActivityNotFoundException activityNotFoundException) {
            CameraLogger.e(TAG, "startResolvedActivity failed.", activityNotFoundException);
            return false;
        }
        return true;
    }
}

