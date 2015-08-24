/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.ResolutionOptions;
import com.sonyericsson.android.camera.util.capability.ResolutionDependence;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class SupportedValueList {
    static final String TAG = "SupportedValueList";
    public static final HashMap<Rect, Rect> sPhotoSurfaceSizeMap = new HashMap();
    public static final HashMap<Rect, Rect> sVideoSurfaceSizeMap = new HashMap();
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

    public SupportedValueList(CameraActivity cameraActivity, Camera.Parameters parameters, int n) {
        if (parameters == null) {
            throw new IllegalArgumentException("Parameters of camera Id[" + n + "] is null.");
        }
        this.mFacing = n;
        this.mFlash = this.getSupportedFlash(parameters);
        this.mWhiteBalance = this.getSupportedWhiteBalance(parameters);
        this.mScene = this.getSupportedScene(parameters);
        this.mFocusMode = this.getSupportedFocusMode(parameters);
        this.mMaxEv = parameters.getMaxExposureCompensation();
        this.mMinEv = parameters.getMinExposureCompensation();
        this.mEvStep = parameters.getExposureCompensationStep();
        this.mPreviewSize = this.getSupportedPreviewSize(parameters);
        this.mPictureSize = this.getSupportedPictureSize(parameters);
        this.mVideoSize = this.getSupportedVideoSize(parameters);
        this.mPreferredPreviewSizeForVideo = this.getPreferredPreviewSizeForVideo(parameters);
        this.mResolutionOptions = this.getResolutionOptions(cameraActivity, this.mPictureSize, this.mPreviewSize);
        this.mPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        this.mIsSmoothZoomSupported = parameters.isSmoothZoomSupported();
        this.mMaxNumFocusAreas = parameters.getMaxNumFocusAreas();
        this.mMetering = this.getSupportedMetering(parameters);
        this.mIsImageStabilizerSupported = this.getSupportedImageStabilizer(parameters);
        this.mIsVideoStabilizerSupported = this.getSupportedVideoStabilizer(parameters);
        this.mFocusArea = this.getSupportedFocusArea(parameters);
        this.getMaxMultiFocusNum(parameters);
        this.mIsSceneRecognitionSupported = this.getSupportedSceneRecognition(parameters);
        this.mIsFaceDetectionSupported = this.getSupportedFaceDetection(parameters);
        this.mIsSmileDetectionSupported = this.getSupportedSmileDetection(parameters);
        this.mIsoValues = this.getSupportedIsoValues(parameters);
        this.mIsHdrSupported = this.getSupportedHdr(parameters);
    }

    private int getMaxMultiFocusNum(Camera.Parameters parameters) {
        try {
            int n = parameters.getInt("sony-max-multi-focus-num");
            return n;
        }
        catch (NumberFormatException var1_2) {
            return 0;
        }
    }

    public static int getMaxPictureWidth(Context object, List<Camera.Size> object2) {
        boolean bl = ResolutionDependence.isDependOnAspect((Context)object);
        int n = 0;
        int n2 = 0;
        int n3 = 0;
        if (object2 != null) {
            object = object2.iterator();
            do {
                n = n2;
                if (!object.hasNext()) break;
                object2 = (Camera.Size)object.next();
                if (bl) {
                    n = object2.width * object2.height;
                    if (n3 >= n) continue;
                    n3 = n;
                    n2 = object2.width;
                    continue;
                }
                if (n2 >= object2.width) continue;
                n2 = object2.width;
            } while (true);
        }
        return n;
    }

    private Camera.Size getPreferredPreviewSizeForVideo(Camera.Parameters parameters) {
        return parameters.getPreferredPreviewSizeForVideo();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int getPreviewHeight(Context iterator, int n, List<Camera.Size> list) {
        int n2 = 0;
        int n3 = 0;
        if (n != 3264) return n2;
        iterator = list.iterator();
        n = n3;
        do {
            n2 = n;
            if (!(iterator.hasNext() && (n2 = iterator.next().height) != 1080)) {
                return n2;
            }
            if (n2 != 720) continue;
            n = n2;
        } while (true);
    }

    private ResolutionOptions getResolutionOptions(Context context, List<Camera.Size> list, List<Camera.Size> list2) {
        int n = SupportedValueList.getMaxPictureWidth(context, list);
        return new ResolutionOptions(context, n, this.getPreviewHeight(context, n, list2));
    }

    private boolean getSupportedFaceDetection(Camera.Parameters parameters) {
        if (parameters.getMaxNumDetectedFaces() > 0) {
            return true;
        }
        return false;
    }

    private List<String> getSupportedFlash(Camera.Parameters parameters) {
        return this.getSupportedValues(parameters.getSupportedFlashModes(), "Flash");
    }

    private List<String> getSupportedFocusArea(Camera.Parameters parameters) {
        return this.getSupportedValues(parameters, "sony-focus-area-values", ",");
    }

    private List<String> getSupportedFocusMode(Camera.Parameters parameters) {
        return this.getSupportedValues(parameters.getSupportedFocusModes(), "FocusMode");
    }

    private boolean getSupportedHdr(Camera.Parameters parameters) {
        return this.isSupported(parameters, "sony-is-values", "on-still-hdr");
    }

    private boolean getSupportedImageStabilizer(Camera.Parameters parameters) {
        return this.isSupported(parameters, "sony-is-values", "on");
    }

    private List<String> getSupportedIsoValues(Camera.Parameters parameters) {
        return this.getSupportedValues(parameters, "sony-iso-values", ",");
    }

    private List<String> getSupportedMetering(Camera.Parameters parameters) {
        return this.getSupportedValues(parameters, "sony-metering-mode-values", ",");
    }

    private List<Camera.Size> getSupportedPictureSize(Camera.Parameters list) {
        List<Camera.Size> list2;
        list = list2 = list.getSupportedPictureSizes();
        if (list2 == null) {
            list = new ArrayList();
        }
        return list;
    }

    private List<Camera.Size> getSupportedPreviewSize(Camera.Parameters list) {
        List<Camera.Size> list2;
        list = list2 = list.getSupportedPreviewSizes();
        if (list2 == null) {
            list = new ArrayList();
        }
        return list;
    }

    private List<String> getSupportedScene(Camera.Parameters parameters) {
        return this.getSupportedValues(parameters.getSupportedSceneModes(), "Scene");
    }

    private boolean getSupportedSceneRecognition(Camera.Parameters parameters) {
        return this.isSupported(parameters, "sony-scene-detect-supported", "true");
    }

    private boolean getSupportedSmileDetection(Camera.Parameters parameters) {
        return this.isSupported(parameters, "sony-smile-detect-values", "on");
    }

    private List<String> getSupportedValues(Camera.Parameters arrstring, String string, String string2) {
        ArrayList<String> arrayList = new ArrayList<String>();
        if ((arrstring = arrstring.get(string)) != null) {
            arrstring = arrstring.split(string2);
            int n = arrstring.length;
            for (int i = 0; i < n; ++i) {
                arrayList.add(arrstring[i]);
            }
        }
        return arrayList;
    }

    private List<String> getSupportedValues(List<String> object, String object2) {
        object2 = new ArrayList();
        if (object != null) {
            object = object.iterator();
            while (object.hasNext()) {
                object2.add((String)object.next());
            }
        }
        return object2;
    }

    private List<Camera.Size> getSupportedVideoSize(Camera.Parameters list) {
        List<Camera.Size> list2;
        list = list2 = list.getSupportedVideoSizes();
        if (list2 == null) {
            list = new ArrayList();
        }
        return list;
    }

    private boolean getSupportedVideoStabilizer(Camera.Parameters parameters) {
        return this.isSupported(parameters, "sony-vs-values", "on");
    }

    private List<String> getSupportedWhiteBalance(Camera.Parameters parameters) {
        return this.getSupportedValues(parameters.getSupportedWhiteBalance(), "WhiteBalance");
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean isSupported(Camera.Parameters object, String string, String string2) {
        if ((object = object.get(string)) == null || object.indexOf(string2) == -1) {
            return false;
        }
        return true;
    }

    private void logSize(List<Camera.Size> list, String string) {
    }
}

