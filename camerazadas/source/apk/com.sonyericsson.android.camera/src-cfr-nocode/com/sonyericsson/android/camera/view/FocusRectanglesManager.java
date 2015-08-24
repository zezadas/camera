/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.app.Activity;
import android.graphics.Rect;
import android.widget.FrameLayout;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.device.AutoFocusListener;
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

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FocusRectanglesManager {
    private static final String TAG;
    private CapturingMode mCapturingMode;
    private FocusRectangleWithStateMachine mCurrentRectangle;
    private DetectedFaceRectangles mFaceRectangles;
    private FocusMode mFocusMode;
    private FocusRectanglesViewList mFocusRectanglesViewList;
    private boolean mIsTouchCapture;
    private MultiRectangles mMultiRectangles;
    private ObjectTrackingRectangle mObjectRectangle;
    private SingleRectangle mSingleRectangles;
    private SmileCapture mSmileCapture;
    private TouchRectangle mTouchRectangles;

    static;

    public FocusRectanglesManager();

    public void changeRectangle(CapturingMode var1, FocusMode var2, SmileCapture var3);

    public void claerObjectRectangle();

    public void clearFaceRectangle();

    public void clearTouchRectangle();

    public void disableTouchDetectedFace();

    public FocusMode getFocusMode();

    public NamedFace getTopPriorityFace();

    public void hide();

    public void hideFaceRectangle();

    public void hideObjectRectangle();

    public void hideTouchRectangle();

    public void inactivate();

    public boolean isReady();

    public void onSurfaceSizeChanged(int var1, int var2, int var3, boolean var4);

    public void release();

    public void setAfRectanglePosition(int var1, int var2, int var3);

    public void setCapturingMode(CapturingMode var1);

    public void setChangeFocusFaceListener(DetectedFaceRectangles.ChangeFocusFaceListener var1);

    public void setFocusMode(FocusMode var1);

    public void setPreInfalteMap(FocusRectanglesViewList var1);

    public void setRectangleColor(RectangleColor var1, AutoFocusListener.Result var2);

    public void setSmileCapture(SmileCapture var1);

    public void setTouchCapture(TouchCapture var1);

    public void setupRectangles(Activity var1, FrameLayout var2, Rect var3);

    public void showAfRectangle(int var1);

    public void showCurrentAfRectangle();

    public void startObjectTrackingAnimation(Rect var1);

    public void startTouchDownAnimation(Rect var1);

    public void startTouchUpAnimation(Rect var1);

    public void startViewFinder();

    public void updateFaceRectangle(FaceInformationList var1, int var2, boolean var3);

    public void updateObjectRectangle(Rect var1);

    public void updateTouchRectangle(Rect var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class RectangleState
    extends Enum<RectangleState> {
        private static final /* synthetic */ RectangleState[] $VALUES;
        public static final /* enum */ RectangleState DEFAULT;
        public static final /* enum */ RectangleState INACTIVE;
        public static final /* enum */ RectangleState SELECTED;
        public static final /* enum */ RectangleState TRANSPARENT;

        static;

        private RectangleState();

        public static RectangleState valueOf(String var0);

        public static RectangleState[] values();
    }

}

