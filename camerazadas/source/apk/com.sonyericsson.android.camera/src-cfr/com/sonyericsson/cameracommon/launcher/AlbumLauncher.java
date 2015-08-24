/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.launcher;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;

public final class AlbumLauncher
extends Activity {
    public static final String EXTRA_BURST_BUCKETID = "burst_bucketId";
    public static final String EXTRA_PLAYBACK = "android.intent.extra.finishOnCompletion";
    private static final boolean EXTRA_PLAYBACK_DEFAULT = false;
    public static final String EXTRA_SOMCTYPE = "somc_type";
    private static final String PLAYER_PACKAGE_NAME = "com.sonyericsson.android.camera3d";
    private static final String TAG = AlbumLauncher.class.getSimpleName();

    /*
     * Enabled aggressive block sorting
     */
    public static void launchAlbum(Activity activity, Uri uri, String string, int n, boolean bl) {
        Intent intent = CommonUtility.isCoreCameraApp(activity) ? new Intent("com.sonymobile.album.action.VIEW") : new Intent("com.android.camera.action.REVIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        if (MimeType.fromText(string) == MimeType.MPO) {
            intent.setDataAndType(uri, MimeType.PHOTO.mText);
        } else {
            intent.setDataAndType(uri, string);
        }
        if (bl) {
            intent.putExtra("burst_bucketId", n);
        }
        if (CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent)) {
            activity.startActivityForResult(intent, 8);
            GoogleAnalyticsUtil.getInstance().setViewerLaunched();
        }
    }

    public static void launchPlayer(Activity activity, Uri uri, String string) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.putExtra("android.intent.extra.finishOnCompletion", true);
        intent.setDataAndType(uri, string);
        if (CommonUtility.isActivityAvailable(activity, intent)) {
            activity.startActivityForResult(intent, 1);
        }
    }

    private boolean launchPlayer(Uri uri, String string, int n, boolean bl) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$launcher$AlbumLauncher$MimeType[MimeType.fromText(string).ordinal()]) {
            default: {
                AlbumLauncher.launchAlbum(this, uri, string, n, bl);
                return true;
            }
            case 1: 
            case 2: {
                AlbumLauncher.launchPlayer(this, uri, string);
                return false;
            }
            case 3: 
        }
        this.playMpo(uri, string);
        return false;
    }

    private void playMpo(Uri uri, String string) {
        Intent intent = new Intent();
        intent.setPackage("com.sonyericsson.android.camera3d");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.putExtra("android.intent.extra.finishOnCompletion", true);
        intent.setDataAndType(uri, string);
        if (CommonUtility.isActivityAvailable(this.getApplicationContext(), intent)) {
            this.startActivityForResult(intent, 1);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onActivityResult(int n, int n2, Intent parcelable) {
        super.onActivityResult(n, n2, (Intent)parcelable);
        Uri uri = this.getIntent().getData();
        String string = this.getIntent().getType();
        switch (n) {
            default: {
                break;
            }
            case 1: {
                AlbumLauncher.launchAlbum(this, uri, string, -1, false);
            }
        }
        this.finish();
    }

    @Override
    protected void onPause() {
        super.onPause();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    @Override
    protected void onResume() {
        var2_1 = false;
        super.onResume();
        var4_2 = this.getIntent().getData();
        var5_4 = this.getIntent().getType();
        var3_5 = this.getIntent().getBooleanExtra("android.intent.extra.finishOnCompletion", false);
        if (this.getIntent().getIntExtra("somc_type", 0) == 2) {
            var2_1 = true;
        }
        var1_6 = this.getIntent().getIntExtra("burst_bucketId", -1);
        if (!var3_5) ** GOTO lbl14
        try {
            if (this.launchPlayer(var4_2, var5_4, var1_6, var2_1) == false) return;
            this.finish();
            return;
lbl14: // 1 sources:
            AlbumLauncher.launchAlbum(this, var4_2, var5_4, var1_6, var2_1);
            this.finish();
            return;
        }
        catch (ActivityNotFoundException var4_3) {
            this.finish();
        }
    }

    private static enum MimeType {
        PHOTO("image/jpeg"),
        MPO("image/mpo"),
        MP4("video/mp4"),
        THREEGPP("video/3gpp"),
        UNKOWN("");
        
        final String mText;

        private MimeType(String string2) {
            this.mText = string2;
        }

        static MimeType fromText(String string) {
            for (MimeType mimeType : MimeType.values()) {
                if (!mimeType.mText.equals(string)) continue;
                return mimeType;
            }
            return UNKOWN;
        }
    }

}

