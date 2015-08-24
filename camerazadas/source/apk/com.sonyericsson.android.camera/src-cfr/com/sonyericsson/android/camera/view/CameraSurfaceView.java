/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceView;

public class CameraSurfaceView
extends SurfaceView {
    private static final String TAG = "CameraSurfaceView";

    public CameraSurfaceView(Context context) {
        super(context);
        this.initialize();
    }

    public CameraSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initialize();
    }

    public CameraSurfaceView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.initialize();
    }

    private void initialize() {
        this.setFocusable(false);
    }

    @Override
    protected void onLayout(boolean bl, int n, int n2, int n3, int n4) {
        super.onLayout(bl, n, n2, n3, n4);
        if (bl) {
            // empty if block
        }
    }
}

