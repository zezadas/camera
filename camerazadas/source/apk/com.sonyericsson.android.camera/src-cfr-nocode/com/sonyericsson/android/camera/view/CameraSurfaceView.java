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

    public CameraSurfaceView(Context var1);

    public CameraSurfaceView(Context var1, AttributeSet var2);

    public CameraSurfaceView(Context var1, AttributeSet var2, int var3);

    private void initialize();

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);
}

