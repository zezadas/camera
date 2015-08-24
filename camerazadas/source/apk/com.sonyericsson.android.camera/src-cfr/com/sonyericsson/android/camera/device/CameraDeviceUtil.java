/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.device;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.hardware.Camera;
import com.sonyericsson.android.camera.device.CameraDeviceException;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class CameraDeviceUtil {
    public static final int ERROR_SET_PREVIEW_DISPLAY = -256;
    public static final int ERROR_START_PREVIEW = -255;
    public static final int FOCUS_AREA_WEIGHT_DEFAULT = 0;
    public static final int FOCUS_AREA_WEIGHT_USER = 1000;
    public static final int FPS_RANGE_MAX = 60;
    public static final int FPS_RANGE_MIN = 0;
    public static final int OBJECT_TRACKING_LOW_PASS_FILTER_STRENGTH = 75;
    public static final int OBJECT_TRACKING_MINIMAL_INTERVAL_MS = 100;
    private static final String TAG = CameraDeviceUtil.class.getSimpleName();

    public static int[] computePreviewFpsRange(int n, List<int[]> list) {
        int n2;
        if (list.size() == 1) {
            list = (List)list.get(0);
            return CameraDeviceUtil.getFpsRange(list[1], list[0]);
        }
        n = n2 = n * 1000;
        if (n2 < 0) {
            n = Integer.MAX_VALUE;
        }
        if (n == 0) {
            return CameraDeviceUtil.getMinFpsRange(n, list);
        }
        return CameraDeviceUtil.getMaxFpsRange(n, list);
    }

    public static Camera execute(Context object, Callable<Camera> object2) {
        if (CameraDeviceUtil.isCameraDisabled((Context)object)) {
            return null;
        }
        object = Executors.newSingleThreadExecutor();
        object2 = object.submit(object2);
        try {
            Camera camera = (Camera)object2.get(4000, TimeUnit.MILLISECONDS);
            return camera;
        }
        catch (InterruptedException var2_3) {
            CameraLogger.w(TAG, "Open camera has been interrupted.", var2_3);
            return null;
        }
        catch (ExecutionException var2_4) {
            CameraLogger.w(TAG, "Open camera failed.", var2_4);
            return null;
        }
        catch (TimeoutException var2_5) {
            CameraLogger.w(TAG, "Open camera failed.", var2_5);
            return null;
        }
        finally {
            object2.cancel(true);
            object.shutdown();
        }
    }

    public static int[] getFpsRange(int n, int n2) {
        if (n > 0) {
            return new int[]{n2, n};
        }
        return new int[0];
    }

    public static int[] getMaxFpsRange(int n, List<int[]> object) {
        int n2 = 0;
        int n3 = 0;
        for (int[] arrn : object) {
            int n4 = arrn[1];
            int n5 = arrn[0];
            if (n4 > n || n2 > n4) continue;
            n2 = n4;
            n3 = n5;
        }
        return CameraDeviceUtil.getFpsRange(n2, n3);
    }

    public static int[] getMinFpsRange(int n, List<int[]> object) {
        int n2 = Integer.MAX_VALUE;
        int n3 = Integer.MAX_VALUE;
        for (int[] arrn : object) {
            int n4 = arrn[1];
            int n5 = arrn[0];
            if (n4 <= n || n2 < n4) continue;
            n2 = n4;
            n3 = n5;
        }
        return CameraDeviceUtil.getFpsRange(n2, n3);
    }

    public static Camera.Parameters getParams(Context object, int n) throws CameraDeviceException {
        if ((object = CameraDeviceUtil.execute((Context)object, new OpenCameraTask(n))) == null) {
            throw new CameraDeviceException("Open camera[" + n + "] failed.");
        }
        Camera.Parameters parameters = object.getParameters();
        object.release();
        if (parameters == null) {
            throw new CameraDeviceException("No Parameters[" + n + "] obtained.");
        }
        return parameters;
    }

    public static boolean isCameraDisabled(Context context) {
        if (((DevicePolicyManager)context.getSystemService("device_policy")).getCameraDisabled(null)) {
            CameraLogger.errorLogForNonUserVariant(TAG, "[CameraNotAvailable] Camera is Disabled.");
            return true;
        }
        return false;
    }

    private static class OpenCameraTask
    implements Callable<Camera> {
        private final int mCameraId;

        public OpenCameraTask(int n) {
            this.mCameraId = n;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public Camera call() {
            Camera camera = null;
            int n = 0;
            do {
                Camera camera2 = camera;
                if (n >= 5) return camera2;
                try {
                    return Camera.open(this.mCameraId);
                }
                catch (RuntimeException var2_4) {
                    try {
                        Thread.sleep(500);
                    }
                    catch (InterruptedException var2_5) {}
                    ++n;
                    continue;
                }
                break;
            } while (true);
        }
    }

}

