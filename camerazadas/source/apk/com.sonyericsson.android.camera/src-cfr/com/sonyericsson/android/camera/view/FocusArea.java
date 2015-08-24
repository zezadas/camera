/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceView;

public class FocusArea
extends SurfaceView {
    private static final String Tag = "FocusArea";

    public FocusArea(Context context) {
        super(context);
        this.initialize();
    }

    public FocusArea(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initialize();
    }

    public FocusArea(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.initialize();
    }

    private void initialize() {
        this.setFocusable(true);
    }

    @Override
    protected void onSizeChanged(int n, int n2, int n3, int n4) {
        super.onSizeChanged(n, n2, n3, n4);
    }
}

