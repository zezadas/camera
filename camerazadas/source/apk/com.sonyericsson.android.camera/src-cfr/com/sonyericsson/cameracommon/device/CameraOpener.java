/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.device;

import android.hardware.Camera;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class CameraOpener {
    private static final String OPEN_LEGACY_METHOD_NAME = "openLegacy";
    private static final String TAG = CameraOpener.class.getSimpleName();

    private static int getCameraHal1ApiVersion() {
        return sApiVersion1;
    }

    private static boolean isCameraOpenLegacySupported() {
        return sIsSupported;
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static Camera open(int n) {
        Camera camera2;
        Camera camera;
        Camera camera3 = null;
        Camera camera4 = null;
        Camera camera5 = null;
        if (CameraOpener.isCameraOpenLegacySupported()) {
            Camera camera6 = camera5;
            camera = camera3;
            camera2 = camera4;
            try {
                if (CameraLogger.isUserdebugOrEngBuild) {
                    camera6 = camera5;
                    camera = camera3;
                    camera2 = camera4;
                    CameraLogger.p(TAG, "Camera.openLegacy in");
                }
                camera6 = camera5;
                camera = camera3;
                camera2 = camera4;
                camera3 = camera5 = (Camera)Camera.class.getMethod("openLegacy", Integer.TYPE, Integer.TYPE).invoke(null, n, CameraOpener.getCameraHal1ApiVersion());
                camera6 = camera5;
                camera = camera5;
                camera2 = camera5;
                if (!CameraLogger.isUserdebugOrEngBuild) return camera3;
                camera6 = camera5;
                camera = camera5;
                camera2 = camera5;
                CameraLogger.p(TAG, "Camera.openLegacy out");
                return camera5;
            }
            catch (IllegalArgumentException var1_4) {
                throw var1_4;
            }
            catch (InvocationTargetException var1_5) {
                camera3 = camera6;
                if (!RuntimeException.class.isInstance(var1_5.getTargetException())) return camera3;
                throw (RuntimeException)var1_5.getTargetException();
            }
        }
        if (CameraLogger.isUserdebugOrEngBuild) {
            CameraLogger.p(TAG, "Camera.open in");
        }
        camera3 = camera5 = Camera.open(n);
        if (!CameraLogger.isUserdebugOrEngBuild) return camera3;
        CameraLogger.p(TAG, "Camera.open out");
        return camera5;
        catch (IllegalAccessException illegalAccessException) {
            return camera;
        }
        catch (NoSuchMethodException noSuchMethodException) {
            return camera2;
        }
    }

    private static class CameraOpenLegacySupportStateHolder {
        private static final int CAMERA_HAL_API_VERSION_1_0_NOT_SUPPORTED = -1;
        private static final int sApiVersion1 = CameraOpenLegacySupportStateHolder.getCameraHalApi1Version();
        private static final boolean sIsSupported = CameraOpenLegacySupportStateHolder.isSupported();

        private CameraOpenLegacySupportStateHolder() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        private static int getCameraHalApi1Version() {
            for (Field field : Camera.class.getFields()) {
                if (!field.getName().equals("CAMERA_HAL_API_VERSION_1_0")) continue;
                try {
                    return field.getInt(null);
                }
                catch (IllegalAccessException var4_4) {
                    // empty catch block
                    continue;
                }
                catch (IllegalArgumentException var4_5) {}
            }
            return -1;
        }

        private static boolean isSupported() {
            Method[] arrmethod = Camera.class.getMethods();
            int n = arrmethod.length;
            for (int i = 0; i < n; ++i) {
                if (!arrmethod[i].getName().equals("openLegacy") || CameraOpenLegacySupportStateHolder.getCameraHalApi1Version() == -1) continue;
                return true;
            }
            return false;
        }
    }

}

