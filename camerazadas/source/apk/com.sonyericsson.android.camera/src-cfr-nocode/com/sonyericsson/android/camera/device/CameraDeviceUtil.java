/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.device;

import android.content.Context;
import android.hardware.Camera;
import com.sonyericsson.android.camera.device.CameraDeviceException;
import java.util.List;
import java.util.concurrent.Callable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CameraDeviceUtil {
    public static final int ERROR_SET_PREVIEW_DISPLAY = -256;
    public static final int ERROR_START_PREVIEW = -255;
    public static final int FOCUS_AREA_WEIGHT_DEFAULT = 0;
    public static final int FOCUS_AREA_WEIGHT_USER = 1000;
    public static final int FPS_RANGE_MAX = 60;
    public static final int FPS_RANGE_MIN = 0;
    public static final int OBJECT_TRACKING_LOW_PASS_FILTER_STRENGTH = 75;
    public static final int OBJECT_TRACKING_MINIMAL_INTERVAL_MS = 100;
    private static final String TAG;

    static;

    public CameraDeviceUtil();

    public static int[] computePreviewFpsRange(int var0, List<int[]> var1);

    public static Camera execute(Context var0, Callable<Camera> var1);

    public static int[] getFpsRange(int var0, int var1);

    public static int[] getMaxFpsRange(int var0, List<int[]> var1);

    public static int[] getMinFpsRange(int var0, List<int[]> var1);

    public static Camera.Parameters getParams(Context var0, int var1) throws CameraDeviceException;

    public static boolean isCameraDisabled(Context var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class OpenCameraTask
    implements Callable<Camera> {
        private final int mCameraId;

        public OpenCameraTask(int var1);

        @Override
        public Camera call();
    }

}

