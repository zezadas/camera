/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$AutoFocusCallback
 *  com.sonyericsson.cameraextension.CameraExtension$AutoFocusResult
 *  com.sonyericsson.cameraextension.CameraExtension$BurstShotCallback
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionCallback
 *  com.sonyericsson.cameraextension.CameraExtension$FilePathGenerator
 *  com.sonyericsson.cameraextension.CameraExtension$MediaProviderUpdator
 *  com.sonyericsson.cameraextension.CameraExtension$ObjectTrackingCallback
 *  com.sonyericsson.cameraextension.CameraExtension$SceneRecognitionCallback
 *  com.sonyericsson.cameraextension.CameraExtension$SceneRecognitionResult
 *  com.sonyericsson.cameraextension.CameraExtension$StorageFullDetector
 */
package com.sonyericsson.android.camera.device;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Build;
import android.os.Handler;
import android.util.SparseArray;
import android.view.SurfaceHolder;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.CameraSize;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
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
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.cameracommon.device.CameraExtensionVersion;
import com.sonyericsson.cameracommon.device.CommonPlatformDependencyResolver;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.status.CameraStatusPublisher;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.GlobalCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.GlobalCameraStatusValue;
import com.sonyericsson.cameracommon.status.eachcamera.BurstShooting;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus;
import com.sonyericsson.cameracommon.status.eachcamera.FaceDetection;
import com.sonyericsson.cameracommon.status.eachcamera.FaceIdentification;
import com.sonyericsson.cameracommon.status.eachcamera.Metadata;
import com.sonyericsson.cameracommon.status.eachcamera.ObjectTracking;
import com.sonyericsson.cameracommon.status.eachcamera.PhotoLight;
import com.sonyericsson.cameracommon.status.eachcamera.SceneRecognition;
import com.sonyericsson.cameracommon.status.eachcamera.VideoNoiseReduction;
import com.sonyericsson.cameracommon.status.eachcamera.VideoStabilizerStatus;
import com.sonyericsson.cameracommon.status.global.BuiltInCameraIds;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.utility.ProductConfig;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.testevent.TestEventSender;
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

/*
 * Failed to analyse overrides
 */
public class CameraDevice
implements SurfaceHolder.Callback,
CameraExtension.SceneRecognitionCallback,
Camera.ErrorCallback {
    private static final int CAMERA_IS_NOT_OPENED = -1;
    private static final int CAMERA_OPEN_FAILED = -2;
    private static final String TAG = CameraDevice.class.getSimpleName();
    private static Camera.Parameters sCachedParameters = null;
    private static volatile SparseArray<Camera.CameraInfo> sCameraInfoArray;
    private AutoFocus mAutoFocus;
    private AutoFocusListener mAutoFocusListener;
    private ShutterSound mBurstShutterSound;
    private CapabilityList mCachedCapabilityList;
    private Camera mCamera;
    private final CameraActivity mCameraActivity;
    private CameraExtension mCameraExtension;
    private int mCameraId;
    private ExecutorService mCloseDeviceExecutorService;
    private Future<?> mCloseDeviceFuture;
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
    private Future<Camera> mOpenDeviceFuture;
    private int mOpenTaskTargetCameraId = -1;
    private Rect mPictureSize = new Rect();
    private PreviewFrameRetriever mPreviewFrameRetriever = new PreviewFrameRetriever();
    private Rect mPreviewSize = new Rect();
    private CameraExtension.SceneRecognitionCallback mSceneRecognitionCallback;
    private Future<?> mSetupDeviceFuture;
    private SurfaceHolder mSurfaceHolder;
    private VideoDevice mVideoDevice = null;
    private int mVideoFps = 0;

    static {
        if (HardwareCapability.isCameraSupported()) {
            sCameraInfoArray = new SparseArray();
            CameraDevice.setCameraInfo(sCameraInfoArray, 0);
            if (HardwareCapability.isFrontCameraSupported()) {
                CameraDevice.setCameraInfo(sCameraInfoArray, 1);
            }
        }
    }

    public CameraDevice(CameraActivity cameraActivity) {
        this.mCameraActivity = cameraActivity;
    }

    static /* synthetic */ SurfaceHolder access$1700(CameraDevice cameraDevice) {
        return cameraDevice.mSurfaceHolder;
    }

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

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void close(boolean bl) {
        if (bl) {
            this.clearResumeDeviceTask();
        }
        if (this.mCamera != null) {
            this.mPreviewFrameRetriever.dettachCamera();
        }
        new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId).putDefaultAll().publish();
        new GlobalCameraStatusPublisher(this.mCameraActivity).putDefaultAll().publish();
        synchronized (this) {
            if (this.mCamera == null) {
                return;
            }
            this.finishPreviewing();
            this.mPreviewFrameRetriever.dettachCamera();
            this.clearZoomChangeListener();
            this.mCamera.setErrorCallback(null);
            if (this.mCameraExtension != null) {
                if (this.mCameraId == 0) {
                    this.mCameraExtension.waitForCurrentSavingTaskStackCleared(4000);
                    this.mCameraExtension.setBurstShotCallback(null);
                    this.mCameraExtension.setBurstStorageFullDetector(null);
                }
                this.mCameraExtension.setFaceDetectionCallback(null);
                this.mCameraExtension.release();
                this.mCameraExtension = null;
                this.mBurstShutterSound = null;
                this.mIsAlreadySetBurstShutterSound = false;
            }
            if (CameraLogger.isUserdebugOrEngBuild) {
                CameraLogger.p(TAG, "Camera.release in");
            }
            this.mCamera.release();
            if (CameraLogger.isUserdebugOrEngBuild) {
                CameraLogger.p(TAG, "Camera.release out");
            }
            this.mCamera = null;
            this.setSurfaceHolder(null);
            this.mIsCapturing = false;
            return;
        }
    }

    private void finishVideoNrSetting() {
        if (HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 8)) {
            this.setVideoNr(false);
        }
    }

    public static Camera.CameraInfo getCameraInfo(int n) {
        if (sCameraInfoArray == null) {
            return null;
        }
        return sCameraInfoArray.get(n);
    }

    private int getOpenTaskTargetCameraId() {
        synchronized (this) {
            int n = this.mOpenTaskTargetCameraId;
            return n;
        }
    }

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

    private boolean isCapturing() {
        synchronized (this) {
            boolean bl = this.mIsCapturing;
            return bl;
        }
    }

    private boolean isCloseDeviceTaskWorking() {
        if (this.mCloseDeviceFuture != null) {
            return true;
        }
        return false;
    }

    private boolean isFailedOpenCameraDeviceTask() {
        if (this.getOpenTaskTargetCameraId() == -2) {
            return true;
        }
        return false;
    }

    private boolean isFront() {
        if (this.mCameraId == 1) {
            return true;
        }
        return false;
    }

    private boolean isRequestCameraOpened(int n) {
        int n2 = this.getOpenTaskTargetCameraId();
        if (n2 == -1) {
            return false;
        }
        if (n2 == n) {
            return true;
        }
        this.close(false);
        return false;
    }

    public static boolean isSceneRecognitionRequired(CapturingMode capturingMode) {
        if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.SUPERIOR_FRONT) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isSupported(String string, List<String> list) {
        if (list == null || list.indexOf(string) < 0) {
            return false;
        }
        return true;
    }

    private void joinCloseDeviceTask() {
        if (this.mCloseDeviceFuture != null) {
            try {
                this.mCloseDeviceFuture.get(4000, TimeUnit.MILLISECONDS);
                return;
            }
            catch (InterruptedException var1_1) {
                CameraLogger.e(TAG, "Camera closing has been interrupted.", var1_1);
                return;
            }
            catch (ExecutionException var1_2) {
                CameraLogger.e(TAG, "Camera closing failed.", var1_2);
                return;
            }
            catch (TimeoutException var1_3) {
                CameraLogger.e(TAG, "Camera closing timeout.", var1_3);
                return;
            }
        }
        CameraLogger.e(TAG, "joinCloseDeviceTask: Close camera device task is not submitted.");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean openCameraDeviceWithRetry(int n) {
        synchronized (this) {
            block8 : for (int i = 0; i < 5; ++i) {
                block11 : {
                    if (!this.mIsCancelOpenCameraRequested) break block11;
                    do {
                        return this.isAvailable();
                        break;
                    } while (true);
                }
                try {
                    this.open(n);
                    return this.isAvailable();
                }
                catch (CameraDeviceException var5_4) {
                    CameraLogger.e(TAG, "Open camera device failed.", var5_4);
                    for (int j = 0; j < 5; ++j) {
                        try {
                            if (this.mIsCancelOpenCameraRequested) continue block8;
                            Thread.sleep(100);
                        }
                        catch (InterruptedException var5_5) {
                            return this.isAvailable();
                        }
                        catch (Throwable var5_6) {
                            throw var5_6;
                        }
                        continue;
                    }
                }
            }
            return this.isAvailable();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void prepareVideoNrSetting() {
        boolean bl = HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 8);
        boolean bl2 = HardwareCapability.getInstance().isVideoNrSupported(this.getCameraId());
        boolean bl3 = this.mVideoFps != VideoSize.FULL_HD_60FPS.getVideoFrameRate();
        if (!bl) return;
        if (bl2) {
            if (!bl3) {
                this.setVideoNr(false);
                return;
            }
            this.setVideoNr(true);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setCachedParameters(Camera.Parameters object) {
        int n = -1;
        if (sCachedParameters != null) {
            n = sCachedParameters.getZoom();
        }
        sCachedParameters = object;
        if (object == null) return;
        {
            if (n >= 0 && (object.getZoom() < 0 || object.getZoom() > object.getMaxZoom())) {
                sCachedParameters.setZoom(n);
            }
            if ((object = object.getPreviewSize()) == null) {
                sCachedParameters.setPreviewSize(this.mPreviewSize.width(), this.mPreviewSize.height());
                return;
            } else {
                if (object.width >= 0 && object.height >= 0) return;
                {
                    sCachedParameters.setPreviewSize(this.mPreviewSize.width(), this.mPreviewSize.height());
                    return;
                }
            }
        }
    }

    private static void setCameraInfo(SparseArray<Camera.CameraInfo> sparseArray, int n) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(n, cameraInfo);
        StaticConfigurationUtil.setCameraInfo(cameraInfo);
        sparseArray.put(n, cameraInfo);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void setDcModeParameters(Camera.Parameters parameters) {
        synchronized (this) {
            CommonPlatformDependencyResolver.DcCategory.NORMAL.writeTo(parameters);
            return;
        }
    }

    private void setOpenTaskTargetCameraId(int n) {
        synchronized (this) {
            this.mOpenTaskTargetCameraId = n;
            return;
        }
    }

    private void setVideoSize(Rect rect) {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "setVideoSize: params is null.");
            return;
        }
        parameters.set(this.getStringKey(ParameterKey.VIDEO_SIZE, true), "" + rect.width() + "x" + rect.height());
    }

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

    public void clearZoomChangeListener() {
        if (this.mCamera == null) {
            return;
        }
        this.mCamera.setZoomChangeListener(null);
    }

    public void close() {
        if (!this.isRecorderWorking()) {
            this.close(true);
            return;
        }
        this.mCloseDeviceExecutorService = Executors.newSingleThreadExecutor();
        this.mCloseDeviceFuture = this.mCloseDeviceExecutorService.submit(new CloseDeviceTask());
    }

    public void commit() {
        if (this.mCommitParameters) {
            this.commitParameters();
        }
    }

    /*
     * Exception decompiling
     */
    public void commitParameters() {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.ClassCastException: org.benf.cfr.reader.bytecode.analysis.parse.statement.Nop cannot be cast to org.benf.cfr.reader.bytecode.analysis.parse.statement.TryStatement
        // org.benf.cfr.reader.bytecode.analysis.parse.utils.finalhelp.FinalAnalyzer.identifyFinally(FinalAnalyzer.java:157)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.FinallyRewriter.identifyFinally(FinallyRewriter.java:40)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:464)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    public void dumpParameters() {
        if (sCachedParameters != null) {
            // empty if block
        }
    }

    public void finishBurstShot(Parameters parameters) {
        this.setResolution(parameters.getUpdatedResolution(parameters.getHdr()));
        this.setBurstShot(BurstShot.OFF);
        this.setJpegEncodingQuality(2);
        this.commit();
        this.startPreview(this.mSurfaceHolder);
    }

    public void finishPreviewing() {
        this.setOneShotPreviewCallback(null);
        this.stopSceneRecognition();
        this.stopFaceDetection();
        this.stopObjectTracking(true);
        this.stopBurstShot(-1);
        if (!this.isRecorderWorking()) {
            this.stopPreview();
        }
    }

    public void finishRec(Resolution resolution) {
        this.setVideoMode(this.mIsVideo);
        if (CameraSize.isAspectRatioDifferent(this.getPreviewRect(), this.getPhotoPreviewSize(resolution))) {
            this.setResolution(resolution);
        }
        this.setFpsRange(CameraDeviceUtil.computePreviewFpsRange(60, this.mCachedCapabilityList.FPS_RANGE.get()));
        this.commit();
        this.startPreview(this.mSurfaceHolder);
    }

    public AutoFocus getAutoFocus(CapabilityList capabilityList) {
        if (capabilityList.EXTENSION_VERSION.get().length() > 0) {
            return new AutoFocusExtension();
        }
        return new AutoFocusNoExtension();
    }

    public final Camera getCamera() {
        return this.mCamera;
    }

    public int getCameraId() {
        return this.mCameraId;
    }

    public int getDisplayOrientation() {
        return this.mDisplayOrientation;
    }

    public String getImageStabilizer(Camera.Parameters object) {
        String string;
        object = string = object.get(this.getStringKey(ParameterKey.STABILIZER, false));
        if (string == null) {
            object = "";
        }
        return object;
    }

    public LedLight getLedLight(CapabilityList list) {
        list = list.FLASH.get();
        if (CameraDevice.isSupported("torch", list) && CameraDevice.isSupported("off", list)) {
            return new LedLightSupported();
        }
        return new LedLightNotSupported();
    }

    public final int getMaxShutterSpeed() {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "getMaxShutterSpeed: params is null.");
            return -1;
        }
        return Integer.valueOf(parameters.get("sony-max-shutter-speed"));
    }

    /*
     * Enabled aggressive block sorting
     */
    public final int getMaxSrZoom() {
        Object object = this.getParameters();
        if (object == null) {
            CameraLogger.e(TAG, "getMaxSrZoom: params is null.");
            return 0;
        } else {
            if ((object = object.get("sony-max-sr-zoom")) == null) return 0;
            return Integer.parseInt((String)object);
        }
    }

    public final int getMaxZoom() {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "getMaxZoom: params is null.");
            return 0;
        }
        return parameters.getMaxZoom();
    }

    public final int getMinShutterSpeed() {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "getMinShutterSpeed: params is null.");
            return -1;
        }
        return Integer.valueOf(parameters.get("sony-min-shutter-speed"));
    }

    public Camera.Parameters getParameters() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "Camera is not initialized.");
            return null;
        }
        if (sCachedParameters == null) {
            CameraLogger.w(TAG, "sCachedParameters is null. re-get parameters.");
            this.setCachedParameters(this.mCamera.getParameters());
        }
        if (sCachedParameters == null) {
            CameraLogger.w(TAG, "camera parameters is null. getNumberOfCameras() = " + HardwareCapability.getNumberOfCameras());
        }
        return sCachedParameters;
    }

    public Rect getPhotoPreviewSize(Resolution resolution) {
        float f = (float)resolution.getPictureRect().width() / (float)resolution.getPictureRect().height();
        return CameraSize.getOptimalPreviewRect(LayoutDependencyResolver.getSurfaceRect(this.mCameraActivity, f), this.mCachedCapabilityList.PREVIEW_SIZE_FOR_VIDEO.get(), this.mCachedCapabilityList.PREVIEW_SIZE.get());
    }

    public Rect getPictureRect() {
        return new Rect(this.mPictureSize);
    }

    public final int getPreviewFormat() {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "Camera is not opened. parameters is null.");
            return -1;
        }
        return parameters.getPreviewFormat();
    }

    public PreviewFrameRetriever getPreviewFrameRetriever() {
        return this.mPreviewFrameRetriever;
    }

    public Rect getPreviewRect() {
        return new Rect(this.mPreviewSize);
    }

    public final int getShutterSpeed() {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "getShutterSpeed: params is null.");
            return -1;
        }
        return Integer.valueOf(parameters.get("sony-shutter-speed"));
    }

    public String getStringKey(ParameterKey parameterKey, boolean bl) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[parameterKey.ordinal()]) {
            default: {
                return "";
            }
            case 1: {
                return "sony-is";
            }
            case 2: {
                if (bl) {
                    return "sony-vs";
                }
                return "sony-is";
            }
            case 3: 
        }
        return "video-size";
    }

    public final List<Integer> getSupportedPreviewFormats() {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "getSupportedPreviewFormats: params is null.");
            return new ArrayList<Integer>();
        }
        return parameters.getSupportedPreviewFormats();
    }

    public SurfaceHolder getSurfaceHolder() {
        return this.mSurfaceHolder;
    }

    public Rect getVideoPreviewSize(VideoSize videoSize) {
        return CameraSize.getVideoPreviewRect(videoSize.getVideoRect(), this.mCachedCapabilityList.PREVIEW_SIZE_FOR_VIDEO.get(), this.mCachedCapabilityList.PREVIEW_SIZE.get());
    }

    public final int getZoom() {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "getZoom: params is null.");
            return 0;
        }
        return parameters.getZoom();
    }

    /*
     * Enabled aggressive block sorting
     */
    public final boolean isAvailable() {
        if (this.mCamera == null || this.mCameraExtension == null) {
            return false;
        }
        return true;
    }

    public boolean isObjectTrackingRunning() {
        return this.mIsObjectTrackingRunning;
    }

    public boolean isOpenCameraDeviceTaskRunning() {
        if (this.mOpenDeviceFuture == null || this.mOpenDeviceFuture.isDone()) {
            return false;
        }
        return true;
    }

    public final boolean isPreviewing() {
        synchronized (this) {
            boolean bl = this.mIsPreviewing;
            return bl;
        }
    }

    public boolean isRecorderWorking() {
        if (this.mVideoDevice == null) {
            return false;
        }
        return this.mVideoDevice.isRecorderWorking();
    }

    public boolean isSceneRecognitionRunning() {
        return this.mIsSceneRecognitionRunning;
    }

    public boolean isSetupCameraDeviceTaskRunning() {
        if (this.mSetupDeviceFuture == null || this.mSetupDeviceFuture.isDone()) {
            return false;
        }
        return true;
    }

    public boolean isStartedOpenCameraDeviceTask() {
        if (this.mOpenDeviceFuture != null) {
            return true;
        }
        return false;
    }

    public boolean isStartedSetupCameraDeviceTask() {
        if (this.mSetupDeviceFuture != null) {
            return true;
        }
        return false;
    }

    public boolean isVideoHdrOn() {
        boolean bl = false;
        Object object = this.getParameters();
        if (object == null) {
            CameraLogger.e(TAG, "setVideoHdr: params is null.");
            return false;
        }
        if ((object = object.get("sony-video-hdr")) != null) {
            bl = object.equals(VideoHdr.ON.getValue());
        }
        return bl;
    }

    /*
     * Exception decompiling
     */
    public void joinOpenCameraDeviceTask(boolean var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [1[TRYBLOCK]], but top level block is 6[CATCHBLOCK]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:392)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:444)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void joinSetupCameraDeviceTask(boolean var1_1) {
        if (this.mSetupDeviceFuture == null) ** GOTO lbl32
        if (var1_1) {
            this.mSetupDeviceFuture.get();
lbl5: // 2 sources:
            do {
                return;
                break;
            } while (true);
        }
        try {
            this.mSetupDeviceFuture.get(4000, TimeUnit.MILLISECONDS);
            return;
        }
        catch (InterruptedException var2_2) {
            CameraLogger.e(CameraDevice.TAG, "SetupCameraDeviceTask has been interrupted.", var2_2);
            return;
        }
        catch (ExecutionException var2_3) {
            CameraLogger.e(CameraDevice.TAG, "SetupCameraDeviceTask failed.", var2_3);
            return;
        }
        catch (TimeoutException var2_4) {
            CameraLogger.e(CameraDevice.TAG, "SetupCameraDeviceTask is time out.", var2_4);
            return;
            {
                catch (Throwable var2_5) {
                    throw var2_5;
                }
            }
        }
        finally {
            if (false) ** GOTO lbl5
            this.mSetupDeviceFuture.cancel(true);
            this.mSetupDeviceFuture = null;
            if (this.mOpenDeviceExecutorService != null) ** break;
            return;
            this.mOpenDeviceExecutorService.shutdown();
            this.mOpenDeviceExecutorService = null;
        }
lbl32: // 1 sources:
        CameraLogger.e(CameraDevice.TAG, "joinSetupCameraDeviceTask: setup camera device task is not submitted.");
    }

    public void lockCamera() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "lockCamera: mCamera is null.");
            return;
        }
        this.mCamera.lock();
    }

    public boolean needStartPreview() {
        return this.mNeedStartPreview;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void onError(int n, Camera camera) {
        synchronized (this) {
            if (this.mCamera != null) {
                this.mCamera.release();
                this.mCamera = null;
            }
        }
        Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, n, camera);
    }

    public void onSceneModeChanged(CameraExtension.SceneRecognitionResult sceneRecognitionResult) {
        if (this.mSceneRecognitionCallback != null) {
            this.mSceneRecognitionCallback.onSceneModeChanged(sceneRecognitionResult);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public final void open(int var1_1) throws CameraDeviceException {
        // MONITORENTER : this
        this.mCachedCapabilityList = HardwareCapability.getCapability(var1_1);
        this.setCachedParameters(null);
        var2_2 = this.mCamera;
        if (var2_2 == null) {
            this.mCamera = Camera.open(var1_1);
            this.mCameraId = var1_1;
        }
        this.mCameraExtension = CameraExtension.open((Camera)this.mCamera, (int)var1_1);
        if (!this.isAvailable()) {
            throw new CameraDeviceException("Open camera failed: mCamera: " + this.mCamera + ", mCameraExtension: " + (Object)this.mCameraExtension);
        } else {
            ** GOTO lbl14
        }
        catch (RuntimeException var2_3) {
            throw new CameraDeviceException("Open camera failed.", var2_3);
        }
lbl14: // 2 sources:
        this.setCachedParameters(this.mCamera.getParameters());
        if (CameraDevice.sCachedParameters != null) {
            this.setDcModeParameters(CameraDevice.sCachedParameters);
        }
        this.mCamera.setErrorCallback((Camera.ErrorCallback)this);
        this.mAutoFocus = this.getAutoFocus(this.mCachedCapabilityList);
        this.mLedLight = this.getLedLight(this.mCachedCapabilityList);
        this.mIsFaceDetectionRunning = false;
        this.mIsSceneRecognitionRunning = false;
        this.mIsObjectTrackingRunning = false;
        // MONITORENTER : this
        this.mIsCapturing = false;
        // MONITOREXIT : this
        this.mPreviewFrameRetriever.attachCamera(this.mCamera);
        new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId).put(new DeviceStatus(DeviceStatus.Value.POWER_ON)).publish();
        new GlobalCameraStatusPublisher(this.mCameraActivity).put(new BuiltInCameraIds(new int[]{this.mCameraId})).publish();
        // MONITOREXIT : this
    }

    public void prepareBurstShot(Parameters parameters) {
        this.setBurstFrameRate();
        this.setResolution(BurstShot.getBurstResolution(parameters));
        this.setBurstShot(parameters.getBurstShot());
        this.setJpegEncodingQuality(1);
        this.commit();
        this.startPreview(this.mSurfaceHolder);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void prepareRec(VideoSize videoSize) {
        this.setVideoMode(true);
        if (CameraSize.isAspectRatioDifferent(this.getPreviewRect(), this.getVideoPreviewSize(videoSize))) {
            this.setPreviewSizeAndFpsRangeForVideo(videoSize);
        } else {
            this.setFpsRange(CameraDeviceUtil.computePreviewFpsRange(videoSize.getVideoFrameRate(), this.mCachedCapabilityList.FPS_RANGE.get()));
        }
        this.commit();
        this.startPreview(this.mSurfaceHolder);
    }

    public void reconnectCamera() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "reconnectCamera: mCamera is null.");
            return;
        }
        this.setCachedParameters(null);
        try {
            this.mCamera.reconnect();
            this.initParametersCache();
            return;
        }
        catch (IOException var1_1) {
            CameraLogger.e(TAG, "reconnect() failed.", var1_1);
            return;
        }
    }

    public final void release() {
        this.setSceneRecognitionCallback(null);
        this.setAutoFocusListener(null);
    }

    public void resetFocusAreaAndRect(FocusMode focusMode) {
        if (focusMode != null) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "resetFocusAreaAndRect: getParameters() fail. params is null");
                return;
            }
            parameters.set("sony-focus-area", focusMode.getFocusArea());
        }
        this.setFocusRect(new Rect());
    }

    public void resetZoom() {
        this.setZoom(0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void restoreSettingAfterRecording() {
        this.mVideoDevice = null;
        this.reconnectCamera();
        this.stopVideoMetadata();
        Parameters parameters = this.mCameraActivity.getParameterManager().getParameters();
        if (parameters != null) {
            this.setVideoRecordingSound(parameters.getShutterSound());
        } else {
            this.setVideoRecordingSound(ShutterSound.SOUND1);
        }
        this.commit();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void resume(Parameters parameters) {
        this.mCachedCapabilityList = HardwareCapability.getCapability(parameters.capturingMode.getCameraId());
        Rect rect = parameters.capturingMode.getType() == 2 || this.mCameraActivity.isOneShotVideo() ? this.getVideoPreviewSize(parameters.getVideoSize()) : this.getPhotoPreviewSize(parameters.getResolution());
        this.updatePreviewSize(rect);
        this.startSetupCameraDeviceTask(parameters);
    }

    public void setAutoFocusListener(AutoFocusListener autoFocusListener) {
        this.mAutoFocusListener = autoFocusListener;
    }

    public void setBurstFrameRate() {
        Camera.Parameters parameters;
        int n = this.mCameraActivity.getResources().getInteger(2131427331);
        int n2 = this.mCachedCapabilityList.MAX_BURST_SHOT_FRAME_RATE.get();
        int n3 = n;
        if (n2 < n) {
            n3 = n2;
        }
        if ((parameters = this.getParameters()) == null) {
            CameraLogger.e(TAG, "setBurstFrameRate: params is null.");
            return;
        }
        parameters.set("sony-burst-shot-frame-rate", n3);
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setBurstShot(BurstShot burstShot) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setBurstShot: params is null.");
                return;
            }
            parameters.set("sony-burst-shot", burstShot.getValue());
        }
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setBurstShutterSound(ShutterSound object) {
        if (this.mCameraExtension == null || this.mCameraId != 0 || this.mBurstShutterSound == object && this.mIsAlreadySetBurstShutterSound) {
            return;
        }
        this.mBurstShutterSound = object;
        this.mIsAlreadySetBurstShutterSound = true;
        object = ShutterToneGenerator.getSoundFilePath(ShutterToneGenerator.Type.SOUND_BURST_SHUTTER, (ShutterSound)object);
        this.mCameraExtension.setBurstShutterSoundFilePath((String)object);
    }

    public void setCapturingMode(CapturingMode capturingMode) {
        this.mIsVideo = false;
        if (capturingMode.getType() == 2 || this.mCameraActivity.isOneShotVideo()) {
            this.mIsVideo = true;
        }
        this.setVideoMode(this.mIsVideo);
        if (!this.mIsVideo) {
            this.setFpsRange(CameraDeviceUtil.computePreviewFpsRange(60, this.mCachedCapabilityList.FPS_RANGE.get()));
        }
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setDisplayOrientation(int n) {
        if (this.mCamera == null) {
            return;
        }
        CameraActivity cameraActivity = this.mCameraActivity;
        Camera.CameraInfo cameraInfo = sCameraInfoArray.get(n);
        n = 360 - ProductConfig.getMountAngle(cameraActivity);
        n = cameraInfo.facing == 1 ? (360 - (cameraInfo.orientation + n) % 360) % 360 : (cameraInfo.orientation - n + 360) % 360;
        try {
            this.mCamera.setDisplayOrientation(n);
            this.mDisplayOrientation = n;
            return;
        }
        catch (RuntimeException var2_3) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setEv(Ev ev) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                return;
            }
            parameters.setExposureCompensation(ev.getIntValue());
        }
        this.mCommitParameters = true;
    }

    public void setExifInfo(Integer n, Double d, Double d2, Double d3, Long l) {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            this.mCommitParameters = false;
            return;
        }
        boolean bl = false;
        if (n != null) {
            parameters.setRotation(n);
            bl = true;
        }
        parameters.removeGpsData();
        boolean bl2 = bl;
        if (d != null) {
            bl2 = bl;
            if (d2 != null) {
                parameters.setGpsLatitude(d);
                parameters.setGpsLongitude(d2);
                bl2 = bl | true;
            }
        }
        bl = bl2;
        if (d3 != null) {
            parameters.setGpsAltitude(d3);
            bl = bl2 | true;
        }
        bl2 = bl;
        if (l != null) {
            parameters.setGpsTimestamp(l);
            bl2 = bl | true;
        }
        this.mCommitParameters = bl2;
    }

    public final void setFaceDetectionCallback(CameraExtension.FaceDetectionCallback faceDetectionCallback) {
        if (this.mCameraExtension == null) {
            return;
        }
        this.mCameraExtension.setFaceDetectionCallback(faceDetectionCallback);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void setFlashMode(Flash enum_) {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "setFlashMode: params is null.");
            return;
        }
        parameters.setFlashMode(enum_.getValue());
        this.mCommitParameters = true;
        EachCameraStatusPublisher eachCameraStatusPublisher = new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId);
        enum_ = parameters.getFlashMode() != null && "torch".equals(parameters.getFlashMode()) ? PhotoLight.Value.ON : PhotoLight.Value.OFF;
        eachCameraStatusPublisher.put(new PhotoLight((PhotoLight.Value)enum_)).publish();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
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

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setFocusRect(Rect var1_1) {
        var5_2 = this.getParameters();
        if (var5_2 == null) {
            CameraLogger.e(CameraDevice.TAG, "setFocusRect: params is null.");
            return;
        }
        if (var5_2.getMaxNumFocusAreas() < 1) return;
        if (var1_1.width() == 0) ** GOTO lbl-1000
        var3_3 = var1_1;
        if (var1_1.height() == 0) lbl-1000: // 2 sources:
        {
            if (var5_2.get("sony-focus-area").equals("user")) {
                var1_1.set(-100, -100, 100, 100);
                var3_3 = var1_1;
            } else {
                var3_3 = new Rect();
            }
        }
        if (var3_3.isEmpty()) {
            var2_4 = 0;
        } else {
            var2_4 = 1000;
            var5_2.set("sony-focus-area", "user");
        }
        var1_1 = var4_5 = var5_2.getFocusAreas();
        if (var4_5 == null) {
            var4_5 = new Camera.Area(new Rect(), var2_4);
            var1_1 = new ArrayList<Camera.Area>();
            var1_1.add((Object)var4_5);
        }
        var1_1.get((int)0).rect = var3_3;
        var1_1.get((int)0).weight = var2_4;
        var5_2.setFocusAreas((List<Camera.Area>)var1_1);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setFpsRange(int[] arrn) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setFpsRange: params is null.");
                return;
            }
            if (arrn.length > 0) {
                parameters.setPreviewFpsRange(arrn[0], arrn[1]);
                parameters.setPreviewFrameRate(arrn[1] / 1000);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setHdr(Hdr hdr) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setHdr: params is null.");
                return;
            }
            if (hdr == Hdr.HDR_OFF && this.getImageStabilizer(parameters).equals(Stabilizer.ON.getValue())) {
                return;
            }
            parameters.set(this.getStringKey(hdr.getParameterKey(), this.mIsVideo), hdr.getValue());
        }
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setIso(Iso iso) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                return;
            }
            parameters.set("sony-ae-mode", iso.getValue());
            int n = iso.getIsoValue();
            if (n > 0) {
                parameters.set("sony-iso", Integer.toString(n));
            }
        }
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public final void setJpegEncodingQuality(int n) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setJpegEncodingQuality: params is null.");
                return;
            }
            parameters.setJpegQuality(MediaSavingConstants.JpegQuality.getPlatformQualityFromCameraProfile(n));
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setMetering(Metering metering) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setMetering: params is null.");
                return;
            }
            parameters.set("sony-metering-mode", metering.getValue());
        }
        this.mCommitParameters = true;
    }

    public final void setOneShotPreviewCallback(Camera.PreviewCallback previewCallback) {
        if (this.mCamera != null) {
            this.mCamera.setOneShotPreviewCallback(previewCallback);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setPhotoShutterSound(boolean bl) {
        if (this.mCamera == null || 17 > Build.VERSION.SDK_INT) {
            return;
        }
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "getParameters() return null.");
                return;
            }
            if (bl) {
                parameters.set("key-sony-ext-shuttersound", "/system/media/audio/ui/camera_click.ogg");
            } else {
                parameters.set("key-sony-ext-shuttersound", ShutterToneGenerator.getSoundFilePath(ShutterToneGenerator.Type.SOUND_OFF, ShutterSound.OFF));
            }
        }
        this.mCommitParameters = true;
    }

    public void setPictureSize(Rect rect) {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "setPictureSize: params is null.");
            return;
        }
        parameters.setPictureSize(rect.width(), rect.height());
        this.mPictureSize = new Rect(rect);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setPreviewDisplay(SurfaceHolder surfaceHolder) throws IOException {
        synchronized (this) {
            if (surfaceHolder != null) {
                this.setSurfaceHolder(surfaceHolder);
                if (this.mCamera != null) {
                    this.mCamera.setPreviewDisplay(surfaceHolder);
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setPreviewSize(Rect object) {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "setPreviewSize: params is null.");
            return;
        }
        if (object.width() != this.mPreviewSize.width() || object.height() != this.mPreviewSize.height()) {
            this.stopPreview();
            this.mNeedStartPreview = true;
        } else {
            this.mNeedStartPreview = false;
        }
        parameters.setPreviewSize(object.width(), object.height());
        this.updatePreviewSize((Rect)object);
        object = new PreviewFrameRetriever.PreviewInfo(parameters.getPreviewFormat(), parameters.getPreviewSize().width, parameters.getPreviewSize().height);
        this.mPreviewFrameRetriever.setPreviewInfo((PreviewFrameRetriever.PreviewInfo)object);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setPreviewSizeAndFpsRangeForVideo(VideoSize videoSize) {
        Rect rect = this.getVideoPreviewSize(videoSize);
        synchronized (this) {
            this.setVideoSize(videoSize.getVideoRect());
            this.setPreviewSize(rect);
            this.setFpsRange(CameraDeviceUtil.computePreviewFpsRange(videoSize.getVideoFrameRate(), this.mCachedCapabilityList.FPS_RANGE.get()));
        }
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setResolution(Resolution resolution) {
        Rect rect = this.getPhotoPreviewSize(resolution);
        synchronized (this) {
            this.setPictureSize(resolution.getPictureRect());
            this.setPreviewSize(rect);
        }
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setScene(Scene scene) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setScene: params is null.");
                return;
            }
            Scene scene2 = scene;
            if (HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 8)) {
                int n = HardwareCapability.getInstance().getMaxSoftSkinLevel(this.mCameraId);
                if (Scene.SOFT_SKIN == scene) {
                    parameters.set("sony-soft-skin-level-for-picture", SoftSkin.ON.getLevel(n));
                    scene2 = Scene.PORTRAIT;
                } else {
                    parameters.set("sony-soft-skin-level-for-picture", SoftSkin.OFF.getLevel(n));
                    scene2 = scene;
                }
            }
            parameters.setSceneMode(scene2.getValue());
        }
        this.mCommitParameters = true;
    }

    public final void setSceneRecognitionCallback(CameraExtension.SceneRecognitionCallback sceneRecognitionCallback) {
        this.mSceneRecognitionCallback = sceneRecognitionCallback;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void setSelectedFacePosition(int n, int n2) {
        if (this.mCameraExtension == null) {
            CameraLogger.w(TAG, "setSelectFacePos: mCameraExtension is null.");
            return;
        } else {
            if (!this.mIsPreviewing || !this.mIsFaceDetectionRunning) return;
            {
                this.mCameraExtension.setSelectFacePos(n, n2);
                return;
            }
        }
    }

    public void setShutterSound(ShutterSound shutterSound) {
        this.setPhotoShutterSound(shutterSound.getBooleanValue());
        this.setVideoRecordingSound(shutterSound);
        this.setBurstShutterSound(shutterSound);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setSmileCapture(SmileCapture smileCapture) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setSmileCapture: params is null.");
                return;
            }
            parameters.set("sony-smile-detect", smileCapture.getValue());
        }
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setSoftSkin(SoftSkin softSkin) {
        if (this.mIsVideo || this.mCameraId == 0) {
            return;
        }
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setSoftSkin: params is null.");
                return;
            }
            if (HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 8)) {
                List<String> list = this.mCameraActivity.getControllerManager().getCapturingMode();
                if (softSkin.isOn() && !list.isSuperiorAuto()) {
                    list = HardwareCapability.getCapability((int)this.mCameraId).SCENE.get();
                    if (list.contains(Scene.PORTRAIT.getValue()) && HardwareCapability.getInstance().getMaxSoftSkinLevel(this.mCameraId) > 0) {
                        parameters.setSceneMode(Scene.PORTRAIT.getValue());
                    } else if (list.contains(Scene.SOFT_SKIN.getValue())) {
                        parameters.setSceneMode(Scene.SOFT_SKIN.getValue());
                    }
                } else {
                    parameters.setSceneMode(Scene.OFF.getValue());
                }
                parameters.set("sony-soft-skin-level-for-picture", softSkin.getLevel(HardwareCapability.getInstance().getMaxSoftSkinLevel(this.mCameraId)));
            } else {
                parameters.setSceneMode(softSkin.getScene().getValue());
            }
        }
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setStabilizer(Stabilizer stabilizer) {
        synchronized (this) {
            String string;
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setStabilizer: params is null.");
                return;
            }
            parameters.set(this.getStringKey(stabilizer.getParameterKey(), true), Stabilizer.OFF.getValue());
            if (stabilizer == Stabilizer.OFF && ((string = this.getImageStabilizer(parameters)).equals(Hdr.HDR_AUTO.getValue()) || string.equals(Hdr.HDR_ON.getValue()))) {
                return;
            }
            parameters.set(this.getStringKey(stabilizer.getParameterKey(), false), stabilizer.getValue());
        }
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setSteadyShot(VideoStabilizer videoStabilizer) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setSteadyShot: params is null.");
                return;
            }
            parameters.set(this.getStringKey(videoStabilizer.getParameterKey(), false), Stabilizer.OFF.getValue());
            parameters.set("sony-vs", videoStabilizer.getValue());
        }
        this.mCommitParameters = true;
    }

    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        this.mSurfaceHolder = surfaceHolder;
    }

    public void setVideoDevice(VideoDevice videoDevice) {
        this.mVideoDevice = videoDevice;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setVideoHdr(VideoHdr videoHdr) {
        synchronized (this) {
            if (videoHdr.getValue() == null) {
                return;
            }
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setVideoHdr: params is null.");
                return;
            }
            parameters.set("sony-video-hdr", videoHdr.getValue());
        }
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void setVideoMode(boolean bl) {
        // MONITORENTER : this
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "setVideoMode: params is null.");
            // MONITOREXIT : this
            return;
        }
        parameters.setRecordingHint(bl);
        // MONITOREXIT : this
        if (bl) {
            this.prepareVideoNrSetting();
            return;
        }
        this.finishVideoNrSetting();
    }

    public void setVideoNr(boolean bl) {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "prepareVideoNr: params is null.");
            return;
        }
        if (bl) {
            parameters.set("sony-video-nr", "on");
            return;
        }
        parameters.set("sony-video-nr", "off");
    }

    public void setVideoPictureSize(Rect rect) {
        if (this.mCachedCapabilityList.VIDEO_SNAPSHOT.get().booleanValue() && (rect = CameraSize.getOptimalVideoSnapshotSize(rect, this.mCachedCapabilityList.PICTURE_SIZE.get())) != null) {
            this.setPictureSize(rect);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setVideoRecordingSound(ShutterSound object) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "getParameters() return null.");
                return;
            }
            object = object.getBooleanValue() != false ? "/system/media/audio/ui/VideoRecord.ogg" : ShutterToneGenerator.getSoundFilePath(ShutterToneGenerator.Type.SOUND_OFF, (ShutterSound)object);
            parameters.set("key-sony-ext-recordingsound", (String)object);
        }
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setVideoSize(VideoSize videoSize) {
        if (videoSize == null) {
            return;
        }
        Object object = videoSize.getVideoRect();
        object = "" + object.width() + "x" + object.height();
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                return;
            }
            parameters.set("video-size", (String)object);
        }
        this.mVideoFps = videoSize.getVideoFrameRate();
        if (this.mIsVideo) {
            this.prepareVideoNrSetting();
        }
        this.mCommitParameters = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setWhiteBalance(WhiteBalance whiteBalance) {
        synchronized (this) {
            Camera.Parameters parameters = this.getParameters();
            if (parameters == null) {
                CameraLogger.e(TAG, "setWhiteBalance: params is null.");
                return;
            }
            parameters.setWhiteBalance(whiteBalance.getValue());
        }
        this.mCommitParameters = true;
    }

    public final void setZoom(int n) {
        Camera.Parameters parameters = this.getParameters();
        if (parameters == null) {
            CameraLogger.e(TAG, "setZoom: params is null.");
            return;
        }
        parameters.setZoom(n);
    }

    public boolean startAutoFocus(AutoFocusListener autoFocusListener, boolean bl, boolean bl2, boolean bl3) {
        if (!this.mIsPreviewing) {
            return false;
        }
        try {
            this.mAutoFocus.startAutoFocus(autoFocusListener, bl, bl2, bl3);
            if (Configurations.isLogForOperatorsEnabled()) {
                CameraLogger.dForOperators("AutoFocus started");
            }
            return true;
        }
        catch (Exception var1_2) {
            CameraLogger.e(TAG, "startAutoFocus failed.", var1_2);
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public int startBurstShot(CameraExtension.BurstShotCallback burstShotCallback, CameraExtension.StorageFullDetector storageFullDetector, CameraExtension.FilePathGenerator filePathGenerator, CameraExtension.MediaProviderUpdator mediaProviderUpdator) {
        if (!this.mIsPreviewing || this.mIsBurstShooting) {
            return -1;
        }
        this.mCameraExtension.setBurstShotCallback(burstShotCallback);
        this.mCameraExtension.setBurstStorageFullDetector(storageFullDetector);
        int n = this.mCameraExtension.startBurstShot(filePathGenerator, mediaProviderUpdator);
        this.mIsBurstShooting = true;
        new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId).put(new BurstShooting(BurstShooting.Value.ON)).publish();
        return n;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void startFaceDetection() {
        FaceIdentification.Value value;
        EachCameraStatusPublisher eachCameraStatusPublisher;
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "startFaceDetection: mCamera is null.");
            return;
        } else {
            if (!this.mIsPreviewing || this.mIsFaceDetectionRunning) return;
            {
                this.mCamera.startFaceDetection();
                this.mIsFaceDetectionRunning = true;
                eachCameraStatusPublisher = new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId);
                value = FaceIdentify.ON.getValue().equals(this.mCameraActivity.getParameterManager().getParameters().getFaceIdentify().getValue()) ? FaceIdentification.Value.ON : FaceIdentification.Value.OFF;
            }
        }
        eachCameraStatusPublisher.put(new FaceIdentification(value)).put((FaceIdentification)new FaceDetection(FaceDetection.Value.ON)).publish();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void startObjectTracking(Rect rect, CameraExtension.ObjectTrackingCallback objectTrackingCallback) {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "startObjectTracking: mCamera is null.");
            return;
        } else {
            if (this.mCachedCapabilityList.MAX_NUM_FOCUS_AREA.get() < 1 || this.mCameraExtension == null || !this.mIsPreviewing) return;
            {
                this.mCameraExtension.setObjectTrackingCallback(objectTrackingCallback, 75, 100);
                this.mCameraExtension.startObjectTracking();
                this.mCameraExtension.selectObject(rect.centerX(), rect.centerY());
                this.mIsObjectTrackingRunning = true;
                new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId).put(new ObjectTracking(ObjectTracking.Value.ON)).publish();
                return;
            }
        }
    }

    public void startOpenCameraDeviceTask(int n) {
        this.clearCloseDeviceTask();
        this.setOpenTaskTargetCameraId(-1);
        this.mOpenDeviceExecutorService = Executors.newSingleThreadExecutor();
        this.mIsCancelOpenCameraRequested = false;
        this.mOpenDeviceFuture = this.mOpenDeviceExecutorService.submit(new OpenCameraDeviceTask(n));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void startPreview() throws CameraDeviceException {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "startPreview: mCamera is null.");
            return;
        }
        Camera.Parameters parameters = this.getParameters();
        if (parameters != null) {
            Object object = this.mIsVideo ? DeviceStatus.Value.VIDEO_PREVIEW : DeviceStatus.Value.STILL_PREVIEW;
            object = new DeviceStatus((DeviceStatus.Value)object);
            String string = parameters.get("sony-vs");
            String string2 = parameters.get("sony-video-nr");
            new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId).putFromParameter(parameters).put(object).put(VideoStabilizerStatus.fromCameraParameter(string)).put((VideoStabilizerStatus)VideoNoiseReduction.fromCameraParameter(string2)).publish();
        }
        synchronized (this) {
            if (this.mIsPreviewing) {
                return;
            }
            try {
                this.mCamera.startPreview();
                this.mIsPreviewing = true;
                return;
            }
            catch (RuntimeException var1_3) {
                this.mIsPreviewing = false;
                throw new CameraDeviceException("Start preview failed.", var1_3);
            }
        }
    }

    public void startPreview(SurfaceHolder surfaceHolder) {
        try {
            this.setPreviewDisplay(surfaceHolder);
            this.startPreview();
            return;
        }
        catch (IOException var1_2) {
            Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, -256, this.mCamera);
            return;
        }
        catch (CameraDeviceException var1_3) {
            Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, -255, this.mCamera);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void startSceneRecognition() {
        if (this.mCameraExtension == null || !this.mIsPreviewing || this.mIsSceneRecognitionRunning) {
            return;
        }
        this.startFaceDetection();
        this.mCameraExtension.startSceneRecognition(this.mSceneRecognitionCallback);
        this.mIsSceneRecognitionRunning = true;
        new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId).put(new SceneRecognition(SceneRecognition.Value.ON)).publish();
    }

    public void startSetupCameraDeviceTask(Parameters object) {
        this.clearCloseDeviceTask();
        if (this.mOpenDeviceExecutorService == null) {
            this.mOpenDeviceExecutorService = Executors.newSingleThreadExecutor();
        }
        object = new SetupCameraDeviceTask((Parameters)object);
        this.mSetupDeviceFuture = this.mOpenDeviceExecutorService.submit((Runnable)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void startSmoothZoom(int n) {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "startSmoothZoom: mCamera is null.");
            return;
        } else {
            if (!this.isPreviewing()) return;
            {
                this.mCamera.startSmoothZoom(n);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void startSmoothZoom(int n, Camera.OnZoomChangeListener onZoomChangeListener) {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "startSmoothZoom: mCamera is null.");
            return;
        } else {
            if (!this.isPreviewing()) return;
            {
                this.mCamera.setZoomChangeListener(onZoomChangeListener);
                this.mCamera.startSmoothZoom(n);
                return;
            }
        }
    }

    public void startVideoMetadata() {
        if (HardwareCapability.getInstance().isVideoMetaDataSupported(this.mCameraId) && this.mCameraExtension != null) {
            this.mCameraExtension.startVideoMetadata();
            new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId).put(new Metadata(Metadata.Value.ON)).publish();
        }
    }

    public final void stopAutoFocus() {
        if (this.mAutoFocus != null) {
            this.mAutoFocus.stopAutoFocus();
        }
    }

    public int stopBurstShot(int n) {
        if (!this.mIsBurstShooting) {
            return -1;
        }
        this.mIsBurstShooting = false;
        this.mCameraExtension.stopBurstShot();
        new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId).put(new BurstShooting(BurstShooting.Value.OFF)).publish();
        return n;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void stopFaceDetection() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "startFaceDetection: mCamera is null.");
            return;
        } else {
            if (!this.mIsFaceDetectionRunning) return;
            {
                this.mIsFaceDetectionRunning = false;
                this.mCamera.stopFaceDetection();
                new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId).put(new FaceIdentification(FaceIdentification.Value.OFF)).put((FaceIdentification)new FaceDetection(FaceDetection.Value.OFF)).publish();
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void stopObjectTracking(boolean bl) {
        if (!(this.mCameraExtension != null && this.mIsObjectTrackingRunning)) {
            return;
        }
        this.mIsObjectTrackingRunning = false;
        try {
            this.mCameraExtension.deselectObject();
            if (bl) {
                this.mCameraExtension.setObjectTrackingCallback(null, 0, 0);
            }
        }
        catch (RuntimeException var2_2) {
            CameraLogger.e(TAG, "ObjectTrackingDevice stop failed.", var2_2);
        }
        new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId).put(new ObjectTracking(ObjectTracking.Value.OFF)).publish();
    }

    public void stopObjectTrackingCallback() {
        if (this.mCameraExtension != null) {
            this.mCameraExtension.setObjectTrackingCallback(null, 0, 0);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void stopPreview() {
        synchronized (this) {
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
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void stopSceneRecognition() {
        if (!(this.mCameraExtension != null && this.mIsSceneRecognitionRunning)) {
            return;
        }
        this.mIsSceneRecognitionRunning = false;
        this.mCameraExtension.stopSceneRecognition();
        new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId).put(new SceneRecognition(SceneRecognition.Value.OFF)).publish();
    }

    public final void stopSmoothZoom() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "stopSmoothZoom: mCamera is null.");
            return;
        }
        this.mCamera.stopSmoothZoom();
    }

    public void stopVideoMetadata() {
        if (HardwareCapability.getInstance().isVideoMetaDataSupported(this.mCameraId) && this.mCameraExtension != null) {
            this.mCameraExtension.stopVideoMetadata();
            new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId).put(new Metadata(Metadata.Value.OFF)).publish();
        }
    }

    public void surfaceChanged(SurfaceHolder object, int n, int n2, int n3) {
        this.setSurfaceHolder((SurfaceHolder)object);
        object = new CameraSurfaceHolder((SurfaceHolder)object, n2, n3);
        Executor.sendEvent(ControllerEvent.EV_SURFACE_CHANGED, 0, object);
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Executor.sendEvent(ControllerEvent.EV_SURFACE_CREATED, 0, surfaceHolder);
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.setSurfaceHolder(null);
        Executor.sendEmptyEvent(ControllerEvent.EV_SURFACE_DESTROYED);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void suspend(boolean bl, boolean bl2) {
        synchronized (this) {
            if (bl2) {
                this.stopSceneRecognition();
            }
            if (bl) {
                this.stopFaceDetection();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public final void takePicture(Camera.ShutterCallback shutterCallback, Camera.PictureCallback pictureCallback) {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "takePicture: mCamera is null.");
            return;
        }
        EachCameraStatusPublisher eachCameraStatusPublisher = new EachCameraStatusPublisher(this.mCameraActivity, this.mCameraId);
        DeviceStatus.Value value = Executor.isRecording() ? DeviceStatus.Value.PICTURE_TAKING_DURING_VIDEO_RECORDING : DeviceStatus.Value.PICTURE_TAKING;
        eachCameraStatusPublisher.put(new DeviceStatus(value)).publish();
        pictureCallback = new JpegCallback(pictureCallback);
        synchronized (this) {
            this.mIsCapturing = true;
            if (!Executor.isRecording()) {
                this.mIsPreviewing = false;
            }
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_ON_PICT_TAKEN, true);
            this.mCamera.takePicture(shutterCallback, null, pictureCallback);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public final void turnOffLight() {
        synchronized (this) {
            if (this.mLedLight != null) {
                this.mLedLight.turnOff();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public final void turnOnLight() {
        synchronized (this) {
            if (this.mLedLight != null) {
                this.mLedLight.turnOn();
            }
            return;
        }
    }

    public void unlockCamera() {
        if (this.mCamera == null) {
            CameraLogger.w(TAG, "unlockCamera: mCamera is null.");
            return;
        }
        this.mCamera.unlock();
    }

    public void updatePreviewSize(Rect rect) {
        this.mPreviewSize = new Rect(rect);
        PositionConverter.getInstance().setPreviewSize(rect.width(), rect.height());
    }

    private abstract class AutoFocus {
        private AutoFocus() {
        }

        public abstract void startAutoFocus(AutoFocusListener var1, boolean var2, boolean var3, boolean var4) throws Exception;

        public abstract void stopAutoFocus();
    }

    /*
     * Failed to analyse overrides
     */
    private class AutoFocusExtension
    extends AutoFocus
    implements CameraExtension.AutoFocusCallback {
        private AutoFocusExtension() {
        }

        public void onAutoFocus(CameraExtension.AutoFocusResult object) {
            if (CameraDevice.this.mAutoFocusListener != null) {
                object = new AutoFocusResultWrapper((CameraExtension.AutoFocusResult)object);
                CameraDevice.this.mAutoFocusListener.onAutoFocus((AutoFocusListener.Result)object);
            }
        }

        public void startAutoFocus(AutoFocusListener autoFocusListener, boolean bl, boolean bl2, boolean bl3) throws Exception {
            if (CameraDevice.this.mCameraExtension == null) {
                CameraLogger.w(TAG, "startAutoFocus: mCameraExtension is null.");
                return;
            }
            CameraDevice.this.setAutoFocusListener(autoFocusListener);
            CameraDevice.this.mCameraExtension.setFaceDetectionCallback(null);
            CameraDevice.this.mCameraExtension.startAutoFocus((CameraExtension.AutoFocusCallback)this, bl, bl2, bl3);
        }

        public void stopAutoFocus() {
            if (CameraDevice.this.mCameraExtension == null) {
                CameraLogger.w(TAG, "stopAutoFocus: mCameraExtension is null.");
                return;
            }
            CameraDevice.this.mCameraExtension.setFaceDetectionCallback(null);
            CameraDevice.this.mCameraExtension.stopAutoFocus();
        }
    }

    private class AutoFocusNoExtension
    extends AutoFocus
    implements Camera.AutoFocusCallback {
        private AutoFocusNoExtension() {
        }

        private void autoFocus() {
            new Handler().post(new Runnable(){

                @Override
                public void run() {
                    AutoFocusNoExtension.this.onAutoFocus(true, null);
                }
            });
        }

        @Override
        public void onAutoFocus(boolean bl, Camera object) {
            if (CameraDevice.this.mAutoFocusListener != null) {
                object = new AutoFocusResultWrapper(bl);
                CameraDevice.this.mAutoFocusListener.onAutoFocus((AutoFocusListener.Result)object);
            }
        }

        @Override
        public void startAutoFocus(AutoFocusListener object, boolean bl, boolean bl2, boolean bl3) throws Exception {
            if (CameraDevice.this.mCamera == null) {
                CameraLogger.w(TAG, "startAutoFocus: mCamera is null.");
                return;
            }
            CameraDevice.this.setAutoFocusListener((AutoFocusListener)object);
            object = CameraDevice.this.getParameters();
            if (object == null) {
                CameraLogger.e(TAG, "startAutoFocus: params is null.");
                return;
            }
            if ((object = object.getFocusMode()).equals("continuous-video")) {
                this.autoFocus();
                return;
            }
            if (object.equals("edof")) {
                this.autoFocus();
                return;
            }
            if (object.equals("fixed")) {
                this.autoFocus();
                return;
            }
            if (object.equals("infinity")) {
                this.autoFocus();
                return;
            }
            CameraDevice.this.mCamera.autoFocus(this);
        }

        @Override
        public void stopAutoFocus() {
            if (CameraDevice.this.mCamera == null) {
                CameraLogger.w(TAG, "stopAutoFocus: mCamera is null.");
                return;
            }
            CameraDevice.this.mCamera.cancelAutoFocus();
        }

    }

    private static class AutoFocusResultWrapper
    implements AutoFocusListener.Result {
        private final CameraExtension.AutoFocusResult mResult;
        private final boolean mSuccess;

        public AutoFocusResultWrapper(CameraExtension.AutoFocusResult autoFocusResult) {
            this.mSuccess = false;
            this.mResult = autoFocusResult;
        }

        public AutoFocusResultWrapper(boolean bl) {
            this.mSuccess = bl;
            this.mResult = null;
        }

        @Override
        public boolean isFocused() {
            if (this.mResult == null) {
                return this.mSuccess;
            }
            return this.mResult.isFocused();
        }

        @Override
        public boolean isFocused(int n) {
            if (this.mResult == null) {
                return false;
            }
            return this.mResult.isFocused(n);
        }
    }

    private class CloseDeviceTask
    implements Runnable {
        private CloseDeviceTask() {
        }

        @Override
        public void run() {
            if (CameraDevice.this.mVideoDevice != null) {
                CameraDevice.this.mVideoDevice.awaitFinishingRecording();
            }
            CameraDevice.this.restoreSettingAfterRecording();
            CameraDevice.this.close(true);
        }
    }

    private final class JpegCallback
    implements Camera.PictureCallback {
        private final Camera.PictureCallback mClientJpegCallback;

        private JpegCallback(Camera.PictureCallback pictureCallback) {
            this.mClientJpegCallback = pictureCallback;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void onPictureTaken(byte[] object, Camera object2) {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_ON_PICT_TAKEN, false);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_SHOT, false);
            MeasurePerformance.outResult();
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_SHOT, true);
            TestEventSender.onPictureTaken();
            CameraDevice cameraDevice = CameraDevice.this;
            synchronized (cameraDevice) {
                CameraDevice.this.mIsCapturing = false;
            }
            this.mClientJpegCallback.onPictureTaken((byte[])object, (Camera)object2);
            object2 = new EachCameraStatusPublisher(CameraDevice.this.mCameraActivity, CameraDevice.this.mCameraId);
            object = Executor.isRecording() ? (Object)DeviceStatus.Value.VIDEO_RECORDING : DeviceStatus.Value.STILL_PREVIEW;
            object2.put(new DeviceStatus((DeviceStatus.Value)object)).publish();
            if (CameraLogger.isUserdebugOrEngBuild) {
                CameraLogger.p(TAG, "JpegCallback.onPictureTaken out");
            }
        }
    }

    private abstract class LedLight {
        private LedLight() {
        }

        public abstract void turnOff();

        public abstract void turnOn();
    }

    private class LedLightNotSupported
    extends LedLight {
        private LedLightNotSupported() {
        }

        @Override
        public void turnOff() {
        }

        @Override
        public void turnOn() {
        }
    }

    private class LedLightSupported
    extends LedLight {
        private LedLightSupported() {
        }

        @Override
        public void turnOff() {
            CameraDevice.this.setFlashMode(Flash.LED_OFF);
            CameraDevice.this.commitParameters();
        }

        @Override
        public void turnOn() {
            CameraDevice.this.setFlashMode(Flash.LED_ON);
            CameraDevice.this.commitParameters();
        }
    }

    private class OpenCameraDeviceTask
    implements Callable<Camera> {
        private final int mCameraId;

        public OpenCameraDeviceTask(int n) {
            this.mCameraId = n;
        }

        @Override
        public Camera call() {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.OPEN_CAMERA_DEVICE_TASK, true);
            boolean bl = CameraDevice.this.openCameraDeviceWithRetry(this.mCameraId);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.OPEN_CAMERA_DEVICE_TASK, false);
            if (bl) {
                CameraDevice.this.setOpenTaskTargetCameraId(this.mCameraId);
                return CameraDevice.this.mCamera;
            }
            CameraDevice.this.setOpenTaskTargetCameraId(-2);
            return null;
        }
    }

    private class SetupCameraDeviceTask
    implements Runnable {
        private final Handler mHandler;
        private final Parameters mParams;

        public SetupCameraDeviceTask(Parameters parameters) {
            this.mHandler = new Handler();
            this.mParams = parameters;
        }

        /*
         * Enabled aggressive block sorting
         */
        private void applyAllParameters() {
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

        private boolean isCameraAvailable() {
            if (CameraDevice.this.isFailedOpenCameraDeviceTask()) {
                CameraLogger.errorLogForNonUserVariant(TAG, "[CameraNotAvailable] Camera open was failed.");
                GoogleAnalyticsUtil.getInstance().setCameraNotAvailableFailedToOpen();
                return false;
            }
            if (CameraDevice.this.isRequestCameraOpened(this.mParams.capturingMode.getCameraId())) {
                return true;
            }
            if (CameraDevice.this.openCameraDeviceWithRetry(this.mParams.capturingMode.getCameraId())) {
                return true;
            }
            CameraLogger.e(TAG, "SetupCameraDeviceTask: Camera is not available.");
            return false;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.SETUP_CAMERA_DEVICE_TASK, true);
            var1_2 = var2_1 = false;
            if (!this.isCameraAvailable()) ** GOTO lbl-1000
            this.applyAllParameters();
            try {
                CameraDevice.this.setPreviewDisplay(CameraDevice.access$1700(CameraDevice.this));
                CameraDevice.this.startPreview();
                var1_2 = true;
            }
            catch (IOException var3_3) {
                CameraLogger.e(CameraDevice.access$700(), "setPreviewDisplay failed.", var3_3);
                var1_2 = var2_1;
            }
            catch (CameraDeviceException var3_4) {
                CameraLogger.e(CameraDevice.access$700(), "startPreview failed.", var3_4);
                var1_2 = var2_1;
            }
            if (var1_2) {
                this.mHandler.post(new Runnable(){

                    @Override
                    public void run() {
                        Executor.postEmptyEvent(ControllerEvent.EV_CAMERA_SETUP_FINISHED);
                    }
                });
            } else lbl-1000: // 2 sources:
            {
                this.mHandler.post(new Runnable(){

                    @Override
                    public void run() {
                        Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, 100, CameraDevice.this.mCamera);
                    }
                });
            }
            if (Configurations.isLogForOperatorsEnabled()) {
                CameraLogger.dForOperators("Camera is launched completely");
            }
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.SETUP_CAMERA_DEVICE_TASK, false);
        }

    }

}

