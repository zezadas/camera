/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import android.view.View;
import com.sonymobile.cameracommon.opengl.FrameBase;

public interface FrameBaseFactory {
    public void initialize(View var1);

    public FrameBase obtain();

    public void release();
}

