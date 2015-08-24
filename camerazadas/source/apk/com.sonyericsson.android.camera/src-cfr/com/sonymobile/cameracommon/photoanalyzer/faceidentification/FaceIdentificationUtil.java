/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.photoanalyzer.faceidentification;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.List;

public class FaceIdentificationUtil {
    private static final String FACE_IDENTIFICATION_SUPPORTED_API_VERSION = "com.sonyericsson.privateapis_11";
    private static final String TAG = FaceIdentificationUtil.class.getSimpleName();

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean exist(Context list) {
        if (!FaceIdentificationUtil.isFaceIdentificationSupported(list)) {
            return false;
        }
        Intent intent = new Intent();
        intent.setAction("com.sonymobile.photoanalyzer.intent.action.REQUEST_PHOTO_ANALYSIS");
        if ((list = list.getPackageManager().queryIntentServices(intent, 0)) == null) return false;
        if (list.isEmpty()) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isFaceIdentificationSupported(Context arrstring) {
        boolean bl;
        boolean bl2 = false;
        if ((arrstring = arrstring.getPackageManager().getSystemSharedLibraryNames()) == null) {
            bl = false;
        } else {
            int n = 0;
            do {
                bl = bl2;
                if (n >= arrstring.length) break;
                if ("com.sonyericsson.privateapis_11".equals(arrstring[n])) {
                    return true;
                }
                ++n;
            } while (true);
        }
        if (bl) return bl;
        CameraLogger.w(TAG, "Face identification is not supported.");
        return bl;
    }

    public static void notifyCameraLaunch(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.sonymobile.photoanalyzer.intent.action.REQUEST_PHOTO_ANALYSIS");
        context.startService(intent);
    }
}

