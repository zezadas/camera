/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.gltextureview;

import com.sonymobile.cameracommon.gltextureview.GLTextureView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class EGLConfigChooser_RGBA8888D16S8
implements GLTextureView.EGLConfigChooser {
    private final int mBitA;
    private final int mBitB;
    private final int mBitDepth;
    private final int mBitG;
    private final int mBitR;
    private final int mBitStencil;

    public EGLConfigChooser_RGBA8888D16S8();

    private static int getConfigAttrib(EGL10 var0, EGLDisplay var1, EGLConfig var2, int var3);

    private int[] getRequiredConfigSpec(GLTextureView.OpenGLVersion var1);

    @Override
    public EGLConfig chooseConfig(EGL10 var1, EGLDisplay var2, GLTextureView.OpenGLVersion var3);

}

