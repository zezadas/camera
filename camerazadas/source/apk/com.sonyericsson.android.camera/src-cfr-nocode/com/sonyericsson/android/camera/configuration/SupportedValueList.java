/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.ResolutionOptions;
import java.util.HashMap;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SupportedValueList {
    static final String TAG = "SupportedValueList";
    public static final HashMap<Rect, Rect> sPhotoSurfaceSizeMap;
    public static final HashMap<Rect, Rect> sVideoSurfaceSizeMap;
    public float mEvStep;
    public int mFacing;
    public List<String> mFlash;
    public List<String> mFocusArea;
    public List<String> mFocusMode;
    public boolean mIsFaceDetectionSupported;
    public boolean mIsHdrSupported;
    public boolean mIsImageStabilizerSupported;
    public boolean mIsSceneRecognitionSupported;
    public boolean mIsSmileDetectionSupported;
    public boolean mIsSmoothZoomSupported;
    public boolean mIsVideoStabilizerSupported;
    public List<String> mIsoValues;
    public int mMaxEv;
    public int mMaxNumFocusAreas;
    public List<String> mMetering;
    public int mMinEv;
    public List<Camera.Size> mPictureSize;
    public Camera.Size mPreferredPreviewSizeForVideo;
    public List<int[]> mPreviewFpsRange;
    public List<Camera.Size> mPreviewSize;
    public ResolutionOptions mResolutionOptions;
    public List<String> mScene;
    public List<Camera.Size> mVideoSize;
    public List<String> mWhiteBalance;

    static;

    public SupportedValueList(CameraActivity var1, Camera.Parameters var2, int var3);

    private int getMaxMultiFocusNum(Camera.Parameters var1);

    public static int getMaxPictureWidth(Context var0, List<Camera.Size> var1);

    private Camera.Size getPreferredPreviewSizeForVideo(Camera.Parameters var1);

    private int getPreviewHeight(Context var1, int var2, List<Camera.Size> var3);

    private ResolutionOptions getResolutionOptions(Context var1, List<Camera.Size> var2, List<Camera.Size> var3);

    private boolean getSupportedFaceDetection(Camera.Parameters var1);

    private List<String> getSupportedFlash(Camera.Parameters var1);

    private List<String> getSupportedFocusArea(Camera.Parameters var1);

    private List<String> getSupportedFocusMode(Camera.Parameters var1);

    private boolean getSupportedHdr(Camera.Parameters var1);

    private boolean getSupportedImageStabilizer(Camera.Parameters var1);

    private List<String> getSupportedIsoValues(Camera.Parameters var1);

    private List<String> getSupportedMetering(Camera.Parameters var1);

    private List<Camera.Size> getSupportedPictureSize(Camera.Parameters var1);

    private List<Camera.Size> getSupportedPreviewSize(Camera.Parameters var1);

    private List<String> getSupportedScene(Camera.Parameters var1);

    private boolean getSupportedSceneRecognition(Camera.Parameters var1);

    private boolean getSupportedSmileDetection(Camera.Parameters var1);

    private List<String> getSupportedValues(Camera.Parameters var1, String var2, String var3);

    private List<String> getSupportedValues(List<String> var1, String var2);

    private List<Camera.Size> getSupportedVideoSize(Camera.Parameters var1);

    private boolean getSupportedVideoStabilizer(Camera.Parameters var1);

    private List<String> getSupportedWhiteBalance(Camera.Parameters var1);

    private boolean isSupported(Camera.Parameters var1, String var2, String var3);

    private void logSize(List<Camera.Size> var1, String var2);
}

