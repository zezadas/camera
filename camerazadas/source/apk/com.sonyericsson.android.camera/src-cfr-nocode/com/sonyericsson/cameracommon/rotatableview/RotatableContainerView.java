/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.rotatableview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/*
 * Exception performing whole class analysis.
 */
public class RotatableContainerView
extends FrameLayout {
    private FrameLayout mContainerView;
    private FrameLayout mCustomizableView;
    private int mUiOrientation;

    public RotatableContainerView(Context var1, AttributeSet var2);

    private boolean isPortraitUi();

    private void setLandscapeUi(int var1, int var2, boolean var3);

    private void setPortraitUi(int var1, int var2, boolean var3);

    public FrameLayout getCustamizableView();

    @Override
    protected void onFinishInflate();

    @Override
    protected void onMeasure(int var1, int var2);

    public void setUiOrientation(int var1);
}

