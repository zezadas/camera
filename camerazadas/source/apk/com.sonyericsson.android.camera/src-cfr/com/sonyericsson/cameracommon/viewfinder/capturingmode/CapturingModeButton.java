/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.capturingmode;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.ViewUtility;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButtonAttributes;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.OnClickCapturingModeButtonListener;

public class CapturingModeButton
extends RelativeLayout
implements View.OnClickListener,
View.OnTouchListener {
    private static final int INVALID_ID = -1;
    private static final int PRESSED_COLOR_FILTER = 1711276032;
    private static final float ROTATE_DEGREE = -90.0f;
    private static final String TAG = CapturingModeButton.class.getSimpleName();
    private CapturingModeButtonAttributes mAttributes;
    private ImageView mBackgroundView;
    protected boolean mHasInvalidResources;
    private ImageView mIconView;
    private OnClickCapturingModeButtonListener mListener;
    private int mSensorOrientation = 0;

    public CapturingModeButton(Context context) {
        this(context, null);
    }

    public CapturingModeButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private ImageView createBackground() {
        ImageView imageView = new ImageView(this.getContext());
        imageView.setClickable(false);
        imageView.setFocusable(false);
        imageView.setFocusableInTouchMode(false);
        this.addView(imageView);
        imageView.getLayoutParams().width = -1;
        imageView.getLayoutParams().height = -1;
        return imageView;
    }

    private ImageView createIcon() {
        ImageView imageView = new ImageView(this.getContext());
        imageView.setClickable(false);
        imageView.setFocusable(false);
        imageView.setFocusableInTouchMode(false);
        this.addView(imageView);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams)imageView.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.addRule(15);
        layoutParams.addRule(14);
        return imageView;
    }

    private int getIconBitmapId() {
        if (this.mAttributes == null) {
            return -1;
        }
        return this.mAttributes.getIconId();
    }

    private void updateBackground() {
        int n = 0;
        if (this.mAttributes == null) {
            n = 4;
        }
        if (this.mBackgroundView != null) {
            this.mBackgroundView.setVisibility(n);
        }
    }

    private void updateIcon() {
        if (this.mIconView == null) {
            return;
        }
        if (this.mAttributes == null) {
            this.mIconView.setVisibility(4);
            return;
        }
        int n = this.getIconBitmapId();
        this.mIconView.setImageResource(n);
        this.mIconView.setVisibility(0);
        String string = null;
        n = this.mAttributes.getTextId();
        if (n != -1) {
            string = this.getContext().getString(R.string.cam_strings_accessibility_capturing_mode_txt);
            string = string + " " + this.getContext().getString(n);
        }
        this.setContentDescription((CharSequence)string);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void updateLayout() {
        try {
            this.updateBackground();
            this.updateIcon();
            this.mHasInvalidResources = false;
        }
        catch (Resources.NotFoundException var1_1) {
            this.mHasInvalidResources = true;
        }
        catch (RuntimeException var1_2) {
            this.mHasInvalidResources = true;
        }
        if (this.mHasInvalidResources) {
            if (this.mIconView != null) {
                this.mIconView.setVisibility(4);
            }
            if (this.mBackgroundView != null) {
                this.mBackgroundView.setVisibility(4);
            }
        }
        this.requestLayout();
        this.invalidate();
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        if (this.mSensorOrientation == 1) {
            canvas.rotate(-90.0f, (float)this.getWidth() / 2.0f, (float)this.getHeight() / 2.0f);
        }
        super.dispatchDraw(canvas);
    }

    public CapturingModeButtonAttributes getCurrentCapturingMode() {
        return this.mAttributes;
    }

    @Override
    public void onClick(View view) {
        if (this.mIconView.isShown()) {
            this.mListener.onClickCapturingModeButton(this);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean onTouch(View var1_1, MotionEvent var2_2) {
        switch (var2_2.getAction()) {
            case 0: {
                this.mIconView.setColorFilter(1711276032);
                ** break;
            }
            case 2: {
                if (!ViewUtility.hitTest(var1_1, var2_2)) {
                    this.mIconView.clearColorFilter();
                }
            }
lbl8: // 5 sources:
            default: {
                ** GOTO lbl12
            }
            case 1: 
            case 3: 
        }
        this.mIconView.clearColorFilter();
lbl12: // 2 sources:
        this.mIconView.invalidate();
        return false;
    }

    public void setCurrentCapturingMode(CapturingModeButtonAttributes capturingModeButtonAttributes) {
        this.mAttributes = capturingModeButtonAttributes;
        this.updateLayout();
    }

    public void setOnCapturingModeButtonListener(OnClickCapturingModeButtonListener onClickCapturingModeButtonListener) {
        this.mListener = onClickCapturingModeButtonListener;
    }

    public void setSensorOrientation(int n) {
        this.mSensorOrientation = n;
        this.updateLayout();
    }

    public void setup(OnClickCapturingModeButtonListener onClickCapturingModeButtonListener) {
        this.setVisibility(0);
        this.setClickable(true);
        this.setFocusable(false);
        this.setOnTouchListener(this);
        this.setOnClickListener(this);
        this.setOnCapturingModeButtonListener(onClickCapturingModeButtonListener);
        this.mBackgroundView = this.createBackground();
        this.mIconView = this.createIcon();
        this.mHasInvalidResources = false;
        this.updateLayout();
    }
}

