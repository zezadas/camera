/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$ExtFace
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionResult
 *  com.sonyericsson.cameraextension.CameraExtension$ObjectTrackingResult
 */
package com.sonyericsson.cameracommon.focusview;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Handler;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.animation.FocusRectanglesAnimation;
import com.sonyericsson.cameracommon.focusview.CommonResources;
import com.sonyericsson.cameracommon.focusview.FaceInformationList;
import com.sonyericsson.cameracommon.focusview.FocusActionListener;
import com.sonyericsson.cameracommon.focusview.FocusRectanglesViewList;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import com.sonyericsson.cameracommon.focusview.Rectangle;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonyericsson.cameracommon.utility.FaceDetectUtil;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class FocusRectangles {
    private static final int FACE_RECT_REFRESH_TIMEOUT = 200;
    private static final int FOCUS_RECT_SET_DOWN_ANIMATION_START_DELAY_TIME = 100;
    private static final String TAG = FocusRectangles.class.getSimpleName();
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
    private Handler mHandler = new Handler();
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

    public FocusRectangles(Activity activity, FocusActionListener focusActionListener, int n, int n2, FocusRectanglesViewList focusRectanglesViewList, View view) {
        this.mRefreshTrackedObjectRectangleTask = new RefreshTrackedObjectRectangleTask();
        this.mOnFaceRectTouchListener = new OnFaceRectTouchListener();
        this.mIsFaceTouchCaptureEnabled = false;
        this.mIsFocusAnimationEnabled = false;
        this.mCurrentState = new DefaultFocusState();
        this.mIsRecording = false;
        this.mLatestSelectedFaceUuid = null;
        this.mUserTouchFaceUuid = null;
        this.mCurrentOrientation = 2;
        this.mIsRectPositionMirrored = false;
        this.mActivity = activity;
        this.mFocusEventListener = focusActionListener;
        this.mDevicePreviewWidth = n;
        this.mDevicePreviewHeight = n2;
        this.mAnimation = new FocusRectanglesAnimation(this.mActivity);
        this.mCaptureArea = view;
        this.initialize(focusRectanglesViewList);
    }

    /*
     * Enabled aggressive block sorting
     */
    private TaggedRectangle addTaggedRectangle(LayoutInflater layoutInflater, String string, TaggedRectangle taggedRectangle) {
        if (this.mFaceRectangles.size() >= 5) {
            return null;
        }
        Rect rect = new Rect();
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        if (taggedRectangle == null) {
            taggedRectangle = (TaggedRectangle)layoutInflater.inflate(R.layout.face_rectangle, null);
        }
        this.mRectangles.addView((View)taggedRectangle, layoutParams);
        taggedRectangle.prepare(0);
        taggedRectangle.setRectSize(rect.width(), rect.height());
        taggedRectangle.setRectCenter(rect.centerX(), rect.centerY());
        taggedRectangle.setRectangleOnTouchListener(this.mOnFaceRectTouchListener);
        this.mFaceRectangles.put(string, taggedRectangle);
        return taggedRectangle;
    }

    private void changeFacePriority(String object) {
        TaggedRectangle taggedRectangle = this.mFaceRectangles.get(object);
        if (taggedRectangle == null) {
            CameraLogger.e(TAG, "changeFacePriority() faceUuid " + (String)object + " not found.");
            return;
        }
        object = taggedRectangle.getFaceRect();
        object = PositionConverter.getInstance().convertFaceToDevice((Rect)object);
        object = new Point(object.centerX(), object.centerY());
        this.mFocusEventListener.onFaceSelected((Point)object);
    }

    private void changeState(State state) {
        this.mCurrentState = state;
    }

    private void faceResultToRectangles(List<FaceIdentification.FaceIdentificationResult> object, CameraExtension.FaceDetectionResult object2, boolean bl) {
        object2 = new Rect(0, 0, this.mDevicePreviewWidth, this.mDevicePreviewHeight);
        if ((object = FaceDetectUtil.getFaceInformationList(object, this.mLastFaceDetectionResult, (Rect)object2, this.mUserTouchFaceUuid)) == null) {
            return;
        }
        this.updateFaceRectangles((FaceInformationList)object, this.mCurrentOrientation, bl);
    }

    private void hideFaceRectangles(boolean bl) {
        for (String string : this.mFaceRectangles.keySet()) {
            if (bl) {
                this.mFaceRectangles.get(string).changeRectangleResource(0);
            }
            this.mFaceRectangles.get(string).hide();
        }
    }

    private void hideTrackedObjectRecgantle() {
        this.mTrackedObjectRectangle.setVisibility(4);
    }

    private void initialize(FocusRectanglesViewList object) {
        Object object2;
        int n;
        this.mRectangles = object.rectanglesContainer;
        LayoutInflater layoutInflater = this.mActivity.getLayoutInflater();
        this.mFaceRectangles = new HashMap();
        Object object3 = null;
        if (object.faceViewList != null) {
            object3 = object.faceViewList;
        }
        for (n = 0; n < 5; ++n) {
            object2 = null;
            if (object3 != null) {
                object2 = (TaggedRectangle)object3[n];
            }
            this.addTaggedRectangle(layoutInflater, "Dummy" + n, (TaggedRectangle)object2);
        }
        this.mTrackedObjectRectangle = object.trackedObjectView;
        if (this.mTrackedObjectRectangle == null) {
            this.mTrackedObjectRectangle = (TaggedRectangle)layoutInflater.inflate(R.layout.face_rectangle, null);
        }
        object3 = (ImageView)this.mTrackedObjectRectangle.findViewById(R.id.rect_image);
        object2 = object3.getLayoutParams();
        FocusRectanglesAnimation.AnimationConfig animationConfig = this.mAnimation.getObjectAnimationConfig();
        object2.width = animationConfig.mToWidth;
        object2.height = animationConfig.mToHeight;
        object3.setLayoutParams((ViewGroup.LayoutParams)object2);
        this.mTrackedObjectRectangle.setVisibility(4);
        object3 = new ViewGroup.LayoutParams(-1, -1);
        this.mRectangles.addView((View)this.mTrackedObjectRectangle, (ViewGroup.LayoutParams)object3);
        this.mTrackedObjectRectangle.prepare(3);
        n = this.mActivity.getResources().getDimensionPixelSize(R.dimen.focus_rect_object_width);
        int n2 = this.mActivity.getResources().getDimensionPixelSize(R.dimen.focus_rect_object_height);
        this.mTrackedObjectRectangle.setRectImageSize(n, n2);
        this.mSingleAfRect = object.singleAfView;
        if (this.mSingleAfRect == null) {
            this.mSingleAfRect = (RelativeLayout)layoutInflater.inflate(R.layout.fast_capturing_auto_focus_rectangles, null);
        }
        this.mSingleAfRect.setVisibility(4);
        object3 = new RelativeLayout.LayoutParams(-1, -1);
        this.mRectangles.addView((View)this.mSingleAfRect, (ViewGroup.LayoutParams)object3);
        this.mTouchAfRect = object.touchAfView;
        if (this.mTouchAfRect == null) {
            this.mTouchAfRect = (RelativeLayout)layoutInflater.inflate(R.layout.fast_capturing_auto_focus_rectangles, null);
        }
        object = (ImageView)this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
        object3 = object.getLayoutParams();
        object2 = this.mAnimation.getTouchAnimationConfig();
        object3.width = object2.mToWidth;
        object3.height = object2.mToHeight;
        object.setLayoutParams((ViewGroup.LayoutParams)object3);
        this.mTouchAfRect.setVisibility(4);
        object = new RelativeLayout.LayoutParams(-1, -1);
        this.mRectangles.addView((View)this.mTouchAfRect, (ViewGroup.LayoutParams)object);
        this.updateRectanglesCoordinates();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onObjectTrackedInternal(CameraExtension.ObjectTrackingResult object) {
        if (object.mIsLost) {
            this.mHandler.postDelayed(this.mRefreshTrackedObjectRectangleTask, 1000);
            return;
        }
        this.mHandler.removeCallbacks(this.mRefreshTrackedObjectRectangleTask);
        Rect rect = LayoutDependencyResolver.getSurfaceRect(this.mActivity, (float)this.mDevicePreviewWidth / (float)this.mDevicePreviewHeight);
        float f = (float)rect.width() / (float)this.mDevicePreviewWidth;
        float f2 = (float)rect.height() / (float)this.mDevicePreviewHeight;
        int n = (int)((float)object.mRectOfTrackedObject.centerX() * f);
        int n2 = (int)((float)object.mRectOfTrackedObject.centerY() * f2);
        object = this.mAnimation.getObjectAnimationConfig();
        object = new Rect(n - object.mFromWidth / 2, n2 - object.mFromHeight / 2, object.mFromWidth / 2 + n, object.mFromHeight / 2 + n2);
        this.mTrackedObjectRectangle.setRectCenter(object.centerX(), object.centerY());
        this.mTrackedObjectRectangle.setRectSize(object.width(), object.height());
        if (this.mIsRecording) {
            this.mTrackedObjectRectangle.changeRectangleResource(CommonResources.ObjectIndicator.SUCCESS);
        } else {
            this.mTrackedObjectRectangle.changeRectangleResource(CommonResources.ObjectIndicator.TRACKING);
        }
        this.mTrackedObjectRectangle.requestLayout();
        this.mTrackedObjectRectangle.setVisibility(0);
    }

    private void playOnTouchDownAnimationForTouchFocusRect() {
        if (this.mTouchAfRect.getVisibility() == 0) {
            ImageView imageView = (ImageView)this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
            imageView.setBackgroundResource(CommonResources.FaceIndicator.NORMAL);
            this.mIsFocusAnimationEnabled = true;
            imageView.setVisibility(4);
            this.mHandler.postDelayed(new Runnable(){

                @Override
                public void run() {
                    ImageView imageView = (ImageView)FocusRectangles.this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
                    imageView.setVisibility(0);
                    if (FocusRectangles.this.mIsFocusAnimationEnabled) {
                        FocusRectangles.this.mAnimation.playTouchDownAnimation(imageView);
                        return;
                    }
                    FocusRectangles.this.mTouchAfRect.setVisibility(4);
                }
            }, 100);
        }
    }

    private void playOnTouchUpAnimationForTouchFocusRect() {
        if (this.mTouchAfRect.getVisibility() == 0) {
            ImageView imageView = (ImageView)this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
            imageView.setBackgroundResource(CommonResources.FaceIndicator.NORMAL);
            this.mIsFocusAnimationEnabled = true;
            imageView.setVisibility(4);
            this.mHandler.postDelayed(new Runnable(){

                @Override
                public void run() {
                    ImageView imageView = (ImageView)FocusRectangles.this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
                    imageView.setVisibility(0);
                    if (FocusRectangles.this.mIsFocusAnimationEnabled) {
                        FocusRectangles.this.mAnimation.playTouchUpAnimation(imageView);
                        return;
                    }
                    FocusRectangles.this.mTouchAfRect.setVisibility(4);
                }
            }, 100);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void playTouchFocusStartAnimation(FocusSetType focusSetType) {
        if (this.mIsFaceTouchCaptureEnabled) return;
        switch (.$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$FocusSetType[focusSetType.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.playOnTouchDownAnimationForTouchFocusRect();
                return;
            }
            case 2: 
        }
        this.playOnTouchUpAnimationForTouchFocusRect();
    }

    private void removeObjectFocusRectAnimation() {
        this.mAnimation.cancelAfFocusAnimationObject(this.mTrackedObjectRectangle);
        this.mTrackedObjectRectangle.clearAnimation();
        this.mTrackedObjectRectangle.setAnimation(null);
    }

    private void removeSingleFocusRectAnimation() {
        ImageView imageView = (ImageView)this.mSingleAfRect.findViewById(R.id.center_auto_focus_rect);
        this.mAnimation.cancelAfFocusAnimationSingle(imageView);
        imageView.clearAnimation();
        imageView.setAnimation(null);
    }

    private void removeTouchFocusRectAnimation() {
        ImageView imageView = (ImageView)this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
        this.mIsFocusAnimationEnabled = false;
        this.mAnimation.cancelAfFocusAnimationTouch(imageView);
        imageView.clearAnimation();
        imageView.setAnimation(null);
    }

    private void resetFaceRectangleColor() {
        for (String string : this.mFaceRectangles.keySet()) {
            this.mFaceRectangles.get(string).changeRectangleResource(0);
            this.mFaceRectangles.get(string).hideNameTag();
        }
    }

    private void resetObjectTrackingRectangleColor() {
        this.mTrackedObjectRectangle.changeRectangleResource(CommonResources.ObjectIndicator.TRACKING);
    }

    private void resetRectanglesColor() {
        this.resetFaceRectangleColor();
        this.resetObjectTrackingRectangleColor();
        this.resetTouchFocusRectangleColor();
        this.resetSingleFocusRectangleColor();
    }

    private void resetSingleFocusRectangleColor() {
        ((ImageView)this.mSingleAfRect.findViewById(R.id.center_auto_focus_rect)).setBackgroundResource(CommonResources.SingleIndicator.NORMAL);
    }

    private void resetTouchFocusRectangleColor() {
        ImageView imageView = (ImageView)this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
        imageView.setBackgroundResource(CommonResources.TouchIndicator.NORMAL);
        imageView.setVisibility(0);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setFocusPositionInternal(Point parcelable, FocusSetType focusSetType) {
        void var2_3;
        if (parcelable == null) {
            this.mTouchAfRect.scrollTo(0, 0);
            return;
        }
        if (var2_3 == FocusSetType.FIRST) {
            this.hideFaceRectangles(true);
        }
        int n = parcelable.x;
        int n2 = parcelable.y;
        Rect rect = LayoutDependencyResolver.getSurfaceRect(this.mActivity, (float)this.mDevicePreviewWidth / (float)this.mDevicePreviewHeight);
        FocusRectanglesAnimation.AnimationConfig animationConfig = this.mAnimation.getTouchAnimationConfig();
        n = n < rect.left + animationConfig.mToWidth / 2 ? animationConfig.mToWidth / 2 : (rect.right - animationConfig.mToWidth / 2 < n ? rect.width() - animationConfig.mToWidth / 2 : (n-=rect.left));
        n2 = n2 < rect.top + animationConfig.mToHeight / 2 ? animationConfig.mToHeight / 2 : (rect.bottom - animationConfig.mToHeight / 2 < n2 ? rect.height() - animationConfig.mToHeight / 2 : (n2-=rect.top));
        this.mTouchAfRect.scrollTo(rect.width() / 2 - n, rect.height() / 2 - n2);
        this.mTouchAfRect.setVisibility(0);
        this.playTouchFocusStartAnimation((FocusSetType)var2_3);
    }

    private void setRectSizeAndPosition(RelativeLayout relativeLayout, int n, int n2, int n3, int n4) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams)relativeLayout.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.leftMargin = n;
            layoutParams.topMargin = n2;
            layoutParams.width = n3;
            layoutParams.height = n4;
            relativeLayout.setLayoutParams(layoutParams);
        }
    }

    private void updateFaceNameData(List<FaceIdentification.FaceIdentificationResult> list) {
        this.faceResultToRectangles(list, this.mLastFaceDetectionResult, false);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void updateFaceRectangles(FaceInformationList object, int n, boolean bl) {
        if (object.getNamedFaceList().size() <= 0) {
            return;
        }
        for (String string : this.mFaceRectangles.keySet()) {
            this.mFaceRectangles.get(string).clearUpdated();
        }
        for (int i = 0; i < 5; ++i) {
            if (i >= object.getNamedFaceList().size()) continue;
            NamedFace namedFace = object.getNamedFace(i);
            Object object2 = this.mFaceRectangles.containsKey(namedFace.mUuid) ? this.mFaceRectangles.get(namedFace.mUuid) : FaceDetectUtil.overwriteTaggedRectangle(this.mFaceRectangles, namedFace.mUuid, (FaceInformationList)object);
            if (object2 == null) continue;
            this.updateRectangle((TaggedRectangle)object2, namedFace, n, bl);
        }
        for (String string2 : this.mFaceRectangles.keySet()) {
            if (this.mFaceRectangles.get(string2).isUpdate()) continue;
            this.mFaceRectangles.get(string2).hide();
        }
        if ((object = FaceDetectUtil.sortRectangles(this.mFaceRectangles, (FaceInformationList)object)) == null) return;
        if (bl) return;
        if (this.mIsRecording) {
            object.changeRectangleResource(CommonResources.FaceIndicator.SUCCESS);
        } else {
            object.changeRectangleResource(CommonResources.FaceIndicator.PRIORITY);
        }
        this.mLatestSelectedFaceUuid = object.getUuid();
    }

    private void updateFaceRectanglesData(CameraExtension.FaceDetectionResult faceDetectionResult, boolean bl) {
        this.mLastFaceDetectionResult = faceDetectionResult;
        this.faceResultToRectangles(null, faceDetectionResult, bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateRectangle(TaggedRectangle taggedRectangle, NamedFace namedFace, int n, boolean bl) {
        Rect rect = PositionConverter.getInstance().convertToView(namedFace.mFacePosition);
        if (this.mIsRectPositionMirrored) {
            taggedRectangle.setRectCenter(LayoutDependencyResolver.getSurfaceRect(this.mActivity, (float)this.mDevicePreviewWidth / (float)this.mDevicePreviewHeight).width() - rect.centerX(), rect.centerY());
        } else {
            taggedRectangle.setRectCenter(rect.centerX(), rect.centerY());
        }
        taggedRectangle.setRectSize(rect.width(), rect.height());
        if (bl) {
            taggedRectangle.changeRectangleResource(0);
            taggedRectangle.hide();
        } else {
            taggedRectangle.changeRectangleResource(CommonResources.FaceIndicator.NORMAL);
        }
        boolean bl2 = taggedRectangle.getVisibility() == 0;
        if (!bl2) {
            taggedRectangle.startRectangleAnimation(n);
        }
        taggedRectangle.updateNameTag(namedFace.mName, namedFace.mUuid, this.mRectangles, n);
        taggedRectangle.setUpdated();
        if (taggedRectangle.getVisibility() != 0) {
            taggedRectangle.requestLayout();
            taggedRectangle.setVisibility(0);
        }
    }

    private void updateRectanglesCoordinates() {
        Rect rect = LayoutDependencyResolver.getSurfaceRect(this.mActivity, (float)this.mDevicePreviewWidth / (float)this.mDevicePreviewHeight);
        this.setRectSizeAndPosition(this.mRectangles, rect.left, rect.top, rect.width(), rect.height());
        this.changeState(new DefaultFocusState());
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void checkAndChangeFacePriority(CameraExtension.FaceDetectionResult faceDetectionResult) {
        if (faceDetectionResult == null) {
            return;
        }
        if (!FaceDetectUtil.isValidFaceDetectionResult(faceDetectionResult)) {
            CameraLogger.e(TAG, "FaceDetectionResult indexOfSelectedFace illegal vaue. result.indexOfSelectedFace = " + faceDetectionResult.indexOfSelectedFace);
            return;
        }
        if (String.valueOf(((CameraExtension.ExtFace)faceDetectionResult.extFaceList.get((int)faceDetectionResult.indexOfSelectedFace)).face.id).equals(this.mLatestSelectedFaceUuid)) return;
        this.changeFacePriority(this.mLatestSelectedFaceUuid);
    }

    public void clearAllFocus() {
        this.clearAllFocusExceptFace();
        this.clearFaceDetection();
    }

    public void clearAllFocusExceptFace() {
        this.changeState(new DefaultFocusState());
        this.clearSingleAutoFocus();
        this.clearTouchFocus();
        this.clearObjectTracking();
    }

    public void clearExceptTouchFocus() {
        this.mCurrentState.clearExceptTouchFocus();
    }

    public void clearFaceDetection() {
        this.hideFaceRectangles(false);
        this.resetFaceRectangleColor();
    }

    public void clearObjectTracking() {
        this.hideTrackedObjectRecgantle();
        this.removeObjectFocusRectAnimation();
        this.resetObjectTrackingRectangleColor();
    }

    public void clearSingleAutoFocus() {
        this.mSingleAfRect.setVisibility(4);
        this.removeSingleFocusRectAnimation();
        this.resetSingleFocusRectangleColor();
    }

    public void clearTouchFocus() {
        this.setFocusPositionInternal(null, null);
        this.mTouchAfRect.setVisibility(4);
        this.removeTouchFocusRectAnimation();
        this.resetTouchFocusRectangleColor();
    }

    public void disableFaceTouchCapture() {
        this.mIsFaceTouchCaptureEnabled = false;
    }

    public void enableFaceTouchCapture() {
        this.mIsFaceTouchCaptureEnabled = true;
    }

    public boolean isRecording() {
        return this.mIsRecording;
    }

    public boolean isTouchFocus() {
        if (this.mCurrentState.getClass().equals(TouchFocusState.class)) {
            return true;
        }
        return false;
    }

    public void onAutoFocusCanceled() {
        this.mCurrentState.onAutoFocusCanceled();
    }

    public void onAutoFocusDone(boolean bl) {
        this.mCurrentState.onAutoFocusDone(bl);
    }

    public void onAutoFocusStarted() {
        this.mCurrentState.onAutoFocusStarted();
    }

    public void onFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
        this.mCurrentState.onFaceDetected(faceDetectionResult);
    }

    public void onFaceLost() {
        this.mUserTouchFaceUuid = null;
        this.mCurrentState.onFaceLost();
    }

    public void onFaceNameDetected(List<FaceIdentification.FaceIdentificationResult> list) {
        this.mCurrentState.onFaceNameDetected(list);
    }

    public void onObjectLost() {
        this.mCurrentState.onObjectLost();
    }

    public void onObjectTracked(CameraExtension.ObjectTrackingResult objectTrackingResult) {
        this.mCurrentState.onTrackedObjectStateUpdated(objectTrackingResult);
    }

    public void onRecordingStart() {
        this.mIsRecording = true;
    }

    public void onRecordingStop() {
        this.mIsRecording = false;
    }

    public void onUiComponentOverlaid() {
        this.mCurrentState.onUiComponentOverlaid();
    }

    public void onUiComponentRemoved() {
        this.mCurrentState.onUiComponentRemoved();
    }

    public void release() {
        this.mActivity = null;
        this.mFocusEventListener = null;
    }

    public void setFocusPosition(Point point, FocusSetType focusSetType) {
        int[] arrn = new int[2];
        this.mRectangles.getLocationOnScreen(arrn);
        point = new Point(point.x - arrn[0], point.y - arrn[1]);
        this.mCurrentState.setFocusPosition(point, focusSetType);
    }

    public void setMirrored(boolean bl) {
        this.mIsRectPositionMirrored = bl;
    }

    public void setOrientation(int n) {
        this.mCurrentOrientation = n;
    }

    public void setUserTouchFaceUuid(String string) {
        this.mUserTouchFaceUuid = string;
    }

    public void setVisibility(int n) {
        this.mRectangles.setVisibility(n);
    }

    public void startFaceDetection() {
        this.mCurrentState.startFaceDetection();
    }

    public void startObjectTracking() {
        this.mCurrentState.startObjectTracking();
    }

    public void updateDevicePreviewSize(int n, int n2) {
        this.mDevicePreviewWidth = n;
        this.mDevicePreviewHeight = n2;
        this.updateRectanglesCoordinates();
    }

    class DefaultFocusState
    implements State {
        DefaultFocusState() {
        }

        @Override
        public void clearExceptTouchFocus() {
            FocusRectangles.this.clearSingleAutoFocus();
            FocusRectangles.this.clearObjectTracking();
            FocusRectangles.this.clearFaceDetection();
        }

        @Override
        public void onAutoFocusCanceled() {
        }

        @Override
        public void onAutoFocusDone(boolean bl) {
            ImageView imageView = (ImageView)FocusRectangles.this.mSingleAfRect.findViewById(R.id.center_auto_focus_rect);
            imageView.setVisibility(0);
            if (bl) {
                imageView.setBackgroundResource(CommonResources.SingleIndicator.SUCCESS);
                FocusRectangles.this.mAnimation.playAfFocusInAnimationSingle(imageView);
                return;
            }
            FocusRectangles.this.mAnimation.playAfFadeOutAnimationSingle(imageView);
        }

        @Override
        public void onAutoFocusStarted() {
            ImageView imageView = (ImageView)FocusRectangles.this.mSingleAfRect.findViewById(R.id.center_auto_focus_rect);
            imageView.setBackgroundResource(CommonResources.SingleIndicator.NORMAL);
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            layoutParams.height = FocusRectangles.this.mActivity.getResources().getDimensionPixelSize(R.dimen.focus_rect_single_height);
            layoutParams.width = FocusRectangles.this.mActivity.getResources().getDimensionPixelSize(R.dimen.focus_rect_single_width);
            imageView.setLayoutParams(layoutParams);
            FocusRectangles.this.mSingleAfRect.setVisibility(0);
        }

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
            if (faceDetectionResult.extFaceList.size() == 0) {
                FocusRectangles.this.mCurrentState = new DefaultFocusState();
                return;
            }
            FocusRectangles.this.updateFaceRectanglesData(faceDetectionResult, false);
            FocusRectangles.this.checkAndChangeFacePriority(faceDetectionResult);
            FocusRectangles.this.changeState(new FaceDetectionState());
        }

        @Override
        public void onFaceLost() {
        }

        @Override
        public void onFaceNameDetected(List<FaceIdentification.FaceIdentificationResult> list) {
        }

        @Override
        public void onObjectLost() {
        }

        @Override
        public void onTrackedObjectStateUpdated(CameraExtension.ObjectTrackingResult objectTrackingResult) {
            FocusRectangles.this.mSingleAfRect.setVisibility(4);
            FocusRectangles.this.hideFaceRectangles(true);
            FocusRectangles.this.onObjectTrackedInternal(objectTrackingResult);
            FocusRectangles.this.changeState(new ObjectTrackingState());
        }

        @Override
        public void onUiComponentOverlaid() {
            FocusRectangles.this.mSingleAfRect.setVisibility(4);
            FocusRectangles.this.hideFaceRectangles(false);
            FocusRectangles.this.hideTrackedObjectRecgantle();
            FocusRectangles.this.mTouchAfRect.setVisibility(4);
        }

        @Override
        public void onUiComponentRemoved() {
            FocusRectangles.this.mTouchAfRect.setVisibility(4);
            FocusRectangles.this.mSingleAfRect.setVisibility(4);
            FocusRectangles.this.resetRectanglesColor();
        }

        @Override
        public void setFocusPosition(Point point, FocusSetType focusSetType) {
            FocusRectangles.this.setFocusPositionInternal(point, focusSetType);
            FocusRectangles.this.changeState(new TouchFocusState());
        }

        @Override
        public void startFaceDetection() {
            FocusRectangles.this.clearSingleAutoFocus();
            FocusRectangles.this.clearObjectTracking();
            FocusRectangles.this.changeState(new FaceDetectionState());
        }

        @Override
        public void startObjectTracking() {
            this.clearExceptTouchFocus();
            FocusRectangles.this.changeState(new ObjectTrackingState());
        }
    }

    private class FaceDetectionState
    extends DefaultFocusState {
        private FaceDetectionState() {
        }

        private boolean isFaceRectAvailable() {
            for (String string : FocusRectangles.this.mFaceRectangles.keySet()) {
                if (((TaggedRectangle)FocusRectangles.this.mFaceRectangles.get(string)).getVisibility() != 0) continue;
                return true;
            }
            return false;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void onAutoFocusDone(boolean bl) {
            if (!this.isFaceRectAvailable()) {
                super.onAutoFocusDone(bl);
                return;
            }
            Iterator iterator = FocusRectangles.this.mFaceRectangles.keySet().iterator();
            while (iterator.hasNext()) {
                String string = (String)iterator.next();
                if (FocusRectangles.this.mLatestSelectedFaceUuid == null) return;
                if (FocusRectangles.this.mLatestSelectedFaceUuid.equals(string)) {
                    int n = bl ? CommonResources.FaceIndicator.SUCCESS : 0;
                    ((TaggedRectangle)FocusRectangles.this.mFaceRectangles.get(string)).changeRectangleResource(n);
                    continue;
                }
                ((TaggedRectangle)FocusRectangles.this.mFaceRectangles.get(string)).setVisibility(4);
            }
        }

        @Override
        public void onAutoFocusStarted() {
            if (!this.isFaceRectAvailable()) {
                super.onAutoFocusStarted();
            }
        }

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
            if (faceDetectionResult.extFaceList.size() == 0) {
                this.onFaceLost();
                return;
            }
            FocusRectangles.this.updateFaceRectanglesData(faceDetectionResult, false);
            FocusRectangles.this.checkAndChangeFacePriority(faceDetectionResult);
        }

        @Override
        public void onFaceLost() {
            FocusRectangles.this.clearFaceDetection();
            FocusRectangles.this.changeState(new DefaultFocusState());
        }

        @Override
        public void onFaceNameDetected(List<FaceIdentification.FaceIdentificationResult> list) {
            FocusRectangles.this.updateFaceNameData(list);
            FocusRectangles.this.checkAndChangeFacePriority(FocusRectangles.this.mLastFaceDetectionResult);
        }

        @Override
        public void onObjectLost() {
        }

        @Override
        public void onTrackedObjectStateUpdated(CameraExtension.ObjectTrackingResult objectTrackingResult) {
            FocusRectangles.this.mSingleAfRect.setVisibility(4);
            FocusRectangles.this.hideFaceRectangles(true);
            FocusRectangles.this.onObjectTrackedInternal(objectTrackingResult);
            FocusRectangles.this.changeState(new ObjectTrackingState());
        }

        @Override
        public void setFocusPosition(Point point, FocusSetType focusSetType) {
            FocusRectangles.this.setFocusPositionInternal(point, focusSetType);
            FocusRectangles.this.changeState(new TouchFocusState());
        }

        @Override
        public void startFaceDetection() {
        }

        @Override
        public void startObjectTracking() {
            super.clearExceptTouchFocus();
            FocusRectangles.this.changeState(new ObjectTrackingState());
        }
    }

    public static enum FocusRectEvent {
        ON_AUTO_FOCUS_STARTED,
        ON_AUTO_FOCUS_DONE,
        SET_FOCUS_POSITION,
        START_FACE_DETECTION,
        ON_FACE_DETECTED,
        ON_FACE_LOST,
        START_OBJECT_TRACKING,
        ON_OBJECT_TRACKED,
        ON_OBJECT_LOST,
        CLEAR_ALL,
        ON_UI_COMPONENT_OVERLAID,
        ON_UI_COMPONENT_REMOVED;
        

        private FocusRectEvent() {
        }
    }

    static enum FocusRectangleType {
        FACE,
        FAST_SINGLE,
        FAST_OBJECT_TRACKING,
        FAST_TOUCH;
        

        private FocusRectangleType() {
        }
    }

    public static enum FocusSetType {
        FIRST,
        MOVE,
        RELEASE;
        

        private FocusSetType() {
        }
    }

    private class ObjectTrackingState
    extends DefaultFocusState {
        private ObjectTrackingState() {
        }

        @Override
        public void onAutoFocusDone(boolean bl) {
            if (FocusRectangles.this.mTrackedObjectRectangle.getVisibility() != 0) {
                super.onAutoFocusDone(bl);
                return;
            }
            FocusRectangles.this.mTrackedObjectRectangle.setVisibility(0);
            if (bl) {
                int n = CommonResources.ObjectIndicator.SUCCESS;
                FocusRectangles.this.mTrackedObjectRectangle.changeRectangleResource(n);
                View view = FocusRectangles.this.mTrackedObjectRectangle.findViewById(R.id.rect_image);
                FocusRectangles.this.mAnimation.playAfFocusInAnimationObject(view);
                return;
            }
            FocusRectangles.this.mAnimation.playAfFadeOutAnimationObject(FocusRectangles.this.mTrackedObjectRectangle);
        }

        @Override
        public void onAutoFocusStarted() {
            if (FocusRectangles.this.mTrackedObjectRectangle.getVisibility() != 0) {
                super.onAutoFocusStarted();
            }
        }

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
            FocusRectangles.this.updateFaceRectanglesData(faceDetectionResult, true);
            FocusRectangles.this.checkAndChangeFacePriority(faceDetectionResult);
        }

        @Override
        public void onFaceLost() {
        }

        @Override
        public void onFaceNameDetected(List<FaceIdentification.FaceIdentificationResult> list) {
            FocusRectangles.this.updateFaceNameData(list);
            FocusRectangles.this.checkAndChangeFacePriority(FocusRectangles.this.mLastFaceDetectionResult);
        }

        @Override
        public void onObjectLost() {
            FocusRectangles.this.changeState(new DefaultFocusState());
        }

        @Override
        public void onTrackedObjectStateUpdated(CameraExtension.ObjectTrackingResult objectTrackingResult) {
            FocusRectangles.this.onObjectTrackedInternal(objectTrackingResult);
        }

        @Override
        public void setFocusPosition(Point point, FocusSetType focusSetType) {
            FocusRectangles.this.setFocusPositionInternal(point, focusSetType);
            FocusRectangles.this.changeState(new TouchFocusState());
        }

        @Override
        public void startFaceDetection() {
            super.clearExceptTouchFocus();
            FocusRectangles.this.changeState(new FaceDetectionState());
        }

        @Override
        public void startObjectTracking() {
        }
    }

    class OnFaceRectTouchListener
    implements Rectangle.RectangleOnTouchListener {
        OnFaceRectTouchListener() {
        }

        private boolean isTouchAreaOnTouchCapture(MotionEvent motionEvent) {
            if (FocusRectangles.this.mIsFaceTouchCaptureEnabled && FocusRectangles.this.mCaptureArea != null) {
                return CommonUtility.isEventContainedInView(FocusRectangles.this.mCaptureArea, motionEvent);
            }
            return false;
        }

        @Override
        public void onRectTouchCancel(View view, MotionEvent motionEvent) {
            FocusRectangles.this.mFocusEventListener.onCanceled();
        }

        @Override
        public void onRectTouchDown(View view, MotionEvent motionEvent) {
            if (view.getVisibility() == 0) {
                for (String string : FocusRectangles.this.mFaceRectangles.keySet()) {
                    if (!((TaggedRectangle)FocusRectangles.this.mFaceRectangles.get(string)).equals(view)) continue;
                    FocusRectangles.this.mUserTouchFaceUuid = ((TaggedRectangle)FocusRectangles.this.mFaceRectangles.get(string)).getUuid();
                    ((TaggedRectangle)FocusRectangles.this.mFaceRectangles.get(string)).startRectanglePressAnimation();
                    FocusRectangles.this.faceResultToRectangles(null, FocusRectangles.this.mLastFaceDetectionResult, false);
                    FocusRectangles.this.changeFacePriority(string);
                    if (!this.isTouchAreaOnTouchCapture(motionEvent)) break;
                    FocusRectangles.this.mFocusEventListener.onTouched();
                }
            }
        }

        @Override
        public void onRectTouchLongPress(MotionEvent motionEvent) {
            FocusRectangles.this.mFocusEventListener.onLongPressed();
        }

        @Override
        public void onRectTouchUp(View view, MotionEvent motionEvent) {
            if (view.getVisibility() == 0) {
                for (String string : FocusRectangles.this.mFaceRectangles.keySet()) {
                    if (!((TaggedRectangle)FocusRectangles.this.mFaceRectangles.get(string)).equals(view)) continue;
                    if (!this.isTouchAreaOnTouchCapture(motionEvent)) break;
                    FocusRectangles.this.mFocusEventListener.onReleased();
                }
            }
        }
    }

    class RefreshTrackedObjectRectangleTask
    implements Runnable {
        RefreshTrackedObjectRectangleTask() {
        }

        @Override
        public void run() {
            if (FocusRectangles.this.mFocusEventListener == null || FocusRectangles.this.mTrackedObjectRectangle == null) {
                return;
            }
            FocusRectangles.this.mTrackedObjectRectangle.setVisibility(4);
            FocusRectangles.this.onObjectLost();
        }
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

    private class TouchFocusState
    extends DefaultFocusState {
        private TouchFocusState() {
        }

        @Override
        public void onAutoFocusCanceled() {
            ((ImageView)FocusRectangles.this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect)).setVisibility(0);
        }

        @Override
        public void onAutoFocusDone(boolean bl) {
            ImageView imageView = (ImageView)FocusRectangles.this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
            imageView.setVisibility(0);
            if (bl) {
                imageView.setBackgroundResource(CommonResources.TouchIndicator.SUCCESS);
                FocusRectangles.this.mAnimation.playAfFocusInAnimationTouch(imageView);
                return;
            }
            FocusRectangles.this.mAnimation.playAfFadeOutAnimationTouch(imageView);
        }

        @Override
        public void onAutoFocusStarted() {
            ((ImageView)FocusRectangles.this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect)).setBackgroundResource(CommonResources.TouchIndicator.NORMAL);
            FocusRectangles.this.mTouchAfRect.setVisibility(0);
        }

        @Override
        public void onFaceDetected(CameraExtension.FaceDetectionResult faceDetectionResult) {
            FocusRectangles.this.updateFaceRectanglesData(faceDetectionResult, true);
        }

        @Override
        public void onFaceLost() {
        }

        @Override
        public void onObjectLost() {
        }

        @Override
        public void onTrackedObjectStateUpdated(CameraExtension.ObjectTrackingResult objectTrackingResult) {
        }

        @Override
        public void onUiComponentRemoved() {
            FocusRectangles.this.mTouchAfRect.setVisibility(0);
            FocusRectangles.this.mSingleAfRect.setVisibility(4);
            FocusRectangles.this.resetRectanglesColor();
        }

        @Override
        public void setFocusPosition(Point point, FocusSetType focusSetType) {
            FocusRectangles.this.setFocusPositionInternal(point, focusSetType);
        }

        @Override
        public void startFaceDetection() {
            FocusRectangles.this.clearSingleAutoFocus();
            FocusRectangles.this.clearObjectTracking();
            FocusRectangles.this.changeState(new FaceDetectionState());
        }

        @Override
        public void startObjectTracking() {
            super.clearExceptTouchFocus();
            FocusRectangles.this.changeState(new ObjectTrackingState());
        }
    }

}

