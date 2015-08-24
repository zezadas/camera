/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.view.FocusRectangleWithStateMachine;
import com.sonyericsson.android.camera.view.FocusRectanglesManager;
import com.sonyericsson.cameracommon.focusview.CommonResources;
import com.sonyericsson.cameracommon.focusview.FaceInformationList;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import com.sonyericsson.cameracommon.focusview.Rectangle;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.FaceDetectUtil;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class DetectedFaceRectangles
extends FocusRectangleWithStateMachine
implements Rectangle.RectangleOnTouchListener {
    private static final String TAG = DetectedFaceRectangles.class.getSimpleName();
    private ChangeFocusFaceListener mChangeFocusFaceListener;
    private NamedFace mFocusedFace;
    private int mFocusedRectangleResId;
    private final HashMap<String, TaggedRectangle> mRectangles = new HashMap();

    public DetectedFaceRectangles(ViewGroup viewGroup) {
        super(viewGroup);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void addTaggedRectangle(LayoutInflater layoutInflater, String string, TaggedRectangle taggedRectangle) {
        if (this.mRectangles.size() >= 5) {
            return;
        }
        if (taggedRectangle == null) {
            taggedRectangle = (TaggedRectangle)layoutInflater.inflate(2130903056, null);
        }
        this.mParentView.addView(taggedRectangle);
        taggedRectangle.prepare(0);
        taggedRectangle.setRectangleOnTouchListener(this);
        this.mRectangles.put(string, taggedRectangle);
    }

    private void logRect(Rect rect) {
        CameraLogger.v(TAG, "Face position(" + rect.left + ", " + rect.top + ", " + rect.right + ", " + rect.bottom + ")");
    }

    private void logTaggedRectangle(TaggedRectangle taggedRectangle) {
        CameraLogger.e(TAG, "Rectangle(" + taggedRectangle.getRectangleLeft() + ", " + taggedRectangle.getRectangleTop() + ", width: " + taggedRectangle.getRectangleWidth() + ", height: " + taggedRectangle.getRectangleHeight() + ")");
    }

    private void startAnimation(TaggedRectangle taggedRectangle, int n) {
        if (taggedRectangle.getVisibility() == 0) {
            return;
        }
        taggedRectangle.startRectangleAnimation(n);
    }

    private void updateRectangle(TaggedRectangle taggedRectangle, NamedFace namedFace, int n) {
        Rect rect = PositionConverter.getInstance().convertToView(namedFace.mFacePosition);
        taggedRectangle.setRectSize(rect.width(), rect.height());
        taggedRectangle.setRectCenter(rect.centerX(), rect.centerY());
        if (this.mState != FocusRectanglesManager.RectangleState.TRANSPARENT) {
            taggedRectangle.changeRectangleResource(CommonResources.FaceIndicator.NORMAL);
            this.startAnimation(taggedRectangle, n);
            taggedRectangle.updateNameTag(namedFace.mName, namedFace.mUuid, this.mParentView, n);
        }
        taggedRectangle.setUpdated();
        taggedRectangle.setVisibility(0);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateSmileGauge(NamedFace namedFace, int n, boolean bl) {
        if (namedFace != null) {
            Iterator<String> iterator = this.mRectangles.keySet().iterator();
            while (iterator.hasNext()) {
                Object object = iterator.next();
                TaggedRectangle taggedRectangle = this.mRectangles.get(object);
                if (bl && object.equals(namedFace.mUuid)) {
                    taggedRectangle.setSmileGaugeVisibility(0);
                    object = PositionConverter.getInstance().convertToView(namedFace.mFacePosition);
                    taggedRectangle.setSmileGaugesPosition(object.left, object.top, object.right, object.bottom, n);
                    taggedRectangle.setSmileScore(namedFace.mSmileScore);
                    taggedRectangle.setRectCenter(object.centerX(), object.centerY());
                    taggedRectangle.setRectSize(object.width(), object.height());
                    continue;
                }
                taggedRectangle.setSmileGaugeVisibility(4);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void changeFacePriority(String string) {
        Iterator<String> iterator = this.mRectangles.keySet().iterator();
        while (iterator.hasNext()) {
            String string2 = iterator.next();
            if (string2.equals(string)) {
                if (this.mState == FocusRectanglesManager.RectangleState.TRANSPARENT) {
                    this.select(null, false);
                } else {
                    this.mRectangles.get(string2).startRectanglePressAnimation();
                }
                this.mRectangles.get(string2).changeRectangleResource(this.mFocusedRectangleResId);
                continue;
            }
            this.mRectangles.get(string2).changeRectangleResource(CommonResources.FaceIndicator.NORMAL);
        }
        return;
    }

    @Override
    protected void deselect() {
        this.hide();
        if (this.mState == FocusRectanglesManager.RectangleState.SELECTED) {
            this.setState(FocusRectanglesManager.RectangleState.TRANSPARENT);
        }
    }

    public void disableTouchDetectedFace() {
        Iterator<TaggedRectangle> iterator = this.mRectangles.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().setIsAbleToTouch(false);
        }
    }

    @Override
    protected void finish() {
        this.mRectangles.clear();
    }

    public NamedFace getTopPriorityFace() {
        return this.mFocusedFace;
    }

    @Override
    protected void hide() {
        for (TaggedRectangle taggedRectangle : this.mRectangles.values()) {
            taggedRectangle.hide();
            taggedRectangle.stopAnimation();
        }
        this.mFocusedFace = null;
    }

    public void hideOthers(String string) {
        for (String string2 : this.mRectangles.keySet()) {
            if (string2.equals(string)) continue;
            this.mRectangles.get(string2).hide();
            this.mRectangles.get(string2).stopAnimation();
        }
    }

    @Override
    protected void init(LayoutInflater layoutInflater, View[] arrview) {
        for (int i = 0; i < 5; ++i) {
            TaggedRectangle taggedRectangle = null;
            if (arrview != null) {
                taggedRectangle = (TaggedRectangle)arrview[i];
            }
            this.addTaggedRectangle(layoutInflater, "Dummy" + i, taggedRectangle);
        }
        this.mFocusedRectangleResId = CommonResources.FaceIndicator.PRIORITY;
    }

    @Override
    protected void onAfFail(AutoFocusListener.Result object) {
        object = this.mRectangles.values().iterator();
        while (object.hasNext()) {
            this.startFadeoutAnimation((TaggedRectangle)object.next());
        }
    }

    @Override
    protected void onAfSuccess(AutoFocusListener.Result object) {
        if (this.mFocusedFace != null && (object = this.mRectangles.get(this.mFocusedFace.mUuid)) != null) {
            object.changeRectangleResource(CommonResources.FaceIndicator.SUCCESS);
            this.hideOthers(this.mFocusedFace.mUuid);
        }
    }

    @Override
    protected void onRecording(AutoFocusListener.Result object) {
        this.mFocusedRectangleResId = CommonResources.FaceIndicator.SUCCESS;
        if (this.mFocusedFace != null && (object = this.mRectangles.get(this.mFocusedFace.mUuid)) != null) {
            object.changeRectangleResource(this.mFocusedRectangleResId);
        }
    }

    @Override
    public final void onRectTouchCancel(View view, MotionEvent motionEvent) {
        if (this.mChangeFocusFaceListener != null) {
            this.mChangeFocusFaceListener.onFaceRectTouchCancel(motionEvent);
        }
    }

    @Override
    public final void onRectTouchDown(View view, MotionEvent object) {
        for (String string : this.mRectangles.keySet()) {
            TaggedRectangle taggedRectangle = this.mRectangles.get(string);
            if (!taggedRectangle.equals(view)) continue;
            this.changeFacePriority(string);
            if (this.mChangeFocusFaceListener == null) break;
            this.mChangeFocusFaceListener.onChangeFocusFace(taggedRectangle.getUuid(), taggedRectangle.getRectangleLeft() - taggedRectangle.getScrollX(), taggedRectangle.getRectangleTop() - taggedRectangle.getScrollY(), taggedRectangle.getRectangleWidth(), taggedRectangle.getRectangleHeight());
        }
    }

    @Override
    public final void onRectTouchLongPress(MotionEvent motionEvent) {
        if (this.mChangeFocusFaceListener != null) {
            this.mChangeFocusFaceListener.onFaceRectLongPress(motionEvent);
        }
    }

    @Override
    public final void onRectTouchUp(View view, MotionEvent motionEvent) {
        if (this.mChangeFocusFaceListener != null) {
            this.mChangeFocusFaceListener.onFaceRectTouchUp(motionEvent);
        }
    }

    @Override
    protected void resetColor() {
        Iterator<TaggedRectangle> iterator = this.mRectangles.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().changeRectangleResource(CommonResources.FaceIndicator.NORMAL);
        }
        this.mFocusedRectangleResId = CommonResources.FaceIndicator.PRIORITY;
    }

    @Override
    protected void select(Rect rect, boolean bl) {
        if (this.mState == FocusRectanglesManager.RectangleState.TRANSPARENT) {
            this.setState(FocusRectanglesManager.RectangleState.SELECTED);
        }
    }

    public final void setChangeFocusFaceListener(ChangeFocusFaceListener changeFocusFaceListener) {
        this.mChangeFocusFaceListener = changeFocusFaceListener;
    }

    public final void setDisplayRect(Rect rect) {
        Iterator<TaggedRectangle> iterator = this.mRectangles.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().setDisplayRect(rect);
        }
    }

    @Override
    protected void setPosition(Rect[] arrrect) {
    }

    public final void setSmileLevel(SmileCapture smileCapture) {
        Iterator<TaggedRectangle> iterator = this.mRectangles.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().setSmileLevel(smileCapture.getDimenId());
        }
        this.hide();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void setState(FocusRectanglesManager.RectangleState iterator) {
        super.setState((FocusRectanglesManager.RectangleState)iterator);
        switch (.$SwitchMap$com$sonyericsson$android$camera$view$FocusRectanglesManager$RectangleState[iterator.ordinal()]) {
            case 1: {
                this.resetColor();
                return;
            }
            case 2: {
                this.mFocusedRectangleResId = 0;
                for (TaggedRectangle taggedRectangle : this.mRectangles.values()) {
                    taggedRectangle.changeRectangleResource(this.mFocusedRectangleResId);
                    taggedRectangle.hideNameTag();
                    taggedRectangle.setSmileGaugeVisibility(4);
                }
            }
            default: {
                return;
            }
            case 3: 
        }
        this.resetColor();
    }

    @Override
    protected void setSurfaceSize(int n, int n2, int n3, boolean bl) {
        Iterator<TaggedRectangle> iterator = this.mRectangles.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().setSize(n, n2, bl);
        }
    }

    @Override
    protected void show() {
        if (this.mState == FocusRectanglesManager.RectangleState.SELECTED || this.mState == FocusRectanglesManager.RectangleState.TRANSPARENT) {
            Iterator<TaggedRectangle> iterator = this.mRectangles.values().iterator();
            while (iterator.hasNext()) {
                iterator.next().setVisibility(0);
            }
        } else {
            this.hide();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void updateFaceRectangles(FaceInformationList faceInformationList, int n, boolean bl) {
        if (faceInformationList == null) {
            this.hide();
            return;
        }
        Object object = this.mRectangles.values().iterator();
        while (object.hasNext()) {
            object.next().clearUpdated();
        }
        for (int i = 0; i < 5; ++i) {
            if (i >= faceInformationList.getNamedFaceList().size()) continue;
            NamedFace namedFace = faceInformationList.getNamedFace(i);
            object = this.mRectangles.containsKey(namedFace.mUuid) ? this.mRectangles.get(namedFace.mUuid) : FaceDetectUtil.overwriteTaggedRectangle(this.mRectangles, namedFace.mUuid, faceInformationList);
            if (object == null) continue;
            this.updateRectangle((TaggedRectangle)object, namedFace, n);
        }
        object = this.mRectangles.values().iterator();
        do {
            if (!object.hasNext()) {
                object = FaceDetectUtil.sortRectangles(this.mRectangles, faceInformationList);
                if (object == null) return;
                object.changeRectangleResource(this.mFocusedRectangleResId);
                this.mFocusedFace = faceInformationList.getNamedFaceByUuid(object.getUuid());
                if (bl) return;
                this.updateSmileGauge(this.mFocusedFace, n, faceInformationList.isUseSmileGuage());
                return;
            }
            TaggedRectangle taggedRectangle = object.next();
            if (!taggedRectangle.isUpdate()) {
                taggedRectangle.hide();
                taggedRectangle.setIsAbleToTouch(false);
                continue;
            }
            taggedRectangle.setIsAbleToTouch(true);
        } while (true);
    }

    public static interface ChangeFocusFaceListener {
        public void onChangeFocusFace(String var1, int var2, int var3, int var4, int var5);

        public void onFaceRectLongPress(MotionEvent var1);

        public void onFaceRectTouchCancel(MotionEvent var1);

        public void onFaceRectTouchUp(MotionEvent var1);
    }

}

