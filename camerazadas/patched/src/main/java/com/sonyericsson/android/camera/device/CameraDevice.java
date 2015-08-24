package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.Camera.Area;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.ErrorCallback;
import android.hardware.Camera.OnZoomChangeListener;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.ShutterCallback;
import android.hardware.Camera.Size;
import android.hardware.Camera.Parameters;
import android.os.Handler;
import android.util.Log;
import android.util.SparseArray;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;

import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.CameraSize;
import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.ShutterToneGenerator.Type;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.ExposureMode;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSpeed;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.controller.VideoDevice;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.device.CameraDeviceException;
import com.sonyericsson.android.camera.device.CameraDeviceUtil;
import com.sonyericsson.android.camera.device.CameraSurfaceHolder;
import com.sonyericsson.android.camera.device.PreviewFrameRetriever;
//import com.sonyericsson.android.camera.device.CameraDevice.AutoFocus;
//import com.sonyericsson.android.camera.device.CameraDevice.AutoFocusExtension;
//import com.sonyericsson.android.camera.device.CameraDevice.AutoFocusNoExtension;
//import com.sonyericsson.android.camera.device.CameraDevice.CloseDeviceTask;
//import com.sonyericsson.android.camera.device.CameraDevice.LedLight;
//import com.sonyericsson.android.camera.device.CameraDevice.LedLightNotSupported;
//import com.sonyericsson.android.camera.device.CameraDevice.LedLightSupported;
//import com.sonyericsson.android.camera.device.CameraDevice.OpenCameraDeviceTask;
//import com.sonyericsson.android.camera.device.CameraDevice.SetupCameraDeviceTask;
import com.sonyericsson.android.camera.device.PreviewFrameRetriever.PreviewInfo;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.eachcamera.BurstShooting;
import com.sonyericsson.cameracommon.status.eachcamera.FaceDetection;
import com.sonyericsson.cameracommon.status.eachcamera.FaceIdentification;
import com.sonyericsson.cameracommon.status.eachcamera.Metadata;
import com.sonyericsson.cameracommon.status.eachcamera.ObjectTracking;
import com.sonyericsson.cameracommon.status.eachcamera.PhotoLight;
import com.sonyericsson.cameracommon.status.eachcamera.SceneRecognition;
import com.sonyericsson.cameracommon.status.eachcamera.PhotoLight.Value;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.utility.ProductConfig;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonyericsson.cameraextension.CameraExtension.BurstShotCallback;
import com.sonyericsson.cameraextension.CameraExtension.FaceDetectionCallback;
import com.sonyericsson.cameraextension.CameraExtension.FilePathGenerator;
import com.sonyericsson.cameraextension.CameraExtension.MediaProviderUpdator;
import com.sonyericsson.cameraextension.CameraExtension.ObjectTrackingCallback;
import com.sonyericsson.cameraextension.CameraExtension.SceneRecognitionCallback;
import com.sonyericsson.cameraextension.CameraExtension.SceneRecognitionResult;
import com.sonyericsson.cameraextension.CameraExtension.StorageFullDetector;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import lanchon.dexpatcher.annotation.DexAction;

@DexEdit(defaultAction = DexAction.IGNORE)
public class CameraDevice
        implements SurfaceHolder.Callback, CameraExtension.SceneRecognitionCallback, Camera.ErrorCallback {
    private static final int CAMERA_IS_NOT_OPENED = -1;
    private static final int CAMERA_OPEN_FAILED = -2;
    private static final String TAG = CameraDevice.class.getSimpleName();
    private static Camera.Parameters sCachedParameters = null;
    private static volatile SparseArray sCameraInfoArray;
    private AutoFocus mAutoFocus;
    private AutoFocusListener mAutoFocusListener;
    private ShutterSound mBurstShutterSound;
    private CapabilityList mCachedCapabilityList;
    private Camera mCamera;
    private final CameraActivity mCameraActivity;
    private CameraExtension mCameraExtension;
    private int mCameraId;
    private ExecutorService mCloseDeviceExecutorService;
    private Future mCloseDeviceFuture;
    private boolean mCommitParameters;
    private int mDisplayOrientation = 0;
    private boolean mIsAlreadySetBurstShutterSound;
    private boolean mIsBurstShooting;
    private volatile boolean mIsCancelOpenCameraRequested = false;
    private boolean mIsCapturing;
    private boolean mIsFaceDetectionRunning;
    private boolean mIsObjectTrackingRunning;
    private boolean mIsPreviewing;
    private boolean mIsSceneRecognitionRunning;
    private boolean mIsVideo;
    private LedLight mLedLight;
    public boolean mNeedStartPreview = false;
    private ExecutorService mOpenDeviceExecutorService;
    private Future mOpenDeviceFuture;
    private int mOpenTaskTargetCameraId = -1;
    private Rect mPictureSize = new Rect();
    private PreviewFrameRetriever mPreviewFrameRetriever = new PreviewFrameRetriever();
    private Rect mPreviewSize = new Rect();
    private SceneRecognitionCallback mSceneRecognitionCallback;
    private Future mSetupDeviceFuture;
    private SurfaceHolder mSurfaceHolder;
    private VideoDevice mVideoDevice = null;
    private int mVideoFps = 0;

    static {
        if (HardwareCapability.isCameraSupported()) {
            sCameraInfoArray = new SparseArray();
            setCameraInfo(sCameraInfoArray, 0);
            if (HardwareCapability.isFrontCameraSupported()) {
                setCameraInfo(sCameraInfoArray, 1);
            }
        }

    }

    @DexIgnore
    public CameraDevice(CameraActivity var1) {
        this.mCameraActivity = var1;
    }

    @DexIgnore
    private void clearCloseDeviceTask() {
        if (this.isCloseDeviceTaskWorking()) {
            this.joinCloseDeviceTask();
        }

        if (this.mCloseDeviceFuture != null) {
            this.mCloseDeviceFuture.cancel(true);
            this.mCloseDeviceFuture = null;
        }

        if (this.mCloseDeviceExecutorService != null) {
            this.mCloseDeviceExecutorService.shutdown();
            this.mCloseDeviceExecutorService = null;
        }

    }

    @DexIgnore
    private void close(boolean param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    private void finishVideoNrSetting() {
        if (HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 8)) {
            this.setVideoNr(false);
        }

    }

    @DexIgnore
    public static CameraInfo getCameraInfo(int var0) {
        return sCameraInfoArray == null ? null : (CameraInfo) sCameraInfoArray.get(var0);
    }

    @DexIgnore
    private int getOpenTaskTargetCameraId() {
        synchronized (this) {
        }

        int var1;
        try {
            var1 = this.mOpenTaskTargetCameraId;
        } finally {
            ;
        }

        return var1;
    }

    @DexIgnore
    private void initParametersCache() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "Camera is not initialized.");
            return;
        }
        Camera.Parameters parameters = this.mCamera.getParameters();
        if (parameters == null) {
            CameraLogger.w(TAG, "initParametersCache: params is null.");
        }
        this.setCachedParameters(parameters);
    }

    @DexIgnore
    private boolean isCapturing() {
        synchronized (this) {
        }

        boolean var1;
        try {
            var1 = this.mIsCapturing;
        } finally {
            ;
        }

        return var1;
    }

    @DexIgnore
    private boolean isCloseDeviceTaskWorking() {
        return this.mCloseDeviceFuture != null;
    }

    @DexIgnore
    private boolean isFailedOpenCameraDeviceTask() {
        return this.getOpenTaskTargetCameraId() == -2;
    }

    @DexIgnore
    private boolean isFront() {
        return this.mCameraId == 1;
    }

    @DexIgnore
    private boolean isRequestCameraOpened(int var1) {
        int var2 = this.getOpenTaskTargetCameraId();
        if (var2 == -1) {
            return false;
        } else if (var2 == var1) {
            return true;
        } else {
            this.close(false);
            return false;
        }
    }

    @DexIgnore
    public static boolean isSceneRecognitionRequired(CapturingMode var0) {
        return var0 == CapturingMode.SCENE_RECOGNITION || var0 == CapturingMode.SUPERIOR_FRONT;
    }

    @DexIgnore
    public static boolean isSupported(String var0, List var1) {
        return var1 != null && var1.indexOf(var0) >= 0;
    }

    @DexIgnore
    private void joinCloseDeviceTask() {
        if (this.mCloseDeviceFuture != null) {
            try {
                this.mCloseDeviceFuture.get(4000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException var2) {
                CameraLogger.e(TAG, "Camera closing has been interrupted.", var2);
            } catch (ExecutionException var3) {
                CameraLogger.e(TAG, "Camera closing failed.", var3);
            } catch (TimeoutException var4) {
                CameraLogger.e(TAG, "Camera closing timeout.", var4);
            }
        } else {
            CameraLogger.e(TAG, "joinCloseDeviceTask: Close camera device task is not submitted.");
        }
    }

    @DexIgnore
    private boolean openCameraDeviceWithRetry(int param1) {
        return false;
    }

    @DexIgnore
    private void prepareVideoNrSetting() {
        boolean var2 = HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 8);
        boolean var3 = HardwareCapability.getInstance().isVideoNrSupported(this.getCameraId());
        boolean var1;
        if (this.mVideoFps != VideoSize.FULL_HD_60FPS.getVideoFrameRate()) {
            var1 = true;
        } else {
            var1 = false;
        }

        if (var2 && var3) {
            if (!var1) {
                this.setVideoNr(false);
                return;
            }

            this.setVideoNr(true);
        }

    }

    @DexIgnore
    private void setCachedParameters(Camera.Parameters var1) {
        int var2 = -1;
        if (sCachedParameters != null) {
            var2 = sCachedParameters.getZoom();
        }

        sCachedParameters = var1;
        if (var1 != null) {
            if (var2 >= 0 && (var1.getZoom() < 0 || var1.getZoom() > var1.getMaxZoom())) {
                sCachedParameters.setZoom(var2);
            }

            Size var3 = var1.getPreviewSize();
            if (var3 == null) {
                sCachedParameters.setPreviewSize(this.mPreviewSize.width(), this.mPreviewSize.height());
            } else if (var3.width < 0 || var3.height < 0) {
                sCachedParameters.setPreviewSize(this.mPreviewSize.width(), this.mPreviewSize.height());
                return;
            }
        }
    }

    @DexIgnore
    private static void setCameraInfo(SparseArray var0, int var1) {
        CameraInfo var2 = new CameraInfo();
        Camera.getCameraInfo(var1, var2);
        StaticConfigurationUtil.setCameraInfo(var2);
        var0.put(var1, var2);
    }

    @DexIgnore
    private void setDcModeParameters(Parameters param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    private void setOpenTaskTargetCameraId(int var1) {
        synchronized (this) {
        }

        try {
            this.mOpenTaskTargetCameraId = var1;
        } finally {
            ;
        }

    }

    @DexIgnore
    private void setVideoSize(Rect var1) {
        Parameters var2 = this.getParameters();
        if (var2 == null) {
            CameraLogger.e(TAG, "setVideoSize: params is null.");
        } else {
            // var2.set(getStringKey(ParameterKey.VIDEO_SIZE, true), "" + var1.width() + "x" + var1.height());
        }

    }

    @DexIgnore
    public void clearResumeDeviceTask() {
        this.mIsCancelOpenCameraRequested = true;
        if (this.isStartedOpenCameraDeviceTask()) {
            this.joinOpenCameraDeviceTask(false);
        }

        if (this.isStartedSetupCameraDeviceTask()) {
            this.joinSetupCameraDeviceTask(false);
        }

        this.mIsCancelOpenCameraRequested = false;
        if (this.mOpenDeviceFuture != null) {
            this.mOpenDeviceFuture.cancel(true);
            this.mOpenDeviceFuture = null;
        }

        if (this.mSetupDeviceFuture != null) {
            this.mSetupDeviceFuture.cancel(true);
            this.mSetupDeviceFuture = null;
        }

        if (this.mOpenDeviceExecutorService != null) {
            this.mOpenDeviceExecutorService.shutdown();
            this.mOpenDeviceExecutorService = null;
        }

        this.setOpenTaskTargetCameraId(-1);
    }

    @DexIgnore
    public void clearZoomChangeListener() {
        if (this.mCamera != null) {
            this.mCamera.setZoomChangeListener((OnZoomChangeListener) null);
        }
    }

    @DexIgnore
    public void close() {
        if (!this.isRecorderWorking()) {
            this.close(true);
        } else {
            this.mCloseDeviceExecutorService = Executors.newSingleThreadExecutor();
            //this.mCloseDeviceFuture = this.mCloseDeviceExecutorService.submit(new CloseDeviceTask(this, 1));
        }
    }

    @DexIgnore
    public void commit() {
        if (this.mCommitParameters) {
            this.commitParameters();
        }

    }

    @DexIgnore
    public void commitParameters() {

    }

    @DexIgnore
    public void dumpParameters() {
        if (sCachedParameters != null) {

        }

    }

    @DexIgnore
    public void finishBurstShot(com.sonyericsson.android.camera.parameter.Parameters var1) {
        this.setResolution(var1.getUpdatedResolution(var1.getHdr()));
        this.setBurstShot(BurstShot.OFF);
        this.setJpegEncodingQuality(2);
        this.commit();
        this.startPreview(this.mSurfaceHolder);
    }

    @DexIgnore
    public void finishPreviewing() {
        this.setOneShotPreviewCallback((PreviewCallback) null);
        this.stopSceneRecognition();
        this.stopFaceDetection();
        this.stopObjectTracking(true);
        this.stopBurstShot(-1);
        if (!this.isRecorderWorking()) {
            this.stopPreview();
        }

    }

    @DexIgnore
    public void finishRec(Resolution var1) {
        this.setVideoMode(this.mIsVideo);
        if (CameraSize.isAspectRatioDifferent(this.getPreviewRect(), this.getPhotoPreviewSize(var1))) {
            this.setResolution(var1);
        }

        this.setFpsRange(CameraDeviceUtil.computePreviewFpsRange(60, (List) this.mCachedCapabilityList.FPS_RANGE.get()));
        this.commit();
        this.startPreview(this.mSurfaceHolder);
    }

    @DexIgnore
    public AutoFocus getAutoFocus(CapabilityList var1) {
        return (AutoFocus) (((String) var1.EXTENSION_VERSION.get()).length() > 0 ? new AutoFocusExtension(this, 1) : new AutoFocusNoExtension(this, 1));
    }

    @DexIgnore
    public final Camera getCamera() {
        return this.mCamera;
    }

    @DexIgnore
    public int getCameraId() {
        return this.mCameraId;
    }

    @DexIgnore
    public int getDisplayOrientation() {
        return this.mDisplayOrientation;
    }

    @DexIgnore
    public String getImageStabilizer(Parameters var1) {
        String var2 = var1.get(this.getStringKey(ParameterKey.STABILIZER, false));
        String var3 = var2;
        if (var2 == null) {
            var3 = "";
        }

        return var3;
    }

    @DexIgnore
    public LedLight getLedLight(CapabilityList var1) {
        List var2 = (List) var1.FLASH.get();
        return (LedLight) (isSupported("torch", var2) && isSupported("off", var2) ? new LedLightSupported(this, 1) : new LedLightNotSupported(this, 1));


    }

    @DexIgnore
    public final int getMaxShutterSpeed() {
        Camera.Parameters var1 = this.mCamera.getParameters();
        if (var1 == null) {
            CameraLogger.e(TAG, "getMaxShutterSpeed: params is null.");
            return -1;
        } else {
            return Integer.valueOf(var1.get("sony-max-shutter-speed")).intValue();
        }
    }

    @DexIgnore
    public final int getMaxSrZoom() {
        Camera.Parameters var1 = this.mCamera.getParameters();
        if (var1 == null) {
            CameraLogger.e(TAG, "getMaxSrZoom: params is null.");
        } else {
            String var2 = var1.get("sony-max-sr-zoom");
            if (var2 != null) {
                return Integer.parseInt(var2);
            }
        }

        return 0;
    }

    @DexIgnore
    public final int getMaxZoom() {
        Camera.Parameters var1 = this.mCamera.getParameters();
        if (var1 == null) {
            CameraLogger.e(TAG, "getMaxZoom: params is null.");
            return 0;
        } else {
            return var1.getMaxZoom();
        }
    }

    @DexIgnore
    public final int getMinShutterSpeed() {
        Camera.Parameters var1 = this.mCamera.getParameters();
        if (var1 == null) {
            CameraLogger.e(TAG, "getMinShutterSpeed: params is null.");
            return -1;
        } else {
            return Integer.valueOf(var1.get("sony-min-shutter-speed")).intValue();
        }
    }

    @DexIgnore
    public Camera.Parameters getParameters() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "Camera is not initialized.");
            return null;
        } else {
            if (sCachedParameters == null) {
                CameraLogger.w(TAG, "sCachedParameters is null. re-get parameters.");
                this.setCachedParameters(this.mCamera.getParameters());
            }

            if (sCachedParameters == null) {
                CameraLogger.w(TAG, "camera parameters is null. getNumberOfCameras() = " + HardwareCapability.getNumberOfCameras());
            }

            return sCachedParameters;
        }
    }

    @DexIgnore
    public Rect getPhotoPreviewSize(Resolution var1) {
        float var2 = (float) var1.getPictureRect().width() / (float) var1.getPictureRect().height();
        return CameraSize.getOptimalPreviewRect(LayoutDependencyResolver.getSurfaceRect(this.mCameraActivity, var2), (Rect) this.mCachedCapabilityList.PREVIEW_SIZE_FOR_VIDEO.get(), (List) this.mCachedCapabilityList.PREVIEW_SIZE.get());
    }

    @DexIgnore
    public Rect getPictureRect() {
        return new Rect(this.mPictureSize);
    }

    @DexIgnore
    public final int getPreviewFormat() {
        Parameters var1 = this.getParameters();
        if (var1 == null) {
            CameraLogger.e(TAG, "Camera is not opened. parameters is null.");
            return -1;
        } else {
            return var1.getPreviewFormat();
        }
    }

    @DexIgnore
    public PreviewFrameRetriever getPreviewFrameRetriever() {
        return this.mPreviewFrameRetriever;
    }

    @DexIgnore
    public Rect getPreviewRect() {
        return new Rect(this.mPreviewSize);
    }

    @DexIgnore
    public final int getShutterSpeed() {
        Camera.Parameters var1 = this.mCamera.getParameters();
        if (var1 == null) {
            CameraLogger.e(TAG, "getShutterSpeed: params is null.");
            return -1;
        } else {
            return Integer.valueOf(var1.get("sony-shutter-speed")).intValue();
        }
    }

    @DexIgnore
    public String getStringKey(ParameterKey var1, boolean var2) {
        switch (var1.ordinal()) {
            case 1:
                return "sony-is";
            case 2:
                if (var2) {
                    return "sony-vs";
                }

                return "sony-is";
            case 3:
                return "video-size";
            default:
                return "";
        }
    }

    @DexIgnore
    public final List getSupportedPreviewFormats() {
        Parameters var1 = this.getParameters();
        if (var1 == null) {
            CameraLogger.e(TAG, "getSupportedPreviewFormats: params is null.");
            return new ArrayList();
        } else {
            return var1.getSupportedPreviewFormats();
        }
    }

    @DexIgnore
    public SurfaceHolder getSurfaceHolder() {
        return this.mSurfaceHolder;
    }

    @DexIgnore
    public Rect getVideoPreviewSize(VideoSize var1) {
        return CameraSize.getVideoPreviewRect(var1.getVideoRect(), (Rect) this.mCachedCapabilityList.PREVIEW_SIZE_FOR_VIDEO.get(), (List) this.mCachedCapabilityList.PREVIEW_SIZE.get());
    }

    @DexIgnore
    public final int getZoom() {
        Parameters var1 = this.getParameters();
        if (var1 == null) {
            CameraLogger.e(TAG, "getZoom: params is null.");
            return 0;
        } else {
            return var1.getZoom();
        }
    }

    @DexIgnore
    public final boolean isAvailable() {
        return this.mCamera != null && this.mCameraExtension != null;
    }

    @DexIgnore
    public boolean isObjectTrackingRunning() {
        return this.mIsObjectTrackingRunning;
    }

    @DexIgnore
    public boolean isOpenCameraDeviceTaskRunning() {
        return this.mOpenDeviceFuture != null && !this.mOpenDeviceFuture.isDone();
    }

    @DexIgnore
    public final boolean isPreviewing() {
        synchronized (this) {
        }

        boolean var1;
        try {
            var1 = this.mIsPreviewing;
        } finally {
            ;
        }

        return var1;
    }

    @DexIgnore
    public boolean isRecorderWorking() {
        return this.mVideoDevice == null ? false : this.mVideoDevice.isRecorderWorking();
    }

    @DexIgnore
    public boolean isSceneRecognitionRunning() {
        return this.mIsSceneRecognitionRunning;
    }

    @DexIgnore
    public boolean isSetupCameraDeviceTaskRunning() {
        return this.mSetupDeviceFuture != null && !this.mSetupDeviceFuture.isDone();
    }

    @DexIgnore
    public boolean isStartedOpenCameraDeviceTask() {
        return this.mOpenDeviceFuture != null;
    }

    @DexIgnore
    public boolean isStartedSetupCameraDeviceTask() {
        return this.mSetupDeviceFuture != null;
    }

    @DexIgnore
    public boolean isVideoHdrOn() {
        boolean var1 = false;
        Camera.Parameters var2 = this.mCamera.getParameters();
        if (var2 == null) {
            CameraLogger.e(TAG, "setVideoHdr: params is null.");
            return false;
        } else {
            String var3 = var2.get("sony-video-hdr");
            if (var3 != null) {
                var1 = var3.equals(VideoHdr.ON.getValue());
            }

            return var1;
        }
    }

    @DexIgnore
    public void joinOpenCameraDeviceTask(boolean param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void joinSetupCameraDeviceTask(boolean param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void lockCamera() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "lockCamera: mCamera is null.");
        } else {
            this.mCamera.lock();
        }
    }

    @DexIgnore
    public boolean needStartPreview() {
        return this.mNeedStartPreview;
    }

    @DexIgnore
    public void onError(int param1, Camera param2) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void onSceneModeChanged(SceneRecognitionResult var1) {
        if (this.mSceneRecognitionCallback != null) {
            this.mSceneRecognitionCallback.onSceneModeChanged(var1);
        }

    }

    @DexIgnore
    public final void open(int param1) throws CameraDeviceException {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void prepareBurstShot(com.sonyericsson.android.camera.parameter.Parameters var1) {
        this.setBurstFrameRate();
        this.setResolution(BurstShot.getBurstResolution(var1));
        this.setBurstShot(var1.getBurstShot());
        this.setJpegEncodingQuality(1);
        this.commit();
        this.startPreview(this.mSurfaceHolder);
    }

    @DexIgnore
    public void prepareRec(VideoSize var1) {
        this.setVideoMode(true);
        if (CameraSize.isAspectRatioDifferent(this.getPreviewRect(), this.getVideoPreviewSize(var1))) {
            this.setPreviewSizeAndFpsRangeForVideo(var1);
        } else {
            this.setFpsRange(CameraDeviceUtil.computePreviewFpsRange(var1.getVideoFrameRate(), (List) this.mCachedCapabilityList.FPS_RANGE.get()));
        }

        this.commit();
        this.startPreview(this.mSurfaceHolder);
    }

    @DexIgnore
    public void reconnectCamera() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "reconnectCamera: mCamera is null.");
        } else {
            this.setCachedParameters((Parameters) null);

            try {
                this.mCamera.reconnect();
                this.initParametersCache();
            } catch (IOException var2) {
                CameraLogger.e(TAG, "reconnect() failed.", var2);
            }
        }
    }

    @DexIgnore
    public final void release() {
        this.setSceneRecognitionCallback((SceneRecognitionCallback) null);
        this.setAutoFocusListener((AutoFocusListener) null);
    }

    @DexIgnore
    public void resetFocusAreaAndRect(FocusMode var1) {
        if (var1 != null) {
            Parameters var2 = this.getParameters();
            if (var2 == null) {
                CameraLogger.e(TAG, "resetFocusAreaAndRect: getParameters() fail. params is null");
                return;
            }

            var2.set("sony-focus-area", var1.getFocusArea());
        }

        this.setFocusRect(new Rect());
    }

    @DexIgnore
    public void resetZoom() {
        this.setZoom(0);
    }

    @DexIgnore
    public void restoreSettingAfterRecording() {
        this.mVideoDevice = null;
        this.reconnectCamera();
        this.stopVideoMetadata();
        com.sonyericsson.android.camera.parameter.Parameters var1 = this.mCameraActivity.getParameterManager().getParameters();
        if (var1 != null) {
            this.setVideoRecordingSound(var1.getShutterSound());
        } else {
            this.setVideoRecordingSound(ShutterSound.SOUND1);
        }

        this.commit();
    }

    @DexIgnore
    public void resume(com.sonyericsson.android.camera.parameter.Parameters var1) {
        this.mCachedCapabilityList = HardwareCapability.getCapability(var1.capturingMode.getCameraId());
        Rect var2;
        if (var1.capturingMode.getType() != 2 && !this.mCameraActivity.isOneShotVideo()) {
            var2 = this.getPhotoPreviewSize(var1.getResolution());
        } else {
            var2 = this.getVideoPreviewSize(var1.getVideoSize());
        }

        this.updatePreviewSize(var2);
        this.startSetupCameraDeviceTask(var1);
    }

    @DexIgnore
    public void setAutoFocusListener(AutoFocusListener var1) {
        this.mAutoFocusListener = var1;
    }

    @DexIgnore
    public void setBurstFrameRate() {
        int var2 = this.mCameraActivity.getResources().getInteger(2131427331);
        int var3 = ((Integer) this.mCachedCapabilityList.MAX_BURST_SHOT_FRAME_RATE.get()).intValue();
        int var1 = var2;
        if (var3 < var2) {
            var1 = var3;
        }

        Parameters var4 = this.getParameters();
        if (var4 == null) {
            CameraLogger.e(TAG, "setBurstFrameRate: params is null.");
        } else {
            var4.set("sony-burst-shot-frame-rate", var1);
            this.mCommitParameters = true;
        }
    }

    @DexIgnore
    public void setBurstShot(BurstShot param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setBurstShutterSound(ShutterSound var1) {
        if (this.mCameraExtension != null && this.mCameraId == 0 && (this.mBurstShutterSound != var1 || !this.mIsAlreadySetBurstShutterSound)) {
            this.mBurstShutterSound = var1;
            this.mIsAlreadySetBurstShutterSound = true;
            String var2 = ShutterToneGenerator.getSoundFilePath(Type.SOUND_BURST_SHUTTER, var1);
            this.mCameraExtension.setBurstShutterSoundFilePath(var2);
        }
    }

    @DexIgnore
    public void setCapturingMode(CapturingMode var1) {
        this.mIsVideo = false;
        if (var1.getType() == 2 || this.mCameraActivity.isOneShotVideo()) {
            this.mIsVideo = true;
        }

        this.setVideoMode(this.mIsVideo);
        if (!this.mIsVideo) {
            this.setFpsRange(CameraDeviceUtil.computePreviewFpsRange(60, (List) this.mCachedCapabilityList.FPS_RANGE.get()));
        }

        this.mCommitParameters = true;
    }

    @DexIgnore
    public void setDisplayOrientation(int var1) {
        if (this.mCamera != null) {
            CameraActivity var2 = this.mCameraActivity;
            CameraInfo var3 = (CameraInfo) sCameraInfoArray.get(var1);
            var1 = 360 - ProductConfig.getMountAngle(var2);
            if (var3.facing == 1) {
                var1 = (360 - (var3.orientation + var1) % 360) % 360;
            } else {
                var1 = (var3.orientation - var1 + 360) % 360;
            }

            try {
                this.mCamera.setDisplayOrientation(var1);
                this.mDisplayOrientation = var1;
            } catch (RuntimeException var4) {
                ;
            }
        }
    }

    @DexIgnore
    public void setEv(Ev param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setExifInfo(Integer var1, Double var2, Double var3, Double var4, Long var5) {
        Parameters var8 = this.getParameters();
        if (var8 == null) {
            this.mCommitParameters = false;
        } else {
            boolean var7 = false;
            if (var1 != null) {
                var8.setRotation(var1.intValue());
                var7 = true;
            }

            var8.removeGpsData();
            boolean var6 = var7;
            if (var2 != null) {
                var6 = var7;
                if (var3 != null) {
                    var8.setGpsLatitude(var2.doubleValue());
                    var8.setGpsLongitude(var3.doubleValue());
                    var6 = var7 | true;
                }
            }

            var7 = var6;
            if (var4 != null) {
                var8.setGpsAltitude(var4.doubleValue());
                var7 = var6 | true;
            }

            var6 = var7;
            if (var5 != null) {
                var8.setGpsTimestamp(var5.longValue());
                var6 = var7 | true;
            }

            this.mCommitParameters = var6;
        }
    }

    @DexIgnore
    public final void setFaceDetectionCallback(FaceDetectionCallback var1) {
        if (this.mCameraExtension != null) {
            this.mCameraExtension.setFaceDetectionCallback(var1);
        }
    }

    @DexIgnore
    public final void setFlashMode(Flash var1) {
        Parameters var3 = this.getParameters();
        if (var3 == null) {
            CameraLogger.e(TAG, "setFlashMode: params is null.");
        } else {
            var3.setFlashMode(var1.getValue());
            this.mCommitParameters = true;
            EachCameraStatusPublisher var2 = new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId);
            Value var4;
            if (var3.getFlashMode() != null && "torch".equals(var3.getFlashMode())) {
                var4 = Value.ON;
            } else {
                var4 = Value.OFF;
            }

            var2.put(new PhotoLight(var4)).publish();
        }
    }

    @DexAdd
    public final void setExposureMode(ExposureMode exposureMode) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                return;
            }
            parameters.set("sony-ae-mode", exposureMode.getValue());
//            parameters.set("sony-shutter-speed", Integer.toString(12));
        }
        this.mCommitParameters = true;
    }

    @DexAdd
    public final void setShutterSpeed(ShutterSpeed shutterSpeed) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                return;
            }
            parameters.set("sony-shutter-speed", shutterSpeed.getValue());
        }
        this.mCommitParameters = true;
    }

    @DexEdit(target = "setIso")
    public void source_setIso(Iso iso) {

    }

    @DexAdd
    public void setIso(Iso iso) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                return;
            }
            int n = iso.getIsoValue();
            if (n > 0) {
                parameters.set("sony-iso", Integer.toString(n));
            }
        }
        this.mCommitParameters = true;
    }

    @DexIgnore
    public final void setFocusMode(FocusMode focusMode) {
        // MONITORENTER : this
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "setFocusMode: params is null.");
            // MONITOREXIT : this
            return;
        }
        if (this.mIsVideo) {
            parameters.setFocusMode(focusMode.getValueForVideo());
        } else {
            parameters.setFocusMode(focusMode.getValue());
        }
        // MONITOREXIT : this
        if (!this.isFront()) {
            this.resetFocusAreaAndRect(focusMode);
        }
        this.mCommitParameters = true;
    }

    @DexIgnore
    public void setFocusRect(Rect var1) {
        Camera.Parameters var5 = this.mCamera.getParameters();
        if (var5 == null) {
            CameraLogger.e(TAG, "setFocusRect: params is null.");
        } else if (var5.getMaxNumFocusAreas() >= 1) {
            Rect var3;
            label27:
            {
                if (var1.width() != 0) {
                    var3 = var1;
                    if (var1.height() != 0) {
                        break label27;
                    }
                }

                if (var5.get("sony-focus-area").equals("user")) {
                    var1.set(-100, -100, 100, 100);
                    var3 = var1;
                } else {
                    var3 = new Rect();
                }
            }

            short var2;
            if (var3.isEmpty()) {
                var2 = 0;
            } else {
                var2 = 1000;
                var5.set("sony-focus-area", "user");
            }

            List var4 = var5.getFocusAreas();
            Object var6 = var4;
            if (var4 == null) {
                Area var7 = new Area(new Rect(), var2);
                var6 = new ArrayList();
                ((List) var6).add(var7);
            }

            ((Area) ((List) var6).get(0)).rect = var3;
            ((Area) ((List) var6).get(0)).weight = var2;
            var5.setFocusAreas((List) var6);
            return;
        }

    }

    @DexIgnore
    public void setFpsRange(int[] param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setHdr(Hdr param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public final void setJpegEncodingQuality(int n) {
        synchronized (this) {
            Camera.Parameters parameters = this.mCamera.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setJpegEncodingQuality: params is null.");
                return;
            }
            parameters.setJpegQuality(MediaSavingConstants.JpegQuality.getPlatformQualityFromCameraProfile(n));
            return;
        }
    }

    @DexIgnore
    public void setMetering(Metering param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public final void setOneShotPreviewCallback(PreviewCallback var1) {
        if (this.mCamera != null) {
            this.mCamera.setOneShotPreviewCallback(var1);
        }

    }

    @DexIgnore
    public void setPhotoShutterSound(boolean param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setPictureSize(Rect var1) {
        Camera.Parameters var2 = this.mCamera.getParameters();
        if (var2 == null) {
            CameraLogger.e(TAG, "setPictureSize: params is null.");
        } else {
            var2.setPictureSize(var1.width(), var1.height());
            this.mPictureSize = new Rect(var1);
        }
    }

    @DexIgnore
    public void setPreviewDisplay(SurfaceHolder var1) throws IOException {
        synchronized (this) {
        }
        if (var1 != null) {
            try {
                this.setSurfaceHolder(var1);
                if (this.mCamera != null) {
                    this.mCamera.setPreviewDisplay(var1);
                }
            } finally {
                ;
            }
        }

    }

    @DexIgnore
    public void setPreviewSize(Rect var1) {
        Camera.Parameters var2 = this.mCamera.getParameters();
        if (var2 == null) {
            CameraLogger.e(TAG, "setPreviewSize: params is null.");
        } else {
            if (var1.width() == this.mPreviewSize.width() && var1.height() == this.mPreviewSize.height()) {
                this.mNeedStartPreview = false;
            } else {
                this.stopPreview();
                this.mNeedStartPreview = true;
            }

            var2.setPreviewSize(var1.width(), var1.height());
            this.updatePreviewSize(var1);
            PreviewInfo var3 = new PreviewInfo(var2.getPreviewFormat(), var2.getPreviewSize().width, var2.getPreviewSize().height);
            this.mPreviewFrameRetriever.setPreviewInfo(var3);
        }
    }

    @DexIgnore
    public void setPreviewSizeAndFpsRangeForVideo(VideoSize param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setResolution(Resolution param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setScene(Scene param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public final void setSceneRecognitionCallback(SceneRecognitionCallback var1) {
        this.mSceneRecognitionCallback = var1;
    }

    @DexIgnore
    public final void setSelectedFacePosition(int var1, int var2) {
        if (this.mCameraExtension == null) {
            CameraLogger.w(TAG, "setSelectFacePos: mCameraExtension is null.");
        } else if (this.mIsPreviewing && this.mIsFaceDetectionRunning) {
            this.mCameraExtension.setSelectFacePos(var1, var2);
            return;
        }

    }

    @DexIgnore
    public void setShutterSound(ShutterSound var1) {
        this.setPhotoShutterSound(var1.getBooleanValue().booleanValue());
        this.setVideoRecordingSound(var1);
        this.setBurstShutterSound(var1);
    }

    @DexIgnore
    public void setSmileCapture(SmileCapture param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setSoftSkin(SoftSkin param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setStabilizer(Stabilizer param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setSteadyShot(VideoStabilizer param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setSurfaceHolder(SurfaceHolder var1) {
        this.mSurfaceHolder = var1;
    }

    @DexIgnore
    public void setVideoDevice(VideoDevice var1) {
        this.mVideoDevice = var1;
    }

    @DexIgnore
    public void setVideoHdr(VideoHdr param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setVideoMode(boolean param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setVideoNr(boolean var1) {
        Camera.Parameters var2 = this.mCamera.getParameters();
        if (var2 == null) {
            CameraLogger.e(TAG, "prepareVideoNr: params is null.");
        } else if (var1) {
            var2.set("sony-video-nr", "on");
        } else {
            var2.set("sony-video-nr", "off");
        }
    }

    @DexIgnore
    public void setVideoPictureSize(Rect var1) {
        if (((Boolean) this.mCachedCapabilityList.VIDEO_SNAPSHOT.get()).booleanValue()) {
            var1 = CameraSize.getOptimalVideoSnapshotSize(var1, (List) this.mCachedCapabilityList.PICTURE_SIZE.get());
            if (var1 != null) {
                this.setPictureSize(var1);
            }
        }

    }

    @DexIgnore
    public void setVideoRecordingSound(ShutterSound param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setVideoSize(VideoSize param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void setWhiteBalance(WhiteBalance param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public final void setZoom(int var1) {
        Camera.Parameters var2 = this.mCamera.getParameters();
        if (var2 == null) {
            CameraLogger.e(TAG, "setZoom: params is null.");
        } else {
            var2.setZoom(var1);
        }
    }

    @DexIgnore
    public boolean startAutoFocus(AutoFocusListener var1, boolean var2, boolean var3, boolean var4) {
        if (!this.mIsPreviewing) {
            return false;
        } else {
            try {
                this.mAutoFocus.startAutoFocus(var1, var2, var3, var4);
                if (Configurations.isLogForOperatorsEnabled()) {
                    CameraLogger.dForOperators("AutoFocus started");
                }

                return true;
            } catch (Exception var5) {
                CameraLogger.e(TAG, "startAutoFocus failed.", var5);
                return false;
            }
        }
    }

    @DexIgnore
    public int startBurstShot(BurstShotCallback var1, StorageFullDetector var2, FilePathGenerator var3, MediaProviderUpdator var4) {
        if (this.mIsPreviewing && !this.mIsBurstShooting) {
            this.mCameraExtension.setBurstShotCallback(var1);
            this.mCameraExtension.setBurstStorageFullDetector(var2);
            int var5 = this.mCameraExtension.startBurstShot(var3, var4);
            this.mIsBurstShooting = true;
            (new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId)).put(new BurstShooting(com.sonyericsson.cameracommon.status.eachcamera.BurstShooting.Value.ON)).publish();
            return var5;
        } else {
            return -1;
        }
    }

    @DexIgnore
    public void startFaceDetection() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "startFaceDetection: mCamera is null.");
        } else if (this.mIsPreviewing && !this.mIsFaceDetectionRunning) {
            this.mCamera.startFaceDetection();
            this.mIsFaceDetectionRunning = true;
            EachCameraStatusPublisher var2 = new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId);
            com.sonyericsson.cameracommon.status.eachcamera.FaceIdentification.Value var1;
            if (FaceIdentify.ON.getValue().equals(this.mCameraActivity.getParameterManager().getParameters().getFaceIdentify().getValue())) {
                var1 = com.sonyericsson.cameracommon.status.eachcamera.FaceIdentification.Value.ON;
            } else {
                var1 = com.sonyericsson.cameracommon.status.eachcamera.FaceIdentification.Value.OFF;
            }

            var2.put(new FaceIdentification(var1)).put(new FaceDetection(com.sonyericsson.cameracommon.status.eachcamera.FaceDetection.Value.ON)).publish();
            return;
        }

    }

    @DexIgnore
    public void startObjectTracking(Rect var1, ObjectTrackingCallback var2) {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "startObjectTracking: mCamera is null.");
        } else if (((Integer) this.mCachedCapabilityList.MAX_NUM_FOCUS_AREA.get()).intValue() >= 1 && this.mCameraExtension != null && this.mIsPreviewing) {
            this.mCameraExtension.setObjectTrackingCallback(var2, 75, 100);
            this.mCameraExtension.startObjectTracking();
            this.mCameraExtension.selectObject(var1.centerX(), var1.centerY());
            this.mIsObjectTrackingRunning = true;
            (new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId)).put(new ObjectTracking(com.sonyericsson.cameracommon.status.eachcamera.ObjectTracking.Value.ON)).publish();
            return;
        }

    }

    @DexIgnore
    public void startOpenCameraDeviceTask(int var1) {
        this.clearCloseDeviceTask();
        this.setOpenTaskTargetCameraId(-1);
        this.mOpenDeviceExecutorService = Executors.newSingleThreadExecutor();
        this.mIsCancelOpenCameraRequested = false;
        //this.mOpenDeviceFuture = this.mOpenDeviceExecutorService.submit(new OpenCameraDeviceTask(this, var1));
    }

    @DexIgnore
    public void startPreview() throws CameraDeviceException {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void startPreview(SurfaceHolder var1) {
        try {
            this.setPreviewDisplay(var1);
            this.startPreview();
        } catch (IOException var2) {
            Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, -256, this.mCamera);
        } catch (CameraDeviceException var3) {
            Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, -255, this.mCamera);
        }
    }

    @DexIgnore
    public void startSceneRecognition() {
        if (this.mCameraExtension != null && this.mIsPreviewing && !this.mIsSceneRecognitionRunning) {
            this.startFaceDetection();
            this.mCameraExtension.startSceneRecognition(this.mSceneRecognitionCallback);
            this.mIsSceneRecognitionRunning = true;
            (new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId)).put(new SceneRecognition(com.sonyericsson.cameracommon.status.eachcamera.SceneRecognition.Value.ON)).publish();
        }
    }

    @DexIgnore
    public void startSetupCameraDeviceTask(com.sonyericsson.android.camera.parameter.Parameters var1) {
        this.clearCloseDeviceTask();
        if (this.mOpenDeviceExecutorService == null) {
            this.mOpenDeviceExecutorService = Executors.newSingleThreadExecutor();
        }

        SetupCameraDeviceTask var2 = new SetupCameraDeviceTask(this, var1);
        this.mSetupDeviceFuture = this.mOpenDeviceExecutorService.submit((Callable) var2);
    }

    @DexIgnore
    public final void startSmoothZoom(int var1) {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "startSmoothZoom: mCamera is null.");
        } else if (this.isPreviewing()) {
            this.mCamera.startSmoothZoom(var1);
            return;
        }

    }

    @DexIgnore
    public void startSmoothZoom(int var1, OnZoomChangeListener var2) {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "startSmoothZoom: mCamera is null.");
        } else if (this.isPreviewing()) {
            this.mCamera.setZoomChangeListener(var2);
            this.mCamera.startSmoothZoom(var1);
            return;
        }

    }

    @DexIgnore
    public void startVideoMetadata() {
        if (HardwareCapability.getInstance().isVideoMetaDataSupported(this.mCameraId) && this.mCameraExtension != null) {
            this.mCameraExtension.startVideoMetadata();
            (new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId)).put(new Metadata(com.sonyericsson.cameracommon.status.eachcamera.Metadata.Value.ON)).publish();
        }

    }

    @DexIgnore
    public final void stopAutoFocus() {
        if (this.mAutoFocus != null) {
            this.mAutoFocus.stopAutoFocus();
        }

    }

    @DexIgnore
    public int stopBurstShot(int var1) {
        if (!this.mIsBurstShooting) {
            return -1;
        } else {
            this.mIsBurstShooting = false;
            this.mCameraExtension.stopBurstShot();
            (new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId)).put(new BurstShooting(com.sonyericsson.cameracommon.status.eachcamera.BurstShooting.Value.OFF)).publish();
            return var1;
        }
    }

    @DexIgnore
    public void stopFaceDetection() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "startFaceDetection: mCamera is null.");
        } else if (this.mIsFaceDetectionRunning) {
            this.mIsFaceDetectionRunning = false;
            this.mCamera.stopFaceDetection();
            (new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId)).put(new FaceIdentification(com.sonyericsson.cameracommon.status.eachcamera.FaceIdentification.Value.OFF)).put(new FaceDetection(com.sonyericsson.cameracommon.status.eachcamera.FaceDetection.Value.OFF)).publish();
            return;
        }

    }

    @DexIgnore
    public void stopObjectTracking(boolean param1) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void stopObjectTrackingCallback() {
        if (this.mCameraExtension != null) {
            this.mCameraExtension.setObjectTrackingCallback((ObjectTrackingCallback) null, 0, 0);
        }

    }

    @DexIgnore
    public void stopPreview() {
        synchronized (this) {
        }

        try {
            if (this.mCamera == null) {
                CameraLogger.w(TAG, "stopPreview: mCamera is null.");
                this.mIsPreviewing = false;
            } else if (this.mIsPreviewing) {
                this.mIsPreviewing = false;
                if (CameraLogger.isUserdebugOrEngBuild) {
                    CameraLogger.p(TAG, "Camera.stopPreview in");
                }

                this.mCamera.stopPreview();
                if (CameraLogger.isUserdebugOrEngBuild) {
                    CameraLogger.p(TAG, "Camera.stopPreview out");
                }
            }
        } finally {
            ;
        }

    }

    @DexIgnore
    public void stopSceneRecognition() {
        if (this.mCameraExtension != null && this.mIsSceneRecognitionRunning) {
            this.mIsSceneRecognitionRunning = false;
            this.mCameraExtension.stopSceneRecognition();
            (new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId)).put(new SceneRecognition(com.sonyericsson.cameracommon.status.eachcamera.SceneRecognition.Value.OFF)).publish();
        }
    }

    @DexIgnore
    public final void stopSmoothZoom() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "stopSmoothZoom: mCamera is null.");
        } else {
            this.mCamera.stopSmoothZoom();
        }
    }

    @DexIgnore
    public void stopVideoMetadata() {
        if (HardwareCapability.getInstance().isVideoMetaDataSupported(this.mCameraId) && this.mCameraExtension != null) {
            this.mCameraExtension.stopVideoMetadata();
            (new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId)).put(new Metadata(com.sonyericsson.cameracommon.status.eachcamera.Metadata.Value.OFF)).publish();
        }

    }

    @DexIgnore
    public void surfaceChanged(SurfaceHolder var1, int var2, int var3, int var4) {
        this.setSurfaceHolder(var1);
        CameraSurfaceHolder var5 = new CameraSurfaceHolder(var1, var3, var4);
        Executor.sendEvent(ControllerEvent.EV_SURFACE_CHANGED, 0, var5);
    }

    @DexIgnore
    public void surfaceCreated(SurfaceHolder var1) {
        Executor.sendEvent(ControllerEvent.EV_SURFACE_CREATED, 0, var1);
    }

    @DexIgnore
    public void surfaceDestroyed(SurfaceHolder var1) {
        this.setSurfaceHolder((SurfaceHolder) null);
        Executor.sendEmptyEvent(ControllerEvent.EV_SURFACE_DESTROYED);
    }

    @DexIgnore
    public void suspend(boolean param1, boolean param2) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public final void takePicture(ShutterCallback param1, PictureCallback param2) {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public final void turnOffLight() {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public final void turnOnLight() {
        // $FF: Couldn't be decompiled
    }

    @DexIgnore
    public void unlockCamera() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "unlockCamera: mCamera is null.");
        } else {
            this.mCamera.unlock();
        }
    }

    @DexIgnore
    public void updatePreviewSize(Rect var1) {
        this.mPreviewSize = new Rect(var1);
        PositionConverter.getInstance().setPreviewSize(var1.width(), var1.height());
    }

    @DexIgnore
    private abstract class AutoFocus {
        @DexIgnore
        private AutoFocus(CameraDevice paramCameraDevice) {
        }

        @DexIgnore
        public abstract void startAutoFocus(AutoFocusListener paramAutoFocusListener, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
                throws Exception;

        @DexIgnore
        public abstract void stopAutoFocus();
    }

    @DexIgnore
    private class LedLight {
    }

    @DexIgnore
    private class CloseDeviceTask implements Callable, Runnable {
        @DexIgnore
        public CloseDeviceTask(CameraDevice cameraDevice, int i) {
        }

        @Override
        @DexIgnore
        public Object call() throws Exception {
            return null;
        }

        @Override
        @DexIgnore
        public void run() {

        }
    }

    @DexIgnore
    private class AutoFocusExtension {
        @DexIgnore
        public AutoFocusExtension(CameraDevice cameraDevice, int i) {
        }
    }

    @DexIgnore
    private class AutoFocusNoExtension {
        @DexIgnore
        public AutoFocusNoExtension(CameraDevice cameraDevice, int i) {
        }
    }

    @DexIgnore
    private class LedLightSupported {
        @DexIgnore
        public LedLightSupported(CameraDevice cameraDevice, int i) {
        }
    }

    @DexIgnore
    private class LedLightNotSupported {
        @DexIgnore
        public LedLightNotSupported(CameraDevice cameraDevice, int i) {
        }
    }

    @DexEdit(defaultAction = DexAction.IGNORE)
    private class SetupCameraDeviceTask
            implements Runnable {

        @DexIgnore
        private Handler mHandler;
        @DexIgnore
        private com.sonyericsson.android.camera.parameter.Parameters mParams;

        @DexIgnore
        public SetupCameraDeviceTask(com.sonyericsson.android.camera.parameter.Parameters parameters) {
            this.mHandler = new Handler();
            this.mParams = parameters;
        }

        @DexIgnore
        public SetupCameraDeviceTask(CameraDevice cameraDevice, com.sonyericsson.android.camera.parameter.Parameters var1) {

        }

        @DexIgnore
        public void run() {

        }

        @DexEdit(target = "applyAllParameters")
        private void source_applyAllParameters() {
            CameraDevice.this.setDisplayOrientation(CameraDevice.this.mCameraId);
            CameraDevice.this.setJpegEncodingQuality(2);
            CameraDevice.this.setCapturingMode(this.mParams.capturingMode);
            CameraDevice.this.setEv(this.mParams.getEv());
            CameraDevice.this.setFocusMode(this.mParams.getFocusMode());
            CameraDevice.this.setVideoSize(this.mParams.getVideoSize());
            if (CameraDevice.this.mIsVideo) {
                CameraDevice.this.setPreviewSizeAndFpsRangeForVideo(this.mParams.getVideoSize());
                CameraDevice.this.setScene(this.mParams.getScene());
                CameraDevice.this.setSmileCapture(SmileCapture.OFF);
                CameraDevice.this.setSteadyShot(this.mParams.getVideoStabilizer());
            } else {
                Hdr hdr = this.mParams.getHdr();
                CameraDevice.this.setHdr(hdr);
                CameraDevice.this.setResolution(this.mParams.getUpdatedResolution(hdr));
                CameraDevice.this.setIso(this.mParams.getIso());
                if (CameraDevice.this.mCameraId == 1) {
                    CameraDevice.this.setSoftSkin(this.mParams.getSoftSkin());
                } else {
                    CameraDevice.this.setScene(this.mParams.getScene());
                }
                CameraDevice.this.setSmileCapture(this.mParams.getSmileCapture());
                CameraDevice.this.setStabilizer(this.mParams.getStabilizer());
            }
            CameraDevice.this.setMetering(this.mParams.getMetering());
            CameraDevice.this.setShutterSound(this.mParams.getShutterSound());
            CameraDevice.this.setVideoHdr(this.mParams.getVideoHdr());
            CameraDevice.this.setWhiteBalance(this.mParams.getWhiteBalance());
            CameraDevice.this.commit();
        }

        @DexAdd
        private void applyAllParameters() {
            //TODO replace all the function, maybe disassembled code is incomplete
            CameraDevice.this.setExposureMode(this.mParams.getExposureMode());
            CameraDevice.this.setShutterSpeed(this.mParams.getShutterSpeed());
            source_applyAllParameters();
        }


    }

    @DexIgnore
    private class OpenCameraDeviceTask implements Callable, Runnable {

        @DexIgnore
        public OpenCameraDeviceTask(CameraDevice cameraDevice, int var1) {
        }

        @DexIgnore
        @Override
        public Object call() throws Exception {
            return null;
        }

        @DexIgnore
        @Override
        public void run() {

        }
    }
}
