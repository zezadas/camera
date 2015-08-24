/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.rotatableview;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialogStateListenerHandler;

/*
 * Exception performing whole class analysis.
 */
public class RotatableDialog
implements View.OnTouchListener,
View.OnAttachStateChangeListener {
    public static final String TAG = "RotatableDialog";
    private final int mAnimationsForLand;
    private final int mAnimationsForPort;
    private AlertDialog mDialog;
    private int mDialogWidthForLand;
    private int mDialogWidthForPort;
    private int mDisplayHeight;
    private int mDisplayWidth;
    private int mOrientation;
    private View mScrollableView;
    private RotatableDialogStateListenerHandler mStateListenerHandler;
    private Rect mTempRect;
    private int mTranslationYForLand;
    private int mTranslationYForPort;
    private Window mWindow;

    protected RotatableDialog(AlertDialog var1);

    private void attachScrollableView();

    private int calculateOutValue(int var1, int var2, int var3);

    private void initialize();

    private void release();

    private void removeListeners();

    private void setWindowAnimations(int var1);

    private void setupListeners();

    private void updateLayout(int var1);

    public void cancel();

    public void dismiss();

    public void hide();

    public boolean isShowing();

    public boolean isShown(DialogInterface var1);

    @Override
    public boolean onTouch(View var1, MotionEvent var2);

    @Override
    public void onViewAttachedToWindow(View var1);

    @Override
    public void onViewDetachedFromWindow(View var1);

    public void setCancelable(boolean var1);

    public void setCanceledOnTouchOutside(boolean var1);

    public void setOnCancelListener(DialogInterface.OnCancelListener var1);

    public void setOnDismissListener(DialogInterface.OnDismissListener var1);

    public void setOnKeyListener(DialogInterface.OnKeyListener var1);

    public void setOnShowListener(DialogInterface.OnShowListener var1);

    public void setOrientation(int var1);

    public void setPositiveButtonEnabled(boolean var1);

    public void setStateListener(StateListener var1);

    public void setViewAsScrollable(View var1);

    public void show();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder
    extends AlertDialog.Builder {
        private MessagePopup.Cancelable mIsCancelable;
        private MessagePopup.Cancelable mIsCancelableOnTouchOutside;
        protected View mScrollableView;
        private int mSensorOrientation;

        public Builder(Context var1);

        public RotatableDialog createRotatableDialog();

        public Builder setAlertIcon();

        public Builder setCancelable(MessagePopup.Cancelable var1, MessagePopup.Cancelable var2);

        public Builder setOrientation(int var1);

        public Builder setViewAsScrollable(View var1);
    }

    public static interface StateListener {
        public void onCancel(RotatableDialog var1);

        public void onDismiss(RotatableDialog var1);

        public void onHide(RotatableDialog var1);

        public void onShow(RotatableDialog var1);
    }

}

