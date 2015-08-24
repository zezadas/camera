/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.sonyericsson.android.camera.ExtendedActivity;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FrontCameraLocationIndicatorDialog {
    private static final String TAG;
    private final ExtendedActivity mActivity;
    private final View.OnKeyListener mBackgroundKeyListener;
    private final View.OnTouchListener mBackgroundTouchListener;
    private final OnCloseListener mCloseListener;
    private final View.OnTouchListener mDialogTouchListener;
    private final View.OnClickListener mOkButtonClickListener;
    private int mOrientation;
    private final FrameLayout mParent;

    static;

    public FrontCameraLocationIndicatorDialog(FrameLayout var1, OnCloseListener var2);

    static /* synthetic */ OnCloseListener access$000(FrontCameraLocationIndicatorDialog var0);

    private void applySensorOrientation();

    private void attatchView();

    private void detatchView();

    private int getDimen(int var1);

    private View getLayout();

    private boolean isShown();

    private void updateLayoutSize();

    public void close();

    public void setSensorOrientation(int var1);

    public void show();

    public static interface OnCloseListener {
        public void onClose(FrontCameraLocationIndicatorDialog var1);
    }

}

