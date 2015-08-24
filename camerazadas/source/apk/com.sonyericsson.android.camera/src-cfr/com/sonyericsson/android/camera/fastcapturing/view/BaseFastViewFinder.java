/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing.view;

import android.view.LayoutInflater;
import android.view.animation.Animation;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.fastcapturing.CameraDeviceHandler;
import com.sonyericsson.android.camera.fastcapturing.StateMachine;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCapture;

public interface BaseFastViewFinder {
    public void checkSurfaceIsPreparedOrNot();

    public void closeCapturingModeSelector();

    public void ensureVideoAutoReviewSettingHasLoaded();

    public void fadeoutCounter();

    public AutoReview getAutoReviewSetting();

    public int getOrientation();

    public SelfTimer getPhotoSelfTimerSetting();

    public int getRequestId(boolean var1);

    public TouchCapture getTouchCapture();

    public VideoAutoReview getVideoAutoReviewSetting();

    public void hideHudIcons();

    public boolean isCapturingModeSelectorOpened();

    public boolean isHeadUpDesplayReady();

    public boolean isSetupHeadupDisplayInvoked();

    public boolean isTouchFocus();

    public void onCaptureDone();

    public void onShutterDone(boolean var1);

    public void removeEarlyThumbnailView();

    public void requestInflate(LayoutInflater var1);

    public /* varargs */ void sendViewUpdateEvent(ViewUpdateEvent var1, Object ... var2);

    public void setCameraDevice(CameraDeviceHandler var1);

    public void setContentView();

    public void setRecordingOrientation(int var1);

    public void setStateMachine(StateMachine var1);

    public void startCaptureFeedbackAnimation();

    public void startEarlyThumbnailInsertAnimation(int var1, Animation.AnimationListener var2);

    public void startHideThumbnail();

    public void updateGeotagIcon();

    public static enum HeadUpDisplaySetupState {
        PHOTO_STANDBY,
        PHOTO_CAPTURE,
        VIDEO_STANDBY,
        VIDEO_RECORDING,
        VIDEO_PAUSING;
        

        private HeadUpDisplaySetupState() {
        }
    }

    public static enum UiComponentKind {
        ZOOM_BAR,
        SETTING_DIALOG,
        OVERLAY_ALERT_DIALOG,
        REVIEW_WINDOW;
        

        private UiComponentKind() {
        }
    }

    public static enum ViewUpdateEvent {
        EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY,
        EVENT_REQUEST_RESIZE_EVF_SCOPE,
        EVENT_REQUEST_CHECK_SURFACE_PREPARED,
        EVENT_REQUEST_HIDE_SURFACE,
        EVENT_REQUEST_SHOW_SURFACE,
        EVENT_REQUEST_HIDE_REMAIN_INDICATOR,
        EVENT_REQUEST_SHOW_REMAIN_INDICATOR,
        EVENT_REQUEST_PREPARE_RECORDING_INDICATOR,
        EVENT_ON_CAMERA_MODE_CHANGED_TO,
        EVENT_ON_DETECTED_SCENE_CHANGED,
        EVENT_ON_FACE_DETECTION_STARTED,
        EVENT_ON_FACE_DETECTED,
        EVENT_ON_FACE_NAME_DETECTED,
        EVENT_ON_OBJECT_TRACKING_STARTED,
        EVENT_ON_TRACKED_OBJECT_STATE_UPDATED,
        EVENT_ON_ZOOM_CHANGED,
        EVENT_ON_FOCUS_POSITION_SELECTED,
        EVENT_ON_FOCUS_POSITION_RELEASED,
        EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE,
        EVENT_ON_RECORDING_PROGRESS,
        EVENT_ON_ORIENTATION_CHANGED,
        EVENT_ON_AF_CANCELED,
        EVENT_ON_SELFTIMER_FINISHED,
        EVENT_UPDATE_DIALOGS,
        EVENT_CLOSE_DIALOGS,
        EVENT_REQUEST_SHOW_AUTO_REVIEW,
        EVENT_REQUEST_SHOW_INSTANT_VIEWER,
        EVENT_REQUEST_SHOW_ICONS_ON_REVIEW_WINDOW,
        EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION,
        EVENT_REQUEST_SET_EARLY_THUMBNAIL,
        EVENT_REQUEST_REMOVE_EARLY_THUMBNAIL,
        EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION,
        EVEVT_REQUEST_ADD_COUNT_UP_VIEW,
        EVENT_REQUEST_UPDATE_COUNT_UP_VIEW,
        EVEVT_REQUEST_REMOVE_COUNT_UP_VIEW,
        EVENT_ON_LAZY_INITIALIZATION_TASK_RUN,
        EVENT_ON_ADD_VIDEO_CHAPTER,
        EVENT_ON_NOTIFY_THERMAL_NORMAL,
        EVENT_ON_NOTIFY_THERMAL_WARNING,
        EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY;
        

        private ViewUpdateEvent() {
        }
    }

}

