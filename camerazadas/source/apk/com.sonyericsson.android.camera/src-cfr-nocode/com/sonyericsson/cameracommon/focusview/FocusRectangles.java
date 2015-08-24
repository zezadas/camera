/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionResult
 *  com.sonyericsson.cameraextension.CameraExtension$ObjectTrackingResult
 */
package com.sonyericsson.cameracommon.focusview;

import android.app.Activity;
import android.graphics.Point;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.animation.FocusRectanglesAnimation;
import com.sonyericsson.cameracommon.focusview.FaceInformationList;
import com.sonyericsson.cameracommon.focusview.FocusActionListener;
import com.sonyericsson.cameracommon.focusview.FocusRectanglesViewList;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import com.sonyericsson.cameracommon.focusview.Rectangle;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import java.util.HashMap;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FocusRectangles {
    private static final int FACE_RECT_REFRESH_TIMEOUT = 200;
    private static final int FOCUS_RECT_SET_DOWN_ANIMATION_START_DELAY_TIME = 100;
    private static final String TAG;
    private static final int TRACKED_OBJECT_RECT_REFRESH_TIMEOUT = 1000;
    private Activity mActivity;
    private FocusRectanglesAnimation mAnimation;
    private View mCaptureArea;
    private int mCurrentOrientation;
    private State mCurrentState;
    private int mDevicePreviewHeight;
    private int mDevicePreviewWidth;
    private HashMap<String, TaggedRectangle> mFaceRectangles;
    private FocusActionListener mFocusEventListener;
    private Handler mHandler;
    private boolean mIsFaceTouchCaptureEnabled;
    private boolean mIsFocusAnimationEnabled;
    private boolean mIsRecording;
    private boolean mIsRectPositionMirrored;
    private CameraExtension.FaceDetectionResult mLastFaceDetectionResult;
    private String mLatestSelectedFaceUuid;
    private final OnFaceRectTouchListener mOnFaceRectTouchListener;
    private RelativeLayout mRectangles;
    private final RefreshTrackedObjectRectangleTask mRefreshTrackedObjectRectangleTask;
    private RelativeLayout mSingleAfRect;
    private RelativeLayout mTouchAfRect;
    private TaggedRectangle mTrackedObjectRectangle;
    private String mUserTouchFaceUuid;

    static;

    public FocusRectangles(Activity var1, FocusActionListener var2, int var3, int var4, FocusRectanglesViewList var5, View var6);

    static /* synthetic */ RelativeLayout access$000(FocusRectangles var0);

    static /* synthetic */ FocusRectanglesAnimation access$100(FocusRectangles var0);

    static /* synthetic */ void access$1100(FocusRectangles var0, List var1);

    static /* synthetic */ CameraExtension.FaceDetectionResult access$1200(FocusRectangles var0);

    static /* synthetic */ void access$1300(FocusRectangles var0, CameraExtension.ObjectTrackingResult var1);

    static /* synthetic */ HashMap access$1400(FocusRectangles var0);

    static /* synthetic */ String access$1500(FocusRectangles var0);

    static /* synthetic */ void access$1600(FocusRectangles var0, boolean var1);

    static /* synthetic */ Activity access$1700(FocusRectangles var0);

    static /* synthetic */ State access$1802(FocusRectangles var0, State var1);

    static /* synthetic */ void access$1900(FocusRectangles var0);

    static /* synthetic */ void access$200(FocusRectangles var0, Point var1, FocusSetType var2);

    static /* synthetic */ String access$2002(FocusRectangles var0, String var1);

    static /* synthetic */ void access$2100(FocusRectangles var0, List var1, CameraExtension.FaceDetectionResult var2, boolean var3);

    static /* synthetic */ void access$2200(FocusRectangles var0, String var1);

    static /* synthetic */ FocusActionListener access$2300(FocusRectangles var0);

    static /* synthetic */ boolean access$2400(FocusRectangles var0);

    static /* synthetic */ View access$2500(FocusRectangles var0);

    static /* synthetic */ boolean access$2600(FocusRectangles var0);

    static /* synthetic */ void access$400(FocusRectangles var0, State var1);

    static /* synthetic */ void access$500(FocusRectangles var0, CameraExtension.FaceDetectionResult var1, boolean var2);

    static /* synthetic */ RelativeLayout access$700(FocusRectangles var0);

    static /* synthetic */ void access$800(FocusRectangles var0);

    static /* synthetic */ TaggedRectangle access$900(FocusRectangles var0);

    private TaggedRectangle addTaggedRectangle(LayoutInflater var1, String var2, TaggedRectangle var3);

    private void changeFacePriority(String var1);

    private void changeState(State var1);

    private void faceResultToRectangles(List<FaceIdentification.FaceIdentificationResult> var1, CameraExtension.FaceDetectionResult var2, boolean var3);

    private void hideFaceRectangles(boolean var1);

    private void hideTrackedObjectRecgantle();

    private void initialize(FocusRectanglesViewList var1);

    private void onObjectTrackedInternal(CameraExtension.ObjectTrackingResult var1);

    private void playOnTouchDownAnimationForTouchFocusRect();

    private void playOnTouchUpAnimationForTouchFocusRect();

    private void playTouchFocusStartAnimation(FocusSetType var1);

    private void removeObjectFocusRectAnimation();

    private void removeSingleFocusRectAnimation();

    private void removeTouchFocusRectAnimation();

    private void resetFaceRectangleColor();

    private void resetObjectTrackingRectangleColor();

    private void resetRectanglesColor();

    private void resetSingleFocusRectangleColor();

    private void resetTouchFocusRectangleColor();

    private void setFocusPositionInternal(Point var1, FocusSetType var2);

    private void setRectSizeAndPosition(RelativeLayout var1, int var2, int var3, int var4, int var5);

    private void updateFaceNameData(List<FaceIdentification.FaceIdentificationResult> var1);

    private void updateFaceRectangles(FaceInformationList var1, int var2, boolean var3);

    private void updateFaceRectanglesData(CameraExtension.FaceDetectionResult var1, boolean var2);

    private void updateRectangle(TaggedRectangle var1, NamedFace var2, int var3, boolean var4);

    private void updateRectanglesCoordinates();

    protected void checkAndChangeFacePriority(CameraExtension.FaceDetectionResult var1);

    public void clearAllFocus();

    public void clearAllFocusExceptFace();

    public void clearExceptTouchFocus();

    public void clearFaceDetection();

    public void clearObjectTracking();

    public void clearSingleAutoFocus();

    public void clearTouchFocus();

    public void disableFaceTouchCapture();

    public void enableFaceTouchCapture();

    public boolean isRecording();

    public boolean isTouchFocus();

    public void onAutoFocusCanceled();

    public void onAutoFocusDone(boolean var1);

    public void onAutoFocusStarted();

    public void onFaceDetected(CameraExtension.FaceDetectionResult var1);

    public void onFaceLost();

    public void onFaceNameDetected(List<FaceIdentification.FaceIdentificationResult> var1);

    public void onObjectLost();

    public void onObjectTracked(CameraExtension.ObjectTrackingResult var1);

    public void onRecordingStart();

    public void onRecordingStop();

    public void onUiComponentOverlaid();

    public void onUiComponentRemoved();

    public void release();

    public void setFocusPosition(Point var1, FocusSetType var2);

    public void setMirrored(boolean var1);

    public void setOrientation(int var1);

    public void setUserTouchFaceUuid(String var1);

    public void setVisibility(int var1);

    public void startFaceDetection();

    public void startObjectTracking();

    public void updateDevicePreviewSize(int var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class DefaultFocusState
    implements State {
        final /* synthetic */ FocusRectangles this$0;

        DefaultFocusState(FocusRectangles var1);

        @Override
        public void clearExceptTouchFocus();

        @Override
        public void onAutoFocusCanceled();

        @Override
        public void onAutoFocusDone(boolean var1);

        @Override
        public void onAutoFocusStarted();

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult var1);

        @Override
        public void onFaceLost();

        @Override
        public void onFaceNameDetected(List<FaceIdentification.FaceIdentificationResult> var1);

        @Override
        public void onObjectLost();

        @Override
        public void onTrackedObjectStateUpdated(CameraExtension.ObjectTrackingResult var1);

        @Override
        public void onUiComponentOverlaid();

        @Override
        public void onUiComponentRemoved();

        @Override
        public void setFocusPosition(Point var1, FocusSetType var2);

        @Override
        public void startFaceDetection();

        @Override
        public void startObjectTracking();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class FaceDetectionState
    extends DefaultFocusState {
        final /* synthetic */ FocusRectangles this$0;

        private FaceDetectionState(FocusRectangles var1);

        /* synthetic */ FaceDetectionState(FocusRectangles var1,  var2);

        private boolean isFaceRectAvailable();

        @Override
        public void onAutoFocusDone(boolean var1);

        @Override
        public void onAutoFocusStarted();

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult var1);

        @Override
        public void onFaceLost();

        @Override
        public void onFaceNameDetected(List<FaceIdentification.FaceIdentificationResult> var1);

        @Override
        public void onObjectLost();

        @Override
        public void onTrackedObjectStateUpdated(CameraExtension.ObjectTrackingResult var1);

        @Override
        public void setFocusPosition(Point var1, FocusSetType var2);

        @Override
        public void startFaceDetection();

        @Override
        public void startObjectTracking();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class FocusRectEvent
    extends Enum<FocusRectEvent> {
        private static final /* synthetic */ FocusRectEvent[] $VALUES;
        public static final /* enum */ FocusRectEvent CLEAR_ALL;
        public static final /* enum */ FocusRectEvent ON_AUTO_FOCUS_DONE;
        public static final /* enum */ FocusRectEvent ON_AUTO_FOCUS_STARTED;
        public static final /* enum */ FocusRectEvent ON_FACE_DETECTED;
        public static final /* enum */ FocusRectEvent ON_FACE_LOST;
        public static final /* enum */ FocusRectEvent ON_OBJECT_LOST;
        public static final /* enum */ FocusRectEvent ON_OBJECT_TRACKED;
        public static final /* enum */ FocusRectEvent ON_UI_COMPONENT_OVERLAID;
        public static final /* enum */ FocusRectEvent ON_UI_COMPONENT_REMOVED;
        public static final /* enum */ FocusRectEvent SET_FOCUS_POSITION;
        public static final /* enum */ FocusRectEvent START_FACE_DETECTION;
        public static final /* enum */ FocusRectEvent START_OBJECT_TRACKING;

        static;

        private FocusRectEvent();

        public static FocusRectEvent valueOf(String var0);

        public static FocusRectEvent[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static final class FocusRectangleType
    extends Enum<FocusRectangleType> {
        private static final /* synthetic */ FocusRectangleType[] $VALUES;
        public static final /* enum */ FocusRectangleType FACE;
        public static final /* enum */ FocusRectangleType FAST_OBJECT_TRACKING;
        public static final /* enum */ FocusRectangleType FAST_SINGLE;
        public static final /* enum */ FocusRectangleType FAST_TOUCH;

        static;

        private FocusRectangleType();

        public static FocusRectangleType valueOf(String var0);

        public static FocusRectangleType[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class FocusSetType
    extends Enum<FocusSetType> {
        private static final /* synthetic */ FocusSetType[] $VALUES;
        public static final /* enum */ FocusSetType FIRST;
        public static final /* enum */ FocusSetType MOVE;
        public static final /* enum */ FocusSetType RELEASE;

        static;

        private FocusSetType();

        public static FocusSetType valueOf(String var0);

        public static FocusSetType[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ObjectTrackingState
    extends DefaultFocusState {
        final /* synthetic */ FocusRectangles this$0;

        private ObjectTrackingState(FocusRectangles var1);

        /* synthetic */ ObjectTrackingState(FocusRectangles var1,  var2);

        @Override
        public void onAutoFocusDone(boolean var1);

        @Override
        public void onAutoFocusStarted();

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult var1);

        @Override
        public void onFaceLost();

        @Override
        public void onFaceNameDetected(List<FaceIdentification.FaceIdentificationResult> var1);

        @Override
        public void onObjectLost();

        @Override
        public void onTrackedObjectStateUpdated(CameraExtension.ObjectTrackingResult var1);

        @Override
        public void setFocusPosition(Point var1, FocusSetType var2);

        @Override
        public void startFaceDetection();

        @Override
        public void startObjectTracking();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class OnFaceRectTouchListener
    implements Rectangle.RectangleOnTouchListener {
        final /* synthetic */ FocusRectangles this$0;

        OnFaceRectTouchListener(FocusRectangles var1);

        private boolean isTouchAreaOnTouchCapture(MotionEvent var1);

        @Override
        public void onRectTouchCancel(View var1, MotionEvent var2);

        @Override
        public void onRectTouchDown(View var1, MotionEvent var2);

        @Override
        public void onRectTouchLongPress(MotionEvent var1);

        @Override
        public void onRectTouchUp(View var1, MotionEvent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class RefreshTrackedObjectRectangleTask
    implements Runnable {
        final /* synthetic */ FocusRectangles this$0;

        RefreshTrackedObjectRectangleTask(FocusRectangles var1);

        @Override
        public void run();
    }

    private static interface State {
        public void clearExceptTouchFocus();

        public void onAutoFocusCanceled();

        public void onAutoFocusDone(boolean var1);

        public void onAutoFocusStarted();

        public void onFaceDetected(CameraExtension.FaceDetectionResult var1);

        public void onFaceLost();

        public void onFaceNameDetected(List<FaceIdentification.FaceIdentificationResult> var1);

        public void onObjectLost();

        public void onTrackedObjectStateUpdated(CameraExtension.ObjectTrackingResult var1);

        public void onUiComponentOverlaid();

        public void onUiComponentRemoved();

        public void setFocusPosition(Point var1, FocusSetType var2);

        public void startFaceDetection();

        public void startObjectTracking();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class TouchFocusState
    extends DefaultFocusState {
        final /* synthetic */ FocusRectangles this$0;

        private TouchFocusState(FocusRectangles var1);

        /* synthetic */ TouchFocusState(FocusRectangles var1,  var2);

        @Override
        public void onAutoFocusCanceled();

        @Override
        public void onAutoFocusDone(boolean var1);

        @Override
        public void onAutoFocusStarted();

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult var1);

        @Override
        public void onFaceLost();

        @Override
        public void onObjectLost();

        @Override
        public void onTrackedObjectStateUpdated(CameraExtension.ObjectTrackingResult var1);

        @Override
        public void onUiComponentRemoved();

        @Override
        public void setFocusPosition(Point var1, FocusSetType var2);

        @Override
        public void startFaceDetection();

        @Override
        public void startObjectTracking();
    }

}

