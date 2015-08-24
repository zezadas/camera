/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.device;

import android.hardware.Camera;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CameraOpener {
    private static final String OPEN_LEGACY_METHOD_NAME = "openLegacy";
    private static final String TAG;

    static;

    public CameraOpener();

    private static int getCameraHal1ApiVersion();

    private static boolean isCameraOpenLegacySupported();

    public static Camera open(int var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class CameraOpenLegacySupportStateHolder {
        private static final int CAMERA_HAL_API_VERSION_1_0_NOT_SUPPORTED = -1;
        private static final int sApiVersion1;
        private static final boolean sIsSupported;

        static;

        private CameraOpenLegacySupportStateHolder();

        static /* synthetic */ boolean access$000();

        static /* synthetic */ int access$100();

        private static int getCameraHalApi1Version();

        private static boolean isSupported();
    }

}

