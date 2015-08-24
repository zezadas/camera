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

import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Handler;
import android.util.SparseArray;
import android.view.SurfaceHolder;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
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
import com.sonyericsson.android.camera.controller.VideoDevice;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.device.CameraDeviceException;
import com.sonyericsson.android.camera.device.PreviewFrameRetriever;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.cameraextension.CameraExtension;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/*
 * Failed to analyse overrides
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CameraDevice
implements SurfaceHolder.Callback,
CameraExtension.SceneRecognitionCallback,
Camera.ErrorCallback {
    private static final int CAMERA_IS_NOT_OPENED = -1;
    private static final int CAMERA_OPEN_FAILED = -2;
    private static final String TAG;
    private static Camera.Parameters sCachedParameters;
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
    private int mDisplayOrientation;
    private boolean mIsAlreadySetBurstShutterSound;
    private boolean mIsBurstShooting;
    private volatile boolean mIsCancelOpenCameraRequested;
    private boolean mIsCapturing;
    private boolean mIsFaceDetectionRunning;
    private boolean mIsObjectTrackingRunning;
    private boolean mIsPreviewing;
    private boolean mIsSceneRecognitionRunning;
    private boolean mIsVideo;
    private LedLight mLedLight;
    public boolean mNeedStartPreview;
    private ExecutorService mOpenDeviceExecutorService;
    private Future<Camera> mOpenDeviceFuture;
    private int mOpenTaskTargetCameraId;
    private Rect mPictureSize;
    private PreviewFrameRetriever mPreviewFrameRetriever;
    private Rect mPreviewSize;
    private CameraExtension.SceneRecognitionCallback mSceneRecognitionCallback;
    private Future<?> mSetupDeviceFuture;
    private SurfaceHolder mSurfaceHolder;
    private VideoDevice mVideoDevice;
    private int mVideoFps;

    static;

    public CameraDevice(CameraActivity var1);

    static /* synthetic */ boolean access$1002(CameraDevice var0, boolean var1);

    static /* synthetic */ CameraActivity access$1100(CameraDevice var0);

    static /* synthetic */ int access$1200(CameraDevice var0);

    static /* synthetic */ boolean access$1500(CameraDevice var0, int var1);

    static /* synthetic */ void access$1600(CameraDevice var0, int var1);

    static /* synthetic */ SurfaceHolder access$1700(CameraDevice var0);

    static /* synthetic */ boolean access$1800(CameraDevice var0);

    static /* synthetic */ boolean access$1900(CameraDevice var0, int var1);

    static /* synthetic */ boolean access$2000(CameraDevice var0);

    static /* synthetic */ VideoDevice access$2100(CameraDevice var0);

    static /* synthetic */ void access$2200(CameraDevice var0, boolean var1);

    static /* synthetic */ CameraExtension access$600(CameraDevice var0);

    static /* synthetic */ String access$700();

    static /* synthetic */ AutoFocusListener access$800(CameraDevice var0);

    static /* synthetic */ Camera access$900(CameraDevice var0);

    private void clearCloseDeviceTask();

    private void close(boolean var1);

    private void finishVideoNrSetting();

    public static Camera.CameraInfo getCameraInfo(int var0);

    private int getOpenTaskTargetCameraId();

    private void initParametersCache();

    private boolean isCapturing();

    private boolean isCloseDeviceTaskWorking();

    private boolean isFailedOpenCameraDeviceTask();

    private boolean isFront();

    private boolean isRequestCameraOpened(int var1);

    public static boolean isSceneRecognitionRequired(CapturingMode var0);

    public static boolean isSupported(String var0, List<String> var1);

    private void joinCloseDeviceTask();

    private boolean openCameraDeviceWithRetry(int var1);

    private void prepareVideoNrSetting();

    private void setCachedParameters(Camera.Parameters var1);

    private static void setCameraInfo(SparseArray<Camera.CameraInfo> var0, int var1);

    private void setDcModeParameters(Camera.Parameters var1);

    private void setOpenTaskTargetCameraId(int var1);

    private void setVideoSize(Rect var1);

    public void clearResumeDeviceTask();

    public void clearZoomChangeListener();

    public void close();

    public void commit();

    public void commitParameters();

    public void dumpParameters();

    public void finishBurstShot(Parameters var1);

    public void finishPreviewing();

    public void finishRec(Resolution var1);

    public AutoFocus getAutoFocus(CapabilityList var1);

    public final Camera getCamera();

    public int getCameraId();

    public int getDisplayOrientation();

    public String getImageStabilizer(Camera.Parameters var1);

    public LedLight getLedLight(CapabilityList var1);

    public final int getMaxShutterSpeed();

    public final int getMaxSrZoom();

    public final int getMaxZoom();

    public final int getMinShutterSpeed();

    public Camera.Parameters getParameters();

    public Rect getPhotoPreviewSize(Resolution var1);

    public Rect getPictureRect();

    public final int getPreviewFormat();

    public PreviewFrameRetriever getPreviewFrameRetriever();

    public Rect getPreviewRect();

    public final int getShutterSpeed();

    public String getStringKey(ParameterKey var1, boolean var2);

    public final List<Integer> getSupportedPreviewFormats();

    public SurfaceHolder getSurfaceHolder();

    public Rect getVideoPreviewSize(VideoSize var1);

    public final int getZoom();

    public final boolean isAvailable();

    public boolean isObjectTrackingRunning();

    public boolean isOpenCameraDeviceTaskRunning();

    public final boolean isPreviewing();

    public boolean isRecorderWorking();

    public boolean isSceneRecognitionRunning();

    public boolean isSetupCameraDeviceTaskRunning();

    public boolean isStartedOpenCameraDeviceTask();

    public boolean isStartedSetupCameraDeviceTask();

    public boolean isVideoHdrOn();

    public void joinOpenCameraDeviceTask(boolean var1);

    public void joinSetupCameraDeviceTask(boolean var1);

    public void lockCamera();

    public boolean needStartPreview();

    public void onError(int var1, Camera var2);

    public void onSceneModeChanged(CameraExtension.SceneRecognitionResult var1);

    public final void open(int var1) throws CameraDeviceException;

    public void prepareBurstShot(Parameters var1);

    public void prepareRec(VideoSize var1);

    public void reconnectCamera();

    public final void release();

    public void resetFocusAreaAndRect(FocusMode var1);

    public void resetZoom();

    public void restoreSettingAfterRecording();

    public void resume(Parameters var1);

    public void setAutoFocusListener(AutoFocusListener var1);

    public void setBurstFrameRate();

    public void setBurstShot(BurstShot var1);

    public void setBurstShutterSound(ShutterSound var1);

    public void setCapturingMode(CapturingMode var1);

    public void setDisplayOrientation(int var1);

    public void setEv(Ev var1);

    public void setExifInfo(Integer var1, Double var2, Double var3, Double var4, Long var5);

    public final void setFaceDetectionCallback(CameraExtension.FaceDetectionCallback var1);

    public final void setFlashMode(Flash var1);

    public final void setFocusMode(FocusMode var1);

    public void setFocusRect(Rect var1);

    public void setFpsRange(int[] var1);

    public void setHdr(Hdr var1);

    public void setIso(Iso var1);

    public final void setJpegEncodingQuality(int var1);

    public void setMetering(Metering var1);

    public final void setOneShotPreviewCallback(Camera.PreviewCallback var1);

    public void setPhotoShutterSound(boolean var1);

    public void setPictureSize(Rect var1);

    public void setPreviewDisplay(SurfaceHolder var1) throws IOException;

    public void setPreviewSize(Rect var1);

    public void setPreviewSizeAndFpsRangeForVideo(VideoSize var1);

    public void setResolution(Resolution var1);

    public void setScene(Scene var1);

    public final void setSceneRecognitionCallback(CameraExtension.SceneRecognitionCallback var1);

    public final void setSelectedFacePosition(int var1, int var2);

    public void setShutterSound(ShutterSound var1);

    public void setSmileCapture(SmileCapture var1);

    public void setSoftSkin(SoftSkin var1);

    public void setStabilizer(Stabilizer var1);

    public void setSteadyShot(VideoStabilizer var1);

    public void setSurfaceHolder(SurfaceHolder var1);

    public void setVideoDevice(VideoDevice var1);

    public void setVideoHdr(VideoHdr var1);

    public void setVideoMode(boolean var1);

    public void setVideoNr(boolean var1);

    public void setVideoPictureSize(Rect var1);

    public void setVideoRecordingSound(ShutterSound var1);

    public void setVideoSize(VideoSize var1);

    public void setWhiteBalance(WhiteBalance var1);

    public final void setZoom(int var1);

    public boolean startAutoFocus(AutoFocusListener var1, boolean var2, boolean var3, boolean var4);

    public int startBurstShot(CameraExtension.BurstShotCallback var1, CameraExtension.StorageFullDetector var2, CameraExtension.FilePathGenerator var3, CameraExtension.MediaProviderUpdator var4);

    public void startFaceDetection();

    public void startObjectTracking(Rect var1, CameraExtension.ObjectTrackingCallback var2);

    public void startOpenCameraDeviceTask(int var1);

    public void startPreview() throws CameraDeviceException;

    public void startPreview(SurfaceHolder var1);

    public void startSceneRecognition();

    public void startSetupCameraDeviceTask(Parameters var1);

    public final void startSmoothZoom(int var1);

    public void startSmoothZoom(int var1, Camera.OnZoomChangeListener var2);

    public void startVideoMetadata();

    public final void stopAutoFocus();

    public int stopBurstShot(int var1);

    public void stopFaceDetection();

    public void stopObjectTracking(boolean var1);

    public void stopObjectTrackingCallback();

    public void stopPreview();

    public void stopSceneRecognition();

    public final void stopSmoothZoom();

    public void stopVideoMetadata();

    public void surfaceChanged(SurfaceHolder var1, int var2, int var3, int var4);

    public void surfaceCreated(SurfaceHolder var1);

    public void surfaceDestroyed(SurfaceHolder var1);

    public void suspend(boolean var1, boolean var2);

    public final void takePicture(Camera.ShutterCallback var1, Camera.PictureCallback var2);

    public final void turnOffLight();

    public final void turnOnLight();

    public void unlockCamera();

    public void updatePreviewSize(Rect var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class AutoFocus {
        final /* synthetic */ CameraDevice this$0;

        private AutoFocus(CameraDevice var1);

        /* synthetic */ AutoFocus(CameraDevice var1,  var2);

        public abstract void startAutoFocus(AutoFocusListener var1, boolean var2, boolean var3, boolean var4) throws Exception;

        public abstract void stopAutoFocus();
    }

    /*
     * Failed to analyse overrides
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AutoFocusExtension
    extends AutoFocus
    implements CameraExtension.AutoFocusCallback {
        final /* synthetic */ CameraDevice this$0;

        private AutoFocusExtension(CameraDevice var1);

        /* synthetic */ AutoFocusExtension(CameraDevice var1,  var2);

        public void onAutoFocus(CameraExtension.AutoFocusResult var1);

        public void startAutoFocus(AutoFocusListener var1, boolean var2, boolean var3, boolean var4) throws Exception;

        public void stopAutoFocus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AutoFocusNoExtension
    extends AutoFocus
    implements Camera.AutoFocusCallback {
        final /* synthetic */ CameraDevice this$0;

        private AutoFocusNoExtension(CameraDevice var1);

        /* synthetic */ AutoFocusNoExtension(CameraDevice var1, com.sonyericsson.android.camera.device.CameraDevice$1 var2);

        private void autoFocus();

        @Override
        public void onAutoFocus(boolean var1, Camera var2);

        @Override
        public void startAutoFocus(AutoFocusListener var1, boolean var2, boolean var3, boolean var4) throws Exception;

        @Override
        public void stopAutoFocus();

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class AutoFocusResultWrapper
    implements AutoFocusListener.Result {
        private final CameraExtension.AutoFocusResult mResult;
        private final boolean mSuccess;

        public AutoFocusResultWrapper(CameraExtension.AutoFocusResult var1);

        public AutoFocusResultWrapper(boolean var1);

        @Override
        public boolean isFocused();

        @Override
        public boolean isFocused(int var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class CloseDeviceTask
    implements Runnable {
        final /* synthetic */ CameraDevice this$0;

        private CloseDeviceTask(CameraDevice var1);

        /* synthetic */ CloseDeviceTask(CameraDevice var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class JpegCallback
    implements Camera.PictureCallback {
        private final Camera.PictureCallback mClientJpegCallback;
        final /* synthetic */ CameraDevice this$0;

        private JpegCallback(CameraDevice var1, Camera.PictureCallback var2);

        /* synthetic */ JpegCallback(CameraDevice var1, Camera.PictureCallback var2,  var3);

        @Override
        public void onPictureTaken(byte[] var1, Camera var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class LedLight {
        final /* synthetic */ CameraDevice this$0;

        private LedLight(CameraDevice var1);

        /* synthetic */ LedLight(CameraDevice var1,  var2);

        public abstract void turnOff();

        public abstract void turnOn();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class LedLightNotSupported
    extends LedLight {
        final /* synthetic */ CameraDevice this$0;

        private LedLightNotSupported(CameraDevice var1);

        /* synthetic */ LedLightNotSupported(CameraDevice var1,  var2);

        @Override
        public void turnOff();

        @Override
        public void turnOn();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class LedLightSupported
    extends LedLight {
        final /* synthetic */ CameraDevice this$0;

        private LedLightSupported(CameraDevice var1);

        /* synthetic */ LedLightSupported(CameraDevice var1,  var2);

        @Override
        public void turnOff();

        @Override
        public void turnOn();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OpenCameraDeviceTask
    implements Callable<Camera> {
        private final int mCameraId;
        final /* synthetic */ CameraDevice this$0;

        public OpenCameraDeviceTask(CameraDevice var1, int var2);

        @Override
        public Camera call();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SetupCameraDeviceTask
    implements Runnable {
        private final Handler mHandler;
        private final Parameters mParams;
        final /* synthetic */ CameraDevice this$0;

        public SetupCameraDeviceTask(CameraDevice var1, Parameters var2);

        private void applyAllParameters();

        private boolean isCameraAvailable();

        @Override
        public void run();

    }

}

