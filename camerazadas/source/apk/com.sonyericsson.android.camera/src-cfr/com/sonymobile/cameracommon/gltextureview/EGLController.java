/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.gltextureview;

import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.view.Surface;
import com.sonymobile.cameracommon.gltextureview.GLTextureView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

public class EGLController {
    public static final String TAG = EGLController.class.getSimpleName();
    private EGL10 mEgl = null;
    private final Object mEglLock = new Object();
    private EGLResources mSystemEglRes = null;
    private EGLResources mThisEglRes = null;

    private boolean isUiThread() {
        return Thread.currentThread().equals(Looper.getMainLooper().getThread());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void disable() {
        Object object = this.mEglLock;
        synchronized (object) {
            if (this.isUiThread()) {
                this.mEgl.eglMakeCurrent(this.mSystemEglRes.eglDisplay, this.mSystemEglRes.eglDrawSurface, this.mSystemEglRes.eglReadSurface, this.mSystemEglRes.eglContext);
            } else {
                this.mEgl.eglMakeCurrent(this.mThisEglRes.eglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void enable() {
        Object object = this.mEglLock;
        synchronized (object) {
            this.mEgl.eglMakeCurrent(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglDrawSurface, this.mThisEglRes.eglDrawSurface, this.mThisEglRes.eglContext);
            return;
        }
    }

    public EGLContext getEGLContext() {
        return this.mThisEglRes.eglContext;
    }

    public void initialize(GLTextureView.EGLConfigChooser eGLConfigChooser, GLTextureView.OpenGLVersion openGLVersion) {
        this.initialize(eGLConfigChooser, openGLVersion, EGL10.EGL_NO_CONTEXT);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void initialize(GLTextureView.EGLConfigChooser object, GLTextureView.OpenGLVersion openGLVersion, EGLContext eGLContext) {
        Object object2 = this.mEglLock;
        synchronized (object2) {
            if (this.mEgl != null) {
                throw new IllegalStateException("EGL already initialized.");
            }
            this.mEgl = (EGL10)EGLContext.getEGL();
            this.mSystemEglRes = new EGLResources();
            this.mSystemEglRes.eglDisplay = this.mEgl.eglGetCurrentDisplay();
            this.mSystemEglRes.eglReadSurface = this.mEgl.eglGetCurrentSurface(12378);
            this.mSystemEglRes.eglDrawSurface = this.mEgl.eglGetCurrentSurface(12377);
            this.mSystemEglRes.eglContext = this.mEgl.eglGetCurrentContext();
            this.mThisEglRes = new EGLResources();
            this.mThisEglRes.eglDisplay = this.mEgl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            if (this.mThisEglRes.eglDisplay == EGL10.EGL_NO_DISPLAY) {
                throw new RuntimeException("EGL_NO_DISPLAY");
            }
            Object object3 = new int[2];
            if (!this.mEgl.eglInitialize(this.mThisEglRes.eglDisplay, (int[])object3)) {
                throw new RuntimeException("Failed to eglInitialize()");
            }
            this.mThisEglRes.eglConfig = object.chooseConfig(this.mEgl, this.mThisEglRes.eglDisplay, openGLVersion);
            if (this.mThisEglRes.eglConfig == null) {
                throw new RuntimeException("Failed to chooseConfig()");
            }
            object = object3 = (Object)null;
            switch (.$SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$OpenGLVersion[openGLVersion.ordinal()]) {
                case 2: {
                    Object object4 = object = (Object)new int[3];
                    object4[0] = 12440;
                    object4[1] = 2;
                    object4[2] = 12344;
                }
                case 1: {
                    break;
                }
                default: {
                    object = object3;
                }
            }
            this.mThisEglRes.eglContext = this.mEgl.eglCreateContext(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglConfig, eGLContext, (int[])object);
            if (this.mThisEglRes.eglContext == EGL10.EGL_NO_CONTEXT) {
                throw new RuntimeException("Failed to eglCreateContext()");
            }
            return;
        }
    }

    public boolean isValid() {
        return this.mThisEglRes.isValid();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean onDrawFrameFinished() {
        Object object = this.mEglLock;
        synchronized (object) {
            return this.mEgl.eglSwapBuffers(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglDrawSurface);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void onSurfaceTextureChanged(SurfaceTexture object) {
        Object object2 = this.mEglLock;
        synchronized (object2) {
            if (this.mThisEglRes.eglDrawSurface != null) {
                this.mEgl.eglDestroySurface(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglDrawSurface);
            }
            if ((object = this.mEgl.eglCreateWindowSurface(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglConfig, object, null)) == EGL10.EGL_NO_SURFACE) {
                throw new RuntimeException("Failed to eglCreateWindowSurface()");
            }
            this.mThisEglRes.eglDrawSurface = object;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void onSurfaceTextureChanged(Surface object) {
        Object object2 = this.mEglLock;
        synchronized (object2) {
            if (this.mThisEglRes.eglDrawSurface != null) {
                this.mEgl.eglDestroySurface(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglDrawSurface);
            }
            this.mThisEglRes.eglDrawSurface = object = this.mEgl.eglCreateWindowSurface(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglConfig, object, null);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void release() {
        Object object = this.mEglLock;
        synchronized (object) {
            if (this.mEgl == null) {
                return;
            }
            this.mEgl.eglMakeCurrent(this.mThisEglRes.eglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            if (this.mThisEglRes.eglContext != null) {
                this.mEgl.eglDestroyContext(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglContext);
            }
            if (this.mThisEglRes.eglReadSurface != null) {
                this.mEgl.eglDestroySurface(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglReadSurface);
            }
            if (this.mThisEglRes.eglDrawSurface != null) {
                this.mEgl.eglDestroySurface(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglDrawSurface);
            }
            this.mThisEglRes.release();
            this.mThisEglRes = null;
            this.mSystemEglRes.release();
            this.mSystemEglRes = null;
            this.mEgl = null;
            return;
        }
    }

    private static class EGLResources {
        public EGLConfig eglConfig = null;
        public EGLContext eglContext = null;
        public EGLDisplay eglDisplay = null;
        public EGLSurface eglDrawSurface = null;
        public EGLSurface eglReadSurface = null;

        private EGLResources() {
        }

        public boolean isValid() {
            if (this.eglDisplay != null && this.eglDrawSurface != null && this.eglContext != null && this.eglConfig != null) {
                return true;
            }
            return false;
        }

        public void release() {
            this.eglDisplay = null;
            this.eglReadSurface = null;
            this.eglDrawSurface = null;
            this.eglContext = null;
            this.eglConfig = null;
        }
    }

}

