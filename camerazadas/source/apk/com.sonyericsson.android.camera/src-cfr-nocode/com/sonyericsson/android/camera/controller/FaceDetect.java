/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionCallback
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionResult
 */
package com.sonyericsson.android.camera.controller;

import android.graphics.Rect;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.device.PreviewFrameRetriever;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FaceDetect {
    private static final int FACE_DETECTION_RESULT_REFRESH_TIMEOUT = 1000;
    private static final String TAG;
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

    static;

    public FaceDetect(CameraFunctions var1);

    static /* synthetic */ CameraFunctions access$000(FaceDetect var0);

    static /* synthetic */ CameraExtension.FaceDetectionResult access$100(FaceDetect var0);

    static /* synthetic */ FaceDetectionCallback access$1300(FaceDetect var0);

    static /* synthetic */ void access$1400(FaceDetect var0);

    static /* synthetic */ void access$1600(FaceDetect var0, FaceDetectionState var1);

    static /* synthetic */ void access$1700(FaceDetect var0, CameraExtension.FaceDetectionResult var1);

    static /* synthetic */ void access$1800(FaceDetect var0, List var1, CameraExtension.FaceDetectionResult var2, boolean var3);

    static /* synthetic */ int access$1900(FaceDetect var0);

    static /* synthetic */ void access$200(FaceDetect var0, CameraExtension.FaceDetectionResult var1);

    static /* synthetic */ boolean access$300(FaceDetect var0);

    static /* synthetic */ Boolean access$400(FaceDetect var0);

    static /* synthetic */ Boolean access$402(FaceDetect var0, Boolean var1);

    static /* synthetic */ FaceIdentification access$500(FaceDetect var0);

    static /* synthetic */ String access$600();

    private CameraExtension.FaceDetectionResult getFaceDetectionResultCache();

    private void setFaceDetectionResultCache(CameraExtension.FaceDetectionResult var1);

    private void setState(FaceDetectionState var1);

    private void startFaceIdentification();

    private void stopFaceIdentification();

    private void updateUuidBeforeUpdateView(CameraExtension.FaceDetectionResult var1);

    private void updateView(List<FaceIdentification.FaceIdentificationResult> var1, CameraExtension.FaceDetectionResult var2, boolean var3);

    public void changeFocusedFace(String var1, Rect var2);

    public void clear();

    public void enableFaceIdentification(boolean var1);

    public void faceLost();

    public CameraExtension.FaceDetectionCallback getFaceDetectionCallback();

    public boolean isFaceDetect();

    public void requestFaceId(CameraExtension.FaceDetectionResult var1);

    public void start();

    public void stop();

    public void update(FocusMode var1, SmileCapture var2);

    public void updateFaceIdentify(List<FaceIdentification.FaceIdentificationResult> var1);

    public void updateFaceRectangle(CameraExtension.FaceDetectionResult var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class FaceDetected
    extends FaceDetectionAvailable {
        final /* synthetic */ FaceDetect this$0;

        public FaceDetected(FaceDetect var1, CameraExtension.FaceDetectionResult var2);

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult var1);

        @Override
        public void onFaceIdentified(List<FaceIdentification.FaceIdentificationResult> var1);

        @Override
        public void onFaceLost();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class FaceDetectionAvailable
    implements FaceDetectionState {
        final /* synthetic */ FaceDetect this$0;

        private FaceDetectionAvailable(FaceDetect var1);

        /* synthetic */ FaceDetectionAvailable(FaceDetect var1,  var2);

        @Override
        public void changeFocusedFace(Rect var1);

        protected void checkAndChangeFocusedFace(CameraExtension.FaceDetectionResult var1);

        @Override
        public final boolean isFaceDetectionAvailable();

        @Override
        public void onFaceIdentified(List<FaceIdentification.FaceIdentificationResult> var1);

        @Override
        public final void start();

        @Override
        public final void stop();
    }

    /*
     * Failed to analyse overrides
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class FaceDetectionCallback
    implements CameraExtension.FaceDetectionCallback {
        final /* synthetic */ FaceDetect this$0;

        private FaceDetectionCallback(FaceDetect var1);

        /* synthetic */ FaceDetectionCallback(FaceDetect var1,  var2);

        public void onFaceDetection(CameraExtension.FaceDetectionResult var1);
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

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class FaceIdentificationCallback
    implements FaceIdentification.FaceIdentificationCallback {
        private FaceIdentificationCallback();

        /* synthetic */ FaceIdentificationCallback( var1);

        @Override
        public void onFaceIdentified(List<FaceIdentification.FaceIdentificationResult> var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class MyOnPreviewFrameAvarableListener
    implements PreviewFrameRetriever.OnPreviewFrameAvarableListener {
        final /* synthetic */ FaceDetect this$0;

        private MyOnPreviewFrameAvarableListener(FaceDetect var1);

        /* synthetic */ MyOnPreviewFrameAvarableListener(FaceDetect var1,  var2);

        @Override
        public void onPreviewFrameAvarable(PreviewFrameRetriever var1, byte[] var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NoFaceDetected
    extends FaceDetectionAvailable {
        final /* synthetic */ FaceDetect this$0;

        private NoFaceDetected(FaceDetect var1);

        /* synthetic */ NoFaceDetected(FaceDetect var1,  var2);

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult var1);

        @Override
        public void onFaceLost();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NoSmileFaceDetected
    extends NoFaceDetected {
        final /* synthetic */ FaceDetect this$0;

        private NoSmileFaceDetected(FaceDetect var1);

        /* synthetic */ NoSmileFaceDetected(FaceDetect var1,  var2);

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class NotAvailable
    extends Unknown {
        final /* synthetic */ FaceDetect this$0;

        public NotAvailable(FaceDetect var1);

        @Override
        public boolean isFaceDetectionAvailable();

        @Override
        public void start();

        @Override
        public void stop();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class SmileFaceDetected
    extends FaceDetected {
        final /* synthetic */ FaceDetect this$0;

        public SmileFaceDetected(FaceDetect var1, CameraExtension.FaceDetectionResult var2);

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult var1);

        @Override
        public void onFaceLost();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class Unknown
    implements FaceDetectionState {
        final /* synthetic */ FaceDetect this$0;

        private Unknown(FaceDetect var1);

        /* synthetic */ Unknown(FaceDetect var1,  var2);

        @Override
        public void changeFocusedFace(Rect var1);

        @Override
        public boolean isFaceDetectionAvailable();

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult var1);

        @Override
        public void onFaceIdentified(List<FaceIdentification.FaceIdentificationResult> var1);

        @Override
        public void onFaceLost();

        @Override
        public void start();

        @Override
        public void stop();
    }

}

