/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.capability;

import android.hardware.Camera;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    static;

    private CameraSensor(Size[] var3, Size var4);

    private CameraSensor(Size[] var3, Size var4, boolean var5);

    public static CameraSensor findByMaxPixels(Camera.Parameters var0, int var1, int var2);

    public static boolean isIndependentHdrSupported(Camera.Parameters var0);

    private static Size size(int var0, int var1);

    public static CameraSensor valueOf(String var0);

    public static CameraSensor[] values();

    public boolean matchMaxPixels(Size var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Size {
        public final int height;
        public final int width;

        private Size(int var1, int var2);

        /* synthetic */ Size(int var1, int var2,  var3);
    }

}

