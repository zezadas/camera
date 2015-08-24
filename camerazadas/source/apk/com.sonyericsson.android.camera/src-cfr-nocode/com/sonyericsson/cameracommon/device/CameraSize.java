/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.device;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import java.util.List;

/*
 * Exception performing whole class analysis ignored.
 */
public class CameraSize {
    private static final double ASPECT_TOLERANCE = 0.05;
    public static final int MIN_RECORDING_DURATION = 1;
    private static final String TAG = "CameraSize";
    public static final long VIDEO_MAX_SIZE = 0xFFFFFFFFL;

    public CameraSize();

    public static long computeSize(int var0, int var1, int var2);

    public static Rect convertCameraSize(Camera.Size var0);

    public static List<Rect> convertCameraSizeList(List<Camera.Size> var0);

    private static int getAspectRatio(double var0, double var2);

    public static int getAspectRatio(Rect var0);

    public static long getAverageFileSize(int var0, int var1);

    public static int getDispayHeightWithoutNavigationBar(Context var0);

    public static int getDispayWidthWithoutNavigationBar(Context var0);

    static Rect getIdealPictureRect(Rect var0);

    public static long getMinFileSize(int var0, int var1);

    public static Rect getOptimalPreviewRect(Rect var0, Rect var1, List<Rect> var2);

    public static Rect getOptimalVideoSnapshotSize(Rect var0, List<Rect> var1);

    public static Rect getOptimalVideoSnapshotSizeFromCamerSizeList(Rect var0, List<Camera.Size> var1);

    public static Rect getVideoPreviewRect(Rect var0, Rect var1, List<Rect> var2);

    public static boolean isAspectRatioDifferent(Rect var0, Rect var1);
}

