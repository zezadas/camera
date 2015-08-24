/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.gltextureview;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.sonymobile.cameracommon.gltextureview.GLTextureView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class EGLController {
    public static final String TAG;
    private EGL10 mEgl;
    private final Object mEglLock;
    private EGLResources mSystemEglRes;
    private EGLResources mThisEglRes;

    static;

    public EGLController();

    private boolean isUiThread();

    public void disable();

    public void enable();

    public EGLContext getEGLContext();

    public void initialize(GLTextureView.EGLConfigChooser var1, GLTextureView.OpenGLVersion var2);

    public void initialize(GLTextureView.EGLConfigChooser var1, GLTextureView.OpenGLVersion var2, EGLContext var3);

    public boolean isValid();

    public boolean onDrawFrameFinished();

    public void onSurfaceTextureChanged(SurfaceTexture var1);

    public void onSurfaceTextureChanged(Surface var1);

    public void release();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class EGLResources {
        public EGLConfig eglConfig;
        public EGLContext eglContext;
        public EGLDisplay eglDisplay;
        public EGLSurface eglDrawSurface;
        public EGLSurface eglReadSurface;

        private EGLResources();

        /* synthetic */ EGLResources( var1);

        public boolean isValid();

        public void release();
    }

}

