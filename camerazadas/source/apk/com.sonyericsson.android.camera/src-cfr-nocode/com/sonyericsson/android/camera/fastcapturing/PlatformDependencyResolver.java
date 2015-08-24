/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class PlatformDependencyResolver {
    private static final String TAG;

    static;

    public PlatformDependencyResolver();

    public static int getBurstFrameRate(Camera.Parameters var0, Context var1);

    public static Resolution getBurstPictureSizeAccordingTo(Camera.Parameters var0);

    public static String getDefaultFlash(Camera.Parameters var0);

    public static String getDefaultFocusModeForFastCapturePhoto(Camera.Parameters var0);

    public static String getDefaultFocusModeForFastCaptureVideo(Camera.Parameters var0);

    public static String getDefaultMeteringForFastCapture(Camera.Parameters var0);

    public static String getDefaultPhotolight(Camera.Parameters var0);

    public static Resolution getDefaultResolution(Camera.Parameters var0, Context var1);

    public static Resolution getDefaultResolutionFrom(Context var0, CaptureFrameShape var1, Camera.Parameters var2, int var3);

    public static String getDefaultSceneModeForFastCapture(Camera.Parameters var0);

    public static VideoSize getDefaultVideoSize(Camera.Parameters var0);

    public static String getDefaultWhiteBalanceForFastCapturePhoto(Camera.Parameters var0);

    public static int getMaxSuperResolutionZoom(Camera.Parameters var0);

    public static Rect getOptimalPreviewSize(Context var0, Camera.Parameters var1, int var2, Rect var3);

    public static int getSoftSkinMaxLevel(Camera.Parameters var0);

    public static boolean isAutoSceneRecogntionDuringRecSupported(Camera.Parameters var0);

    public static boolean isBurstCaptureSupported(Camera.Parameters var0);

    public static boolean isFaceDetectionSupported(Camera.Parameters var0);

    public static boolean isFlashLightSupported(Camera.Parameters var0);

    public static boolean isHdrSupported(Camera.Parameters var0);

    public static boolean isImageStabilizerSupported(Camera.Parameters var0);

    public static boolean isIsoSupported(Camera.Parameters var0, String var1);

    public static boolean isObjectTrackingSuppoted(Camera.Parameters var0);

    public static boolean isPhotoLightSupported(Camera.Parameters var0);

    public static boolean isSceneRecognitionSupported(Camera.Parameters var0);

    public static boolean isSoftSkinSupported(Camera.Parameters var0);

    public static boolean isSuperResolutionZoomSupported(Camera.Parameters var0);

    public static boolean isVideoHdrSupported(Camera.Parameters var0);

    public static boolean isVideoStabilizerSupported(Camera.Parameters var0);
}

