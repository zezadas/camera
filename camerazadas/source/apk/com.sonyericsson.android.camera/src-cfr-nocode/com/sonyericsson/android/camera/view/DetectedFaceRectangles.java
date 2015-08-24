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
import com.sonyericsson.cameracommon.focusview.FaceInformationList;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import com.sonyericsson.cameracommon.focusview.Rectangle;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import java.util.HashMap;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DetectedFaceRectangles
extends FocusRectangleWithStateMachine
implements Rectangle.RectangleOnTouchListener {
    private static final String TAG;
    private ChangeFocusFaceListener mChangeFocusFaceListener;
    private NamedFace mFocusedFace;
    private int mFocusedRectangleResId;
    private final HashMap<String, TaggedRectangle> mRectangles;

    static;

    public DetectedFaceRectangles(ViewGroup var1);

    private void addTaggedRectangle(LayoutInflater var1, String var2, TaggedRectangle var3);

    private void logRect(Rect var1);

    private void logTaggedRectangle(TaggedRectangle var1);

    private void startAnimation(TaggedRectangle var1, int var2);

    private void updateRectangle(TaggedRectangle var1, NamedFace var2, int var3);

    private void updateSmileGauge(NamedFace var1, int var2, boolean var3);

    public void changeFacePriority(String var1);

    @Override
    protected void deselect();

    public void disableTouchDetectedFace();

    @Override
    protected void finish();

    public NamedFace getTopPriorityFace();

    @Override
    protected void hide();

    public void hideOthers(String var1);

    @Override
    protected void init(LayoutInflater var1, View[] var2);

    @Override
    protected void onAfFail(AutoFocusListener.Result var1);

    @Override
    protected void onAfSuccess(AutoFocusListener.Result var1);

    @Override
    protected void onRecording(AutoFocusListener.Result var1);

    @Override
    public final void onRectTouchCancel(View var1, MotionEvent var2);

    @Override
    public final void onRectTouchDown(View var1, MotionEvent var2);

    @Override
    public final void onRectTouchLongPress(MotionEvent var1);

    @Override
    public final void onRectTouchUp(View var1, MotionEvent var2);

    @Override
    protected void resetColor();

    @Override
    protected void select(Rect var1, boolean var2);

    public final void setChangeFocusFaceListener(ChangeFocusFaceListener var1);

    public final void setDisplayRect(Rect var1);

    @Override
    protected void setPosition(Rect[] var1);

    public final void setSmileLevel(SmileCapture var1);

    @Override
    protected void setState(FocusRectanglesManager.RectangleState var1);

    @Override
    protected void setSurfaceSize(int var1, int var2, int var3, boolean var4);

    @Override
    protected void show();

    public void updateFaceRectangles(FaceInformationList var1, int var2, boolean var3);

    public static interface ChangeFocusFaceListener {
        public void onChangeFocusFace(String var1, int var2, int var3, int var4, int var5);

        public void onFaceRectLongPress(MotionEvent var1);

        public void onFaceRectTouchCancel(MotionEvent var1);

        public void onFaceRectTouchUp(MotionEvent var1);
    }

}

