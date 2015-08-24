/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.capturingmode;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButtonAttributes;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.OnClickCapturingModeButtonListener;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CapturingModeButton
extends RelativeLayout
implements View.OnClickListener,
View.OnTouchListener {
    private static final int INVALID_ID = -1;
    private static final int PRESSED_COLOR_FILTER = 1711276032;
    private static final float ROTATE_DEGREE = -90.0f;
    private static final String TAG;
    private CapturingModeButtonAttributes mAttributes;
    private ImageView mBackgroundView;
    protected boolean mHasInvalidResources;
    private ImageView mIconView;
    private OnClickCapturingModeButtonListener mListener;
    private int mSensorOrientation;

    static;

    public CapturingModeButton(Context var1);

    public CapturingModeButton(Context var1, AttributeSet var2);

    private ImageView createBackground();

    private ImageView createIcon();

    private int getIconBitmapId();

    private void updateBackground();

    private void updateIcon();

    private void updateLayout();

    @Override
    protected void dispatchDraw(Canvas var1);

    public CapturingModeButtonAttributes getCurrentCapturingMode();

    @Override
    public void onClick(View var1);

    @Override
    public boolean onTouch(View var1, MotionEvent var2);

    public void setCurrentCapturingMode(CapturingModeButtonAttributes var1);

    public void setOnCapturingModeButtonListener(OnClickCapturingModeButtonListener var1);

    public void setSensorOrientation(int var1);

    public void setup(OnClickCapturingModeButtonListener var1);
}

