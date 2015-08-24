/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.rotatableview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.sonyericsson.cameracommon.R;

public class RotatableContainerView
extends FrameLayout {
    private FrameLayout mContainerView;
    private FrameLayout mCustomizableView;
    private int mUiOrientation = 0;

    public RotatableContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private boolean isPortraitUi() {
        if (this.mUiOrientation == 1) {
            return true;
        }
        return false;
    }

    private void setLandscapeUi(int n, int n2, boolean bl) {
        int n3;
        this.mContainerView.getLayoutParams().height = n3 = Math.max(n, n2);
        this.mContainerView.getLayoutParams().width = n3;
        this.requestLayout();
        n3 = this.mCustomizableView.getMeasuredWidth();
        int n4 = this.mCustomizableView.getMeasuredHeight();
        if (n3 != n || n4 != n2) {
            this.mCustomizableView.getLayoutParams().width = n;
            this.mCustomizableView.getLayoutParams().height = n2;
            this.mCustomizableView.requestLayout();
        }
        this.mCustomizableView.setRotation(0.0f);
    }

    private void setPortraitUi(int n, int n2, boolean bl) {
        int n3;
        this.mContainerView.getLayoutParams().height = n3 = Math.max(n, n2);
        this.mContainerView.getLayoutParams().width = n3;
        this.requestLayout();
        n3 = this.mCustomizableView.getMeasuredWidth();
        int n4 = this.mCustomizableView.getMeasuredHeight();
        if (n3 != n2 || n4 != n) {
            this.mCustomizableView.getLayoutParams().width = n2;
            this.mCustomizableView.getLayoutParams().height = n;
            this.mCustomizableView.requestLayout();
        }
        if (bl) {
            this.mCustomizableView.setRotation(90.0f);
            return;
        }
        this.mCustomizableView.setRotation(270.0f);
    }

    public FrameLayout getCustamizableView() {
        return this.mCustomizableView;
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mContainerView = (FrameLayout)this.findViewById(R.id.container);
        this.mCustomizableView = (FrameLayout)this.findViewById(R.id.overlay);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onMeasure(int n, int n2) {
        int n3 = RotatableContainerView.getDefaultSize(this.getSuggestedMinimumWidth(), n);
        int n4 = RotatableContainerView.getDefaultSize(this.getSuggestedMinimumHeight(), n2);
        if (this.mUiOrientation == 0) {
            this.setLandscapeUi(n3, n4, false);
        } else if (this.isPortraitUi()) {
            this.setPortraitUi(n3, n4, false);
        } else {
            this.setLandscapeUi(n3, n4, false);
        }
        super.onMeasure(n, n2);
    }

    public void setUiOrientation(int n) {
        if (this.mUiOrientation != n) {
            this.mUiOrientation = n;
            this.requestLayout();
        }
    }
}

