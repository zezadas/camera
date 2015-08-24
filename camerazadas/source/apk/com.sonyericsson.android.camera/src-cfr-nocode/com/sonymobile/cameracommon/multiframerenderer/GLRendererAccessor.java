/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import android.graphics.Bitmap;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonymobile.cameracommon.gltextureview.EGLController;
import com.sonymobile.cameracommon.opengl.FrameData;

public interface GLRendererAccessor {
    public Bitmap getGLTextureViewBitmap();

    public void getGLTextureViewBitmap(Bitmap var1);

    public void requestFrame(String var1, FrameData var2);

    public void requestTakeGlTextureViewBitmap(OnTakeGlTextureViewBitmapCallback var1, PhotoSavingRequest var2, Bitmap var3);

    public void setMirrored(String var1, boolean var2);

    public void startVideoFrameRendering(EGLController var1, int var2, int var3);

    public void stopVideoFrameRendering();

    public static interface OnTakeGlTextureViewBitmapCallback {
        public void onTakeGlTextureViewBitmap(Bitmap var1, PhotoSavingRequest var2);
    }

}

