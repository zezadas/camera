/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.capability;

import android.hardware.Camera;
import java.util.List;

public final class CameraSensor
extends Enum<CameraSensor> {
    private static final /* synthetic */ CameraSensor[] $VALUES;
    public static final /* enum */ CameraSensor CAMERA_SENSOR_13M;
    public static final /* enum */ CameraSensor CAMERA_SENSOR_20M;
    public static final /* enum */ CameraSensor CAMERA_SENSOR_23M;
    public static final /* enum */ CameraSensor CAMERA_SENSOR_2M;
    public static final /* enum */ CameraSensor CAMERA_SENSOR_5M;
    public static final /* enum */ CameraSensor CAMERA_SENSOR_8M;
    public static final /* enum */ CameraSensor CAMERA_SENSOR_8M_INDEPENDENT_HDR;
    public static final /* enum */ CameraSensor CAMERA_SENSOR_VGA;
    public final Size defaultPhotoSize;
    private final boolean mIsIndependentHdrSupported;
    public final Size[] maxSizeList;

    static {
        Size size = CameraSensor.size(5520, 4140);
        Size size2 = CameraSensor.size(3840, 2160);
        CAMERA_SENSOR_23M = new CameraSensor(new Size[]{size}, size2);
        size = CameraSensor.size(5248, 3936);
        size2 = CameraSensor.size(3840, 2160);
        CAMERA_SENSOR_20M = new CameraSensor(new Size[]{size}, size2);
        size = CameraSensor.size(4128, 3096);
        size2 = CameraSensor.size(3920, 2204);
        CAMERA_SENSOR_13M = new CameraSensor(new Size[]{size}, size2);
        size = CameraSensor.size(3264, 2448);
        size2 = CameraSensor.size(3104, 1746);
        CAMERA_SENSOR_8M = new CameraSensor(new Size[]{size}, size2);
        size = CameraSensor.size(3264, 2448);
        size2 = CameraSensor.size(3264, 1836);
        CAMERA_SENSOR_8M_INDEPENDENT_HDR = new CameraSensor(new Size[]{size}, size2, true);
        size = CameraSensor.size(2592, 1944);
        size2 = CameraSensor.size(2592, 1458);
        CAMERA_SENSOR_5M = new CameraSensor(new Size[]{size}, size2);
        size = CameraSensor.size(1632, 1224);
        size2 = CameraSensor.size(1920, 1080);
        Size size3 = CameraSensor.size(1920, 1080);
        CAMERA_SENSOR_2M = new CameraSensor(new Size[]{size, size2}, size3);
        size = CameraSensor.size(640, 480);
        size2 = CameraSensor.size(640, 480);
        CAMERA_SENSOR_VGA = new CameraSensor(new Size[]{size}, size2);
        $VALUES = new CameraSensor[]{CAMERA_SENSOR_23M, CAMERA_SENSOR_20M, CAMERA_SENSOR_13M, CAMERA_SENSOR_8M, CAMERA_SENSOR_8M_INDEPENDENT_HDR, CAMERA_SENSOR_5M, CAMERA_SENSOR_2M, CAMERA_SENSOR_VGA};
    }

    private CameraSensor(Size[] arrsize, Size size) {
        super(string, n);
        this.maxSizeList = arrsize;
        this.defaultPhotoSize = size;
        this.mIsIndependentHdrSupported = false;
    }

    private CameraSensor(Size[] arrsize, Size size, boolean bl) {
        super(string, n);
        this.maxSizeList = arrsize;
        this.defaultPhotoSize = size;
        this.mIsIndependentHdrSupported = bl;
    }

    public static CameraSensor findByMaxPixels(Camera.Parameters object, int n, int n2) {
        boolean bl = CameraSensor.isIndependentHdrSupported((Camera.Parameters)object);
        Size size = CameraSensor.size(n, n2);
        object = null;
        for (CameraSensor cameraSensor : CameraSensor.values()) {
            if (!cameraSensor.matchMaxPixels(size)) continue;
            if (cameraSensor.mIsIndependentHdrSupported == bl) {
                return cameraSensor;
            }
            object = cameraSensor;
        }
        return object;
    }

    public static boolean isIndependentHdrSupported(Camera.Parameters object) {
        if ((object = object.getSupportedSceneModes()) == null) {
            return false;
        }
        return object.contains("hdr");
    }

    private static Size size(int n, int n2) {
        return new Size(n, n2);
    }

    public static CameraSensor valueOf(String string) {
        return (CameraSensor)Enum.valueOf(CameraSensor.class, string);
    }

    public static CameraSensor[] values() {
        return (CameraSensor[])$VALUES.clone();
    }

    public boolean matchMaxPixels(Size size) {
        for (Size size2 : this.maxSizeList) {
            if (size2.width != size.width || size2.height != size.height) continue;
            return true;
        }
        return false;
    }

    public static class Size {
        public final int height;
        public final int width;

        private Size(int n, int n2) {
            this.width = n;
            this.height = n2;
        }
    }

}

