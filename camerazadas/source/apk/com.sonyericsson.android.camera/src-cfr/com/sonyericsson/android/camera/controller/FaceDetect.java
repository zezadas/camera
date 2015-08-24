/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$ExtFace
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionCallback
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionResult
 */
package com.sonyericsson.android.camera.controller;

import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.EventDispatcher;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.device.PreviewFrameRetriever;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.focusview.FaceInformationList;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.FaceDetectUtil;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentificationFactory;
import java.util.List;

public class FaceDetect {
    private static final int FACE_DETECTION_RESULT_REFRESH_TIMEOUT = 1000;
    private static final String TAG = FaceDetect.class.getSimpleName();
    private final CameraFunctions mController;
    private final FaceDetectionCallback mFaceDetectionCallback;
    private CameraExtension.FaceDetectionResult mFaceDetectionResultCache;
    private FaceIdentification mFaceIdentification;
    private Boolean mIsFaceDetectionIdSupported;
    private boolean mIsSmileCaptureOn;
    private final PreviewFrameRetriever.OnPreviewFrameAvarableListener mOnPreviewFrameAvarableListener;
    private int mSmileLevel;
    private FaceDetectionState mState;
    private String mUserTouchFaceUuid;

    public FaceDetect(CameraFunctions cameraFunctions) {
        this.mFaceDetectionCallback = new FaceDetectionCallback();
        this.mOnPreviewFrameAvarableListener = new MyOnPreviewFrameAvarableListener();
        this.mState = new Unknown();
        this.mFaceIdentification = null;
        this.mFaceDetectionResultCache = null;
        this.mUserTouchFaceUuid = null;
        this.mController = cameraFunctions;
    }

    private CameraExtension.FaceDetectionResult getFaceDetectionResultCache() {
        synchronized (this) {
            CameraExtension.FaceDetectionResult faceDetectionResult = this.mFaceDetectionResultCache;
            return faceDetectionResult;
        }
    }

    private void setFaceDetectionResultCache(CameraExtension.FaceDetectionResult faceDetectionResult) {
        synchronized (this) {
            this.mFaceDetectionResultCache = faceDetectionResult;
            return;
        }
    }

    private void setState(FaceDetectionState faceDetectionState) {
        this.mState = faceDetectionState;
    }

    private void startFaceIdentification() {
        if (this.mFaceIdentification == null) {
            this.mFaceIdentification = FaceIdentificationFactory.createNewInstance(this.mController.mCameraActivity);
        }
    }

    private void stopFaceIdentification() {
        if (this.mFaceIdentification != null) {
            this.setFaceDetectionResultCache(null);
            this.faceLost();
            this.mFaceIdentification.release();
            this.mFaceIdentification = null;
        }
    }

    private void updateUuidBeforeUpdateView(CameraExtension.FaceDetectionResult faceDetectionResult) {
        if (this.mIsFaceDetectionIdSupported != null && !this.mIsFaceDetectionIdSupported.booleanValue() && FaceDetectUtil.isValidFaceDetectionResult(faceDetectionResult)) {
            this.mUserTouchFaceUuid = String.valueOf(((CameraExtension.ExtFace)faceDetectionResult.extFaceList.get((int)faceDetectionResult.indexOfSelectedFace)).face.id);
        }
    }

    private void updateView(List<FaceIdentification.FaceIdentificationResult> object, CameraExtension.FaceDetectionResult object2, boolean bl) {
        object2 = this.mController.mCameraDevice.getPreviewRect();
        if ((object = FaceDetectUtil.getFaceInformationList(object, this.getFaceDetectionResultCache(), (Rect)object2, this.mUserTouchFaceUuid)) == null) {
            return;
        }
        object.setUseSmileGuage(bl);
        this.mController.mCameraWindow.updateFaceRectangles((FaceInformationList)object);
    }

    public void changeFocusedFace(String string, Rect rect) {
        this.mUserTouchFaceUuid = string;
        this.updateView(null, this.getFaceDetectionResultCache(), false);
        this.mState.changeFocusedFace(rect);
    }

    public void clear() {
        this.stopFaceIdentification();
        this.stop();
    }

    public void enableFaceIdentification(boolean bl) {
        if (bl) {
            this.startFaceIdentification();
            return;
        }
        this.stopFaceIdentification();
    }

    public void faceLost() {
        this.mUserTouchFaceUuid = null;
        this.mController.mCameraWindow.disableTouchDetectedFace();
        this.mState.onFaceLost();
    }

    public CameraExtension.FaceDetectionCallback getFaceDetectionCallback() {
        return this.mFaceDetectionCallback;
    }

    public boolean isFaceDetect() {
        return this.mState.isFaceDetectionAvailable();
    }

    public void requestFaceId(CameraExtension.FaceDetectionResult faceDetectionResult) {
        if (!(this.mFaceIdentification == null || this.mFaceIdentification.isBusy())) {
            this.mController.mCameraDevice.getPreviewFrameRetriever().request(this.mOnPreviewFrameAvarableListener);
        }
    }

    public void start() {
        this.mState.start();
    }

    public void stop() {
        if (this.mState != null) {
            this.mState.stop();
        }
    }

    public void update(FocusMode focusMode, SmileCapture smileCapture) {
        CapturingMode capturingMode = this.mController.mControllerManager.getCapturingMode();
        this.mIsSmileCaptureOn = smileCapture.isSmileCaptureOn();
        if (this.mIsSmileCaptureOn) {
            this.mSmileLevel = smileCapture.getIntValue();
            this.setState(new NoSmileFaceDetected());
            return;
        }
        if (focusMode == FocusMode.FACE_DETECTION || capturingMode == CapturingMode.SUPERIOR_FRONT || capturingMode == CapturingMode.FRONT_PHOTO) {
            this.setState(new NoFaceDetected());
            this.mController.mCameraDevice.setFaceDetectionCallback((CameraExtension.FaceDetectionCallback)this.mFaceDetectionCallback);
            return;
        }
        this.setState(new NotAvailable());
    }

    public void updateFaceIdentify(List<FaceIdentification.FaceIdentificationResult> list) {
        this.mState.onFaceIdentified(list);
    }

    public void updateFaceRectangle(CameraExtension.FaceDetectionResult faceDetectionResult) {
        if (faceDetectionResult == null) {
            this.faceLost();
            return;
        }
        if (faceDetectionResult.extFaceList.size() > 0) {
            this.mState.onFaceDetected(faceDetectionResult);
            return;
        }
        this.faceLost();
    }

    private class FaceDetected
    extends FaceDetectionAvailable {
        public FaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
            super();
            this.onFaceDetected(faceDetectionResult);
        }

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
            FaceDetect.this.updateUuidBeforeUpdateView(faceDetectionResult);
            FaceDetect.this.updateView(null, faceDetectionResult, false);
            this.checkAndChangeFocusedFace(faceDetectionResult);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onFaceIdentified(List<FaceIdentification.FaceIdentificationResult> list) {
            if (FaceDetect.this.getFaceDetectionResultCache() == null || FaceDetect.access$100((FaceDetect)FaceDetect.this).extFaceList.size() == 0 || FaceDetect.this.mFaceIdentification == null) {
                return;
            }
            FaceDetect.this.updateView(list, FaceDetect.this.getFaceDetectionResultCache(), false);
            this.checkAndChangeFocusedFace(FaceDetect.this.getFaceDetectionResultCache());
        }

        @Override
        public void onFaceLost() {
            FaceDetect.access$000((FaceDetect)FaceDetect.this).mCameraWindow.clearFaceRectangles();
            FaceDetect.this.setState(new NoFaceDetected());
        }
    }

    private abstract class FaceDetectionAvailable
    implements FaceDetectionState {
        private FaceDetectionAvailable() {
        }

        @Override
        public void changeFocusedFace(Rect rect) {
            rect = PositionConverter.getInstance().convertFaceToDevice(rect);
            FaceDetect.access$000((FaceDetect)FaceDetect.this).mCameraDevice.setSelectedFacePosition(rect.centerX(), rect.centerY());
        }

        /*
         * Enabled aggressive block sorting
         */
        protected void checkAndChangeFocusedFace(CameraExtension.FaceDetectionResult faceDetectionResult) {
            NamedFace namedFace;
            if (!((FaceDetect.this.mIsFaceDetectionIdSupported == null || FaceDetect.this.mIsFaceDetectionIdSupported.booleanValue()) && FaceDetectUtil.isValidFaceDetectionResult(faceDetectionResult) && (namedFace = FaceDetect.access$000((FaceDetect)FaceDetect.this).mCameraWindow.getTopPriorityFace()) != null && !String.valueOf(((CameraExtension.ExtFace)faceDetectionResult.extFaceList.get((int)faceDetectionResult.indexOfSelectedFace)).face.id).equals(namedFace.mUuid))) {
                return;
            }
            this.changeFocusedFace(PositionConverter.getInstance().convertToView(namedFace.mFacePosition));
        }

        @Override
        public final boolean isFaceDetectionAvailable() {
            return true;
        }

        @Override
        public void onFaceIdentified(List<FaceIdentification.FaceIdentificationResult> list) {
        }

        @Override
        public final void start() {
            FaceDetect.access$000((FaceDetect)FaceDetect.this).mCameraDevice.setFaceDetectionCallback((CameraExtension.FaceDetectionCallback)FaceDetect.this.mFaceDetectionCallback);
            FaceDetect.access$000((FaceDetect)FaceDetect.this).mCameraDevice.startFaceDetection();
        }

        @Override
        public final void stop() {
            FaceDetect.this.stopFaceIdentification();
            FaceDetect.access$000((FaceDetect)FaceDetect.this).mCameraDevice.setFaceDetectionCallback(null);
            FaceDetect.access$000((FaceDetect)FaceDetect.this).mCameraDevice.stopFaceDetection();
            FaceDetect.access$000((FaceDetect)FaceDetect.this).mCameraWindow.hideFaceRectangles();
            Executor.cancelEvent(ControllerEvent.EV_FACE_DETECT);
            Executor.cancelEvent(ControllerEvent.EV_FACE_IDENTIFY);
        }
    }

    /*
     * Failed to analyse overrides
     */
    private class FaceDetectionCallback
    implements CameraExtension.FaceDetectionCallback {
        private FaceDetectionCallback() {
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public void onFaceDetection(CameraExtension.FaceDetectionResult faceDetectionResult) {
            if (faceDetectionResult == null) {
                return;
            }
            if (System.currentTimeMillis() - FaceDetect.this.mController.getTimeMillisForLastPictureTaken() < 1000) {
                if (FaceDetect.this.getFaceDetectionResultCache() == null) return;
                FaceDetect.this.setFaceDetectionResultCache(null);
                if (!FaceDetect.this.mIsSmileCaptureOn) return;
                Executor.postEvent(ControllerEvent.EV_FACE_DETECT, 0, null);
                return;
            }
            if (FaceDetect.this.mIsFaceDetectionIdSupported == null) {
                if (!faceDetectionResult.extFaceList.isEmpty()) {
                    FaceDetect.this.mIsFaceDetectionIdSupported = FaceDetectUtil.hasValidFaceId(faceDetectionResult);
                }
            } else if (!FaceDetect.this.mIsFaceDetectionIdSupported.booleanValue()) {
                FaceDetectUtil.setUuidFaceDetectionResult(faceDetectionResult);
            }
            FaceDetect.this.setFaceDetectionResultCache(faceDetectionResult);
            Executor.postEvent(ControllerEvent.EV_FACE_DETECT, 0, (Object)faceDetectionResult);
        }
    }

    private static interface FaceDetectionState {
        public void changeFocusedFace(Rect var1);

        public boolean isFaceDetectionAvailable();

        public void onFaceDetected(CameraExtension.FaceDetectionResult var1);

        public void onFaceIdentified(List<FaceIdentification.FaceIdentificationResult> var1);

        public void onFaceLost();

        public void start();

        public void stop();
    }

    private static class FaceIdentificationCallback
    implements FaceIdentification.FaceIdentificationCallback {
        private FaceIdentificationCallback() {
        }

        @Override
        public void onFaceIdentified(List<FaceIdentification.FaceIdentificationResult> list) {
            if (list == null) {
                return;
            }
            Executor.postEvent(ControllerEvent.EV_FACE_IDENTIFY, 0, list);
        }
    }

    private class MyOnPreviewFrameAvarableListener
    implements PreviewFrameRetriever.OnPreviewFrameAvarableListener {
        private MyOnPreviewFrameAvarableListener() {
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void onPreviewFrameAvarable(PreviewFrameRetriever object, byte[] object2) {
            boolean bl = true;
            if (FaceDetect.this.mFaceIdentification == null) {
                return;
            }
            object = object.getPreviewInfo();
            if (object2 != null && object != null) {
                if (object.width == 0) return;
                if (object.height == 0) return;
                Object object3 = FaceDetect.this.getFaceDetectionResultCache();
                if (object3 == null) return;
                if ((object3 = FaceDetectUtil.createFaceIdentificationRequest((CameraExtension.FaceDetectionResult)object3)) == null) return;
                if (CameraDevice.getCameraInfo(FaceDetect.access$000((FaceDetect)FaceDetect.this).mControllerManager.getCameraId()) == null) return;
                FaceDetect.this.mFaceIdentification.request((byte[])object2, object.format, object.width, object.height, FaceDetect.this.mController.getOrientation(), (List<FaceIdentification.FaceIdentificationRequest>)object3, new FaceIdentificationCallback());
                return;
            }
            CameraLogger.e(TAG, "onPreviewFrame: data or info is null.");
            String string = TAG;
            StringBuilder stringBuilder = new StringBuilder().append("data is null = ");
            boolean bl2 = object2 == null;
            object2 = stringBuilder.append(bl2).append("info is null = ");
            bl2 = object == null ? bl : false;
            CameraLogger.e(string, object2.append(bl2).toString());
        }
    }

    private class NoFaceDetected
    extends FaceDetectionAvailable {
        private NoFaceDetected() {
        }

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
            FaceDetect.this.setState(new FaceDetected(faceDetectionResult));
        }

        @Override
        public void onFaceLost() {
        }
    }

    private class NoSmileFaceDetected
    extends NoFaceDetected {
        private NoSmileFaceDetected() {
        }

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
            FaceDetect.this.setState(new SmileFaceDetected(faceDetectionResult));
        }
    }

    private final class NotAvailable
    extends Unknown {
        public NotAvailable() {
            super();
            FaceDetect.access$000((FaceDetect)FaceDetect.this).mCameraDevice.setFaceDetectionCallback(null);
        }

        @Override
        public boolean isFaceDetectionAvailable() {
            Parameters parameters = FaceDetect.access$000((FaceDetect)FaceDetect.this).mParameterManager.getParameters();
            if (parameters.capturingMode == CapturingMode.FRONT_PHOTO && parameters.getFocusMode() == FocusMode.FIXED || parameters.capturingMode == CapturingMode.SUPERIOR_FRONT && parameters.getFocusMode() == FocusMode.FIXED) {
                return true;
            }
            return false;
        }

        @Override
        public void start() {
            if (this.isFaceDetectionAvailable()) {
                FaceDetect.access$000((FaceDetect)FaceDetect.this).mCameraDevice.startFaceDetection();
            }
        }

        @Override
        public void stop() {
            if (this.isFaceDetectionAvailable()) {
                FaceDetect.access$000((FaceDetect)FaceDetect.this).mCameraDevice.stopFaceDetection();
            }
        }
    }

    private final class SmileFaceDetected
    extends FaceDetected {
        public SmileFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
            super(faceDetectionResult);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
            FaceDetect.this.updateUuidBeforeUpdateView(faceDetectionResult);
            NamedFace namedFace = FaceDetect.access$000((FaceDetect)FaceDetect.this).mCameraWindow.getTopPriorityFace();
            if (!FaceDetect.access$000((FaceDetect)FaceDetect.this).mEventDispatcher.isSelfTimerRunning()) {
                FaceDetect.this.updateView(null, faceDetectionResult, true);
                if (namedFace == null) return;
                {
                    this.checkAndChangeFocusedFace(faceDetectionResult);
                    if (namedFace.mSmileScore < FaceDetect.this.mSmileLevel) return;
                    {
                        Executor.sendEvent(ControllerEvent.EV_SMILE_CAPTURE, ControllerEventSource.OTHER);
                        return;
                    }
                }
            } else {
                FaceDetect.this.updateView(null, faceDetectionResult, false);
                if (namedFace == null) return;
                {
                    this.checkAndChangeFocusedFace(faceDetectionResult);
                    return;
                }
            }
        }

        @Override
        public void onFaceLost() {
            super.onFaceLost();
            FaceDetect.this.setState(new NoSmileFaceDetected());
        }
    }

    private class Unknown
    implements FaceDetectionState {
        private Unknown() {
        }

        @Override
        public void changeFocusedFace(Rect rect) {
        }

        @Override
        public boolean isFaceDetectionAvailable() {
            return false;
        }

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
        }

        @Override
        public void onFaceIdentified(List<FaceIdentification.FaceIdentificationResult> list) {
        }

        @Override
        public void onFaceLost() {
        }

        @Override
        public void start() {
        }

        @Override
        public void stop() {
        }
    }

}

