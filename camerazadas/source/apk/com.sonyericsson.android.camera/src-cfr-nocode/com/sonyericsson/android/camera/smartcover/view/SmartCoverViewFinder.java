/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$SceneRecognitionResult
 */
package com.sonyericsson.android.camera.smartcover.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.fastcapturing.CameraDeviceHandler;
import com.sonyericsson.android.camera.fastcapturing.StateMachine;
import com.sonyericsson.android.camera.fastcapturing.view.BaseFastViewFinder;
import com.sonyericsson.android.camera.fastcapturing.view.CaptureArea;
import com.sonyericsson.android.camera.smartcover.SmartCoverActivity;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCapture;
import com.sonyericsson.cameracommon.contentsview.ContentPallet;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.focusview.FocusActionListener;
import com.sonyericsson.cameracommon.mediasaving.StorageAutoSwitchController;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.viewfinder.LayoutPattern;
import com.sonyericsson.cameracommon.viewfinder.ViewFinder;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.coversupport.CoverModeHandler;

/*
 * Failed to analyse overrides
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SmartCoverViewFinder
extends ViewFinder
implements StateMachine.OnStateChangedListener,
SurfaceHolder.Callback,
ContentResolverUtilListener,
StorageAutoSwitchController.StorageAutoSwitchListener,
FocusActionListener,
BaseFastViewFinder {
    public static final String ACTION_COVER_MODE_ALBUM = "com.sonymobile.coverapp.ACTION_COVER_MODE_ALBUM";
    private static final OnScreenButton.Resource BACK_BUTTON_NOT_PRESSED;
    private static final OnScreenButton.Resource BACK_BUTTON_PRESSED;
    private static final String TAG;
    private SmartCoverActivity mActivity;
    private OnScreenButton mBackButton;
    private CameraDeviceHandler mCameraDevice;
    private CaptureFeedback mCaptureFeedback;
    private CoverModeHandler.WindowInfo mCoverModeWindowInfo;
    private Boolean mIsFaceDetectionIdSupported;
    private boolean mIsSetupHeadupDisplayInvoked;
    private StateMachine mStateMachine;
    private SurfaceHolder mSurfaceHolder;
    private SurfaceView mSurfaceView;
    private TouchCapture mTouchCapture;
    private CaptureArea mViewFinderCaptureArea;

    static;

    public SmartCoverViewFinder(Context var1);

    static /* synthetic */ void access$000(SmartCoverViewFinder var0, SurfaceHolder var1, int var2, int var3);

    static /* synthetic */ StateMachine access$100(SmartCoverViewFinder var0);

    static /* synthetic */ OnScreenButton.Resource access$300();

    static /* synthetic */ OnScreenButton.Resource access$400();

    static /* synthetic */ SmartCoverActivity access$500(SmartCoverViewFinder var0);

    private void addBackButton();

    private void changeScreenButtonImage(BaseFastViewFinder.HeadUpDisplaySetupState var1);

    private void changeToPauseView();

    private void changeToPhotoCaptureView();

    private void changeToPhotoCaptureWaitForAfDoneView();

    private void changeToPhotoFocusDoneView(Boolean var1);

    private void changeToPhotoFocusSearchView();

    private void changeToPhotoFocusView();

    private void changeToPhotoIdleView(boolean var1);

    private void changeToPhotoZoomingView();

    private void checkSurfaceIsPreparedOrNot(SurfaceHolder var1, int var2, int var3);

    public static final boolean isNearSameSize(Rect var0, Rect var1);

    private void loadSettingsFromSharedPreferencesDeviceAndResourcees();

    private static void logPerformance(String var0);

    private void notifyOnEvfPrepared(Rect var1);

    private void onSceneModeChanged(CameraExtension.SceneRecognitionResult var1);

    private void onSurfaceAvailableInternal(SurfaceHolder var1, int var2, int var3);

    private /* varargs */ void onViewFinderStateChanged(StateMachine.CaptureState var1, Object ... var2);

    private void pauseView();

    private void removeBackButton();

    private void resizeEvfScope(int var1, int var2);

    private void resizeViewfinderSize();

    private void resumeView();

    private void setEarlyThumbnailView(View var1);

    private void setupBackButton();

    private void setupCaptureArea(BaseFastViewFinder.HeadUpDisplaySetupState var1);

    private void setupContentsView();

    private void setupHeadUpDisplay(BaseFastViewFinder.HeadUpDisplaySetupState var1);

    private void setupOnScreenCaptureButton(BaseFastViewFinder.HeadUpDisplaySetupState var1);

    private void setupRightContainer();

    private RelativeLayout setupViewFinderLayout();

    private void startEarlyThumbnailInsertAnimation(int var1);

    private void updateViewFinderCaptureAreaTouchEventHandling();

    public boolean canSwitchStorage();

    public void changeLayoutTo(LayoutPattern var1);

    public void checkSurfaceIsPreparedOrNot();

    protected Rect computePreviewRect(Activity var1, int var2, int var3);

    public void ensureVideoAutoReviewSettingHasLoaded();

    public void fadeoutCounter();

    public AutoReview getAutoReviewSetting();

    public int getOrientation();

    public SelfTimer getPhotoSelfTimerSetting();

    public int getRequestId(boolean var1);

    protected ContentPallet.ThumbnailClickListener getThumbnailClickListener();

    public TouchCapture getTouchCapture();

    public VideoAutoReview getVideoAutoReviewSetting();

    public void hideHudIcons();

    public boolean isSetupHeadupDisplayInvoked();

    public boolean isTouchFocus();

    public void onCanceled();

    public void onCloseCapturingModeSelector();

    public void onCloseStorageDialog();

    public void onDeleted(boolean var1, Uri var2);

    public void onFaceSelected(Point var1);

    public void onLayoutOrientationChanged(BaseActivity.LayoutOrientation var1);

    public void onLongPressed();

    public void onModeFinish();

    public void onModeSelect(String var1);

    protected void onOpenCapturingModeSelector();

    public void onOpenStorageDialog();

    public void onReleased();

    public /* varargs */ void onStateChanged(StateMachine.CaptureState var1, Object ... var2);

    public void onStorageAutoSwitch(String var1);

    public void onTouched();

    public void removeEarlyThumbnailView();

    public void requestInflate(LayoutInflater var1);

    public /* varargs */ void sendViewUpdateEvent(BaseFastViewFinder.ViewUpdateEvent var1, Object ... var2);

    public void setCameraDevice(CameraDeviceHandler var1);

    public void setContentView();

    public void setCoverModeSizeInPixel(CoverModeHandler.WindowInfo var1);

    protected void setOrientation(int var1);

    public void setRecordingOrientation(int var1);

    public void setStateMachine(StateMachine var1);

    public boolean shouldShowDialogOnStorageSettingChangedToInternal();

    public void startCaptureFeedbackAnimation();

    public void startEarlyThumbnailInsertAnimation(int var1, Animation.AnimationListener var2);

    public void startHideThumbnail();

    public void surfaceChanged(SurfaceHolder var1, int var2, int var3, int var4);

    public void surfaceCreated(SurfaceHolder var1);

    public void surfaceDestroyed(SurfaceHolder var1);

    public void updateGeotagIcon();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class BackButtonListener
    implements OnScreenButtonListener {
        final /* synthetic */ SmartCoverViewFinder this$0;

        private BackButtonListener(SmartCoverViewFinder var1);

        /* synthetic */ BackButtonListener(SmartCoverViewFinder var1,  var2);

        @Override
        public void onCancel(OnScreenButton var1, MotionEvent var2);

        @Override
        public void onDispatchDraw(OnScreenButton var1, Canvas var2);

        @Override
        public void onDown(OnScreenButton var1, MotionEvent var2);

        @Override
        public void onMove(OnScreenButton var1, MotionEvent var2);

        @Override
        public void onUp(OnScreenButton var1, MotionEvent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnScreenCaptureButtonStateListener
    implements OnScreenButtonListener {
        final /* synthetic */ SmartCoverViewFinder this$0;

        private OnScreenCaptureButtonStateListener(SmartCoverViewFinder var1);

        /* synthetic */ OnScreenCaptureButtonStateListener(SmartCoverViewFinder var1,  var2);

        @Override
        public void onCancel(OnScreenButton var1, MotionEvent var2);

        @Override
        public void onDispatchDraw(OnScreenButton var1, Canvas var2);

        @Override
        public void onDown(OnScreenButton var1, MotionEvent var2);

        @Override
        public void onMove(OnScreenButton var1, MotionEvent var2);

        @Override
        public void onUp(OnScreenButton var1, MotionEvent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class ReTrySetupHeadUpDisplayTask
    implements Runnable {
        final /* synthetic */ SmartCoverViewFinder this$0;

        ReTrySetupHeadUpDisplayTask(SmartCoverViewFinder var1);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SurfaceAvailableRetryTask
    implements Runnable {
        private final int mHeight;
        private final SurfaceHolder mSurface;
        private final int mWidth;
        final /* synthetic */ SmartCoverViewFinder this$0;

        SurfaceAvailableRetryTask(SmartCoverViewFinder var1, SurfaceHolder var2, int var3, int var4);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ViewFinderPinchZoomListener
    implements CaptureArea.CaptureAreaStateListener {
        final /* synthetic */ SmartCoverViewFinder this$0;

        public ViewFinderPinchZoomListener(SmartCoverViewFinder var1, int var2);

        @Override
        public void onCaptureAreaCanceled();

        @Override
        public void onCaptureAreaIsReadyToScale();

        @Override
        public void onCaptureAreaLongPressed(Point var1);

        @Override
        public void onCaptureAreaMoved(Point var1);

        @Override
        public void onCaptureAreaReleased(Point var1);

        @Override
        public void onCaptureAreaScaled(float var1);

        @Override
        public void onCaptureAreaSingleTapUp(Point var1);

        @Override
        public void onCaptureAreaStopped();

        @Override
        public void onCaptureAreaTouched(Point var1);
    }

}

