/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.app.Activity;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.device.FocusRectPositionConvertor;
import com.sonyericsson.android.camera.util.CoordinateUtil;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.android.camera.view.DetectedFaceRectangles;
import com.sonyericsson.android.camera.view.FocusRectangleWithStateMachine;
import com.sonyericsson.android.camera.view.MultiRectangles;
import com.sonyericsson.android.camera.view.ObjectTrackingRectangle;
import com.sonyericsson.android.camera.view.SingleRectangle;
import com.sonyericsson.android.camera.view.TouchRectangle;
import com.sonyericsson.cameracommon.focusview.FaceInformationList;
import com.sonyericsson.cameracommon.focusview.FocusRectanglesViewList;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import com.sonyericsson.cameracommon.focusview.RectangleColor;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;

public class FocusRectanglesManager {
    private static final String TAG = FocusRectanglesManager.class.getSimpleName();
    private CapturingMode mCapturingMode = CapturingMode.UNKNOWN;
    private FocusRectangleWithStateMachine mCurrentRectangle;
    private DetectedFaceRectangles mFaceRectangles;
    private FocusMode mFocusMode = FocusMode.FACE_DETECTION;
    private FocusRectanglesViewList mFocusRectanglesViewList;
    private boolean mIsTouchCapture;
    private MultiRectangles mMultiRectangles;
    private ObjectTrackingRectangle mObjectRectangle;
    private SingleRectangle mSingleRectangles;
    private SmileCapture mSmileCapture = SmileCapture.OFF;
    private TouchRectangle mTouchRectangles;

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void changeRectangle(CapturingMode var1_1, FocusMode var2_2, SmileCapture var3_3) {
        this.inactivate();
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[var1_1.ordinal()]) {
            case 1: {
                switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode[var2_2.ordinal()]) {
                    default: {
                        this.mCurrentRectangle = this.mFaceRectangles;
                        ** break;
                    }
                    case 3: {
                        this.mCurrentRectangle = this.mFaceRectangles;
                        this.mTouchRectangles.setState(RectangleState.TRANSPARENT);
                        ** break;
                    }
                    case 4: 
                }
                this.mCurrentRectangle = this.mTouchRectangles;
                this.mFaceRectangles.setState(RectangleState.TRANSPARENT);
                ** break;
            }
            case 2: 
            case 3: {
                switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode[var2_2.ordinal()]) {
                    default: {
                        this.mCurrentRectangle = this.mFaceRectangles;
                        ** break;
                    }
                    case 1: {
                        this.mCurrentRectangle = this.mSingleRectangles;
                        ** break;
                    }
                    case 2: {
                        this.mCurrentRectangle = this.mMultiRectangles;
                        ** break;
                    }
                    case 3: {
                        this.mCurrentRectangle = this.mFaceRectangles;
                        ** break;
                    }
                    case 4: {
                        this.mCurrentRectangle = this.mTouchRectangles;
                        ** break;
                    }
                    case 5: 
                }
                this.mCurrentRectangle = this.mObjectRectangle;
            }
lbl35: // 10 sources:
            default: {
                ** GOTO lbl39
            }
            case 4: 
            case 5: 
        }
        this.mCurrentRectangle = this.mFaceRectangles;
lbl39: // 2 sources:
        this.mCurrentRectangle.setState(RectangleState.DEFAULT);
    }

    public void claerObjectRectangle() {
        this.mObjectRectangle.deselect();
    }

    public void clearFaceRectangle() {
        this.mFaceRectangles.deselect();
    }

    public void clearTouchRectangle() {
        this.mTouchRectangles.deselect();
    }

    public void disableTouchDetectedFace() {
        this.mFaceRectangles.disableTouchDetectedFace();
    }

    public FocusMode getFocusMode() {
        return this.mFocusMode;
    }

    public NamedFace getTopPriorityFace() {
        return this.mFaceRectangles.getTopPriorityFace();
    }

    public void hide() {
        this.mSingleRectangles.hide();
        this.mMultiRectangles.hide();
        this.mTouchRectangles.hide();
        this.mObjectRectangle.hide();
        this.mFaceRectangles.hide();
    }

    public void hideFaceRectangle() {
        this.mFaceRectangles.hide();
    }

    public void hideObjectRectangle() {
        this.mObjectRectangle.hide();
    }

    public void hideTouchRectangle() {
        this.mTouchRectangles.hide();
    }

    public void inactivate() {
        this.hide();
        this.mSingleRectangles.setState(RectangleState.INACTIVE);
        this.mMultiRectangles.setState(RectangleState.INACTIVE);
        this.mTouchRectangles.setState(RectangleState.INACTIVE);
        this.mObjectRectangle.setState(RectangleState.INACTIVE);
        this.mFaceRectangles.setState(RectangleState.INACTIVE);
    }

    public boolean isReady() {
        if (this.mSingleRectangles != null) {
            return true;
        }
        return false;
    }

    public void onSurfaceSizeChanged(int n, int n2, int n3, boolean bl) {
        this.mSingleRectangles.setSurfaceSize(n, n2, n3, bl);
        this.mMultiRectangles.setSurfaceSize(n, n2, n3, bl);
        this.mTouchRectangles.setSurfaceSize(n, n2, n3, bl);
        this.mFaceRectangles.setSurfaceSize(n, n2, n3, bl);
        this.mObjectRectangle.setSurfaceSize(n, n2, n3, bl);
        this.setAfRectanglePosition(n, n2, n3);
    }

    public void release() {
        this.mSingleRectangles.release();
        this.mMultiRectangles.release();
        this.mTouchRectangles.release();
        this.mFaceRectangles.release();
        this.mObjectRectangle.release();
    }

    public void setAfRectanglePosition(int n, int n2, int n3) {
        Rect[] arrrect = CoordinateUtil.convertPositionToSurface(new RectF[]{FocusRectPositionConvertor.getSingleFocusRectangle()}, n, n2, n3);
        this.mSingleRectangles.setPosition(arrrect);
        arrrect = CoordinateUtil.convertPositionToSurface(FocusRectPositionConvertor.getMultiFocusRectangles(this.mCapturingMode.getCameraId()), n, n2, n3);
        this.mMultiRectangles.setPosition(arrrect);
    }

    public void setCapturingMode(CapturingMode capturingMode) {
        if (this.mCapturingMode == capturingMode) {
            return;
        }
        this.mCapturingMode = capturingMode;
        this.changeRectangle(this.mCapturingMode, this.mFocusMode, this.mSmileCapture);
    }

    public void setChangeFocusFaceListener(DetectedFaceRectangles.ChangeFocusFaceListener changeFocusFaceListener) {
        this.mFaceRectangles.setChangeFocusFaceListener(changeFocusFaceListener);
    }

    public void setFocusMode(FocusMode focusMode) {
        if (this.mFocusMode == focusMode) {
            return;
        }
        this.mFocusMode = focusMode;
        this.changeRectangle(this.mCapturingMode, this.mFocusMode, this.mSmileCapture);
    }

    public void setPreInfalteMap(FocusRectanglesViewList focusRectanglesViewList) {
        this.mFocusRectanglesViewList = focusRectanglesViewList;
    }

    public void setRectangleColor(RectangleColor rectangleColor, AutoFocusListener.Result result) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$focusview$RectangleColor[rectangleColor.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.mSingleRectangles.resetColor();
                this.mCurrentRectangle.resetColor();
                return;
            }
            case 2: {
                this.mSingleRectangles.onAfFail(result);
                this.mCurrentRectangle.onAfFail(result);
                return;
            }
            case 3: {
                this.mSingleRectangles.onAfSuccess(result);
                this.mCurrentRectangle.onAfSuccess(result);
                return;
            }
            case 4: 
        }
        this.mSingleRectangles.onRecording(result);
        this.mCurrentRectangle.onRecording(result);
    }

    public void setSmileCapture(SmileCapture smileCapture) {
        if (this.mSmileCapture == smileCapture) {
            return;
        }
        this.mFaceRectangles.setSmileLevel(smileCapture);
        this.mSmileCapture = smileCapture;
        this.changeRectangle(this.mCapturingMode, this.mFocusMode, this.mSmileCapture);
    }

    public void setTouchCapture(TouchCapture touchCapture) {
        this.mIsTouchCapture = touchCapture.getBooleanValue();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setupRectangles(Activity activity, FrameLayout frameLayout, Rect rect) {
        this.mSingleRectangles = new SingleRectangle(frameLayout);
        if (this.mFocusRectanglesViewList != null) {
            this.mSingleRectangles.init(activity.getLayoutInflater(), new View[]{this.mFocusRectanglesViewList.singleAfView});
        } else {
            this.mSingleRectangles.init(activity.getLayoutInflater(), null);
        }
        this.mMultiRectangles = new MultiRectangles(frameLayout);
        int n = HardwareCapability.getCapability((int)0).MAX_MULTI_FOCUS_AREAS.get();
        this.mMultiRectangles.init(activity.getLayoutInflater(), n);
        this.mTouchRectangles = new TouchRectangle(frameLayout);
        if (this.mFocusRectanglesViewList != null) {
            this.mTouchRectangles.init(activity.getLayoutInflater(), new View[]{this.mFocusRectanglesViewList.touchAfView});
        } else {
            this.mTouchRectangles.init(activity.getLayoutInflater(), null);
        }
        this.mFaceRectangles = new DetectedFaceRectangles(frameLayout);
        if (this.mFocusRectanglesViewList != null) {
            this.mFaceRectangles.init(activity.getLayoutInflater(), this.mFocusRectanglesViewList.faceViewList);
        } else {
            this.mFaceRectangles.init(activity.getLayoutInflater(), null);
        }
        this.mFaceRectangles.setDisplayRect(rect);
        this.mObjectRectangle = new ObjectTrackingRectangle(frameLayout);
        if (this.mFocusRectanglesViewList != null) {
            this.mObjectRectangle.init(activity.getLayoutInflater(), new View[]{this.mFocusRectanglesViewList.trackedObjectView});
        } else {
            this.mObjectRectangle.init(activity.getLayoutInflater(), null);
        }
        this.mFocusRectanglesViewList = null;
        this.mCurrentRectangle = this.mFaceRectangles;
        this.changeRectangle(this.mCapturingMode, this.mFocusMode, this.mSmileCapture);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void showAfRectangle(int n) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode[this.mFocusMode.ordinal()]) {
            case 1: {
                this.mSingleRectangles.show();
                return;
            }
            case 2: {
                if (n == 0) {
                    this.mMultiRectangles.show();
                    return;
                }
                this.mMultiRectangles.hide();
                this.mSingleRectangles.showAsFrame();
                return;
            }
            case 3: {
                if ((this.mFaceRectangles.mState != RectangleState.DEFAULT || this.mFaceRectangles.getTopPriorityFace() != null) && this.mFaceRectangles.mState != RectangleState.TRANSPARENT) return;
                {
                    this.mSingleRectangles.showAsFrame();
                    return;
                }
            }
            default: {
                return;
            }
            case 4: 
            case 5: 
        }
        if (this.mCurrentRectangle.mState != RectangleState.DEFAULT) return;
        {
            this.mSingleRectangles.showAsFrame();
            return;
        }
    }

    public void showCurrentAfRectangle() {
        this.mCurrentRectangle.show();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void startObjectTrackingAnimation(Rect rect) {
        ObjectTrackingRectangle objectTrackingRectangle = this.mObjectRectangle;
        boolean bl = !this.mIsTouchCapture;
        objectTrackingRectangle.select(rect, bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void startTouchDownAnimation(Rect rect) {
        TouchRectangle touchRectangle = this.mTouchRectangles;
        boolean bl = !this.mIsTouchCapture;
        touchRectangle.select(rect, bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void startTouchUpAnimation(Rect rect) {
        TouchRectangle touchRectangle = this.mTouchRectangles;
        boolean bl = !this.mIsTouchCapture;
        touchRectangle.startTouchUpAnimation(rect, bl);
    }

    public void startViewFinder() {
        this.setRectangleColor(RectangleColor.NORMAL, null);
        this.mSingleRectangles.show();
        this.mMultiRectangles.show();
        this.mTouchRectangles.show();
        this.mFaceRectangles.show();
        this.mObjectRectangle.show();
    }

    public void updateFaceRectangle(FaceInformationList faceInformationList, int n, boolean bl) {
        this.mFaceRectangles.updateFaceRectangles(faceInformationList, n, bl);
    }

    public void updateObjectRectangle(Rect rect) {
        if (rect != null) {
            this.mObjectRectangle.setPosition(new Rect[]{rect});
        }
    }

    public void updateTouchRectangle(Rect rect) {
        if (rect != null) {
            this.mTouchRectangles.setPosition(new Rect[]{rect});
        }
    }

    public static enum RectangleState {
        INACTIVE,
        SELECTED,
        TRANSPARENT,
        DEFAULT;
        

        private RectangleState() {
        }
    }

}

