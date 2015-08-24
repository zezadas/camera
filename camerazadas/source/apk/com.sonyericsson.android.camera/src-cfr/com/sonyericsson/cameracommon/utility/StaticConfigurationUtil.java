/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.hardware.Camera;
import android.os.Build;

public class StaticConfigurationUtil {
    private static final String TAG = StaticConfigurationUtil.class.getSimpleName();
    private static Camera.CameraInfo sCameraInfo;
    private static StaticConfigurationUtil sInstance;
    private final boolean mIsForceSound;

    static {
        sInstance = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private StaticConfigurationUtil() {
        boolean bl = true;
        if (17 > Build.VERSION.SDK_INT) {
            this.mIsForceSound = false;
            return;
        }
        if (sCameraInfo == null) {
            sCameraInfo = new Camera.CameraInfo();
            Camera.getCameraInfo(0, sCameraInfo);
        }
        if (sCameraInfo == null) {
            this.mIsForceSound = true;
            return;
        }
        if (StaticConfigurationUtil.sCameraInfo.canDisableShutterSound) {
            bl = false;
        }
        this.mIsForceSound = bl;
    }

    public static boolean isForceSound() {
        if (sInstance == null) {
            sInstance = new StaticConfigurationUtil();
        }
        return StaticConfigurationUtil.sInstance.mIsForceSound;
    }

    public static void setCameraInfo(Camera.CameraInfo cameraInfo) {
        sCameraInfo = cameraInfo;
    }
}

