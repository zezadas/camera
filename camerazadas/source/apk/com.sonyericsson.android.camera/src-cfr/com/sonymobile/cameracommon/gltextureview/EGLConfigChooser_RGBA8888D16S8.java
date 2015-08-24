/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.gltextureview;

import com.sonymobile.cameracommon.gltextureview.GLTextureView;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

public class EGLConfigChooser_RGBA8888D16S8
implements GLTextureView.EGLConfigChooser {
    private final int mBitA = 8;
    private final int mBitB = 8;
    private final int mBitDepth = 16;
    private final int mBitG = 8;
    private final int mBitR = 8;
    private final int mBitStencil = 8;

    private static int getConfigAttrib(EGL10 eGL10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int n) {
        int[] arrn = new int[1];
        eGL10.eglGetConfigAttrib(eGLDisplay, eGLConfig, n, arrn);
        return arrn[0];
    }

    /*
     * Enabled aggressive block sorting
     */
    private int[] getRequiredConfigSpec(GLTextureView.OpenGLVersion enum_) {
        ArrayList<Integer> arrayList = new ArrayList<Integer>();
        switch (.$SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$OpenGLVersion[enum_.ordinal()]) {
            case 2: {
                arrayList.add(12352);
                arrayList.add(4);
            }
        }
        arrayList.add(12324);
        arrayList.add(8);
        arrayList.add(12323);
        arrayList.add(8);
        arrayList.add(12322);
        arrayList.add(8);
        arrayList.add(12321);
        arrayList.add(8);
        arrayList.add(12325);
        arrayList.add(16);
        arrayList.add(12326);
        arrayList.add(8);
        arrayList.add(12344);
        int[] arrn = new int[arrayList.size()];
        for (int i = 0; i < arrayList.size(); ++i) {
            arrn[i] = (Integer)arrayList.get(i);
        }
        return arrn;
    }

    @Override
    public EGLConfig chooseConfig(EGL10 eGL10, EGLDisplay eGLDisplay, GLTextureView.OpenGLVersion object) {
        Object object2 = new int[1];
        if (!eGL10.eglGetConfigs(eGLDisplay, null, 0, (int[])object2)) {
            throw new RuntimeException("Failed to eglChooseConfig()");
        }
        object2 = new EGLConfig[object2[0]];
        if (!eGL10.eglChooseConfig(eGLDisplay, this.getRequiredConfigSpec((GLTextureView.OpenGLVersion)object), (EGLConfig[])object2, object2.length, null)) {
            throw new RuntimeException("Failed to eglChooseConfig()");
        }
        int n = object2.length;
        for (int i = 0; i < n; ++i) {
            object = object2[i];
            int n2 = EGLConfigChooser_RGBA8888D16S8.getConfigAttrib(eGL10, eGLDisplay, (EGLConfig)object, 12324);
            int n3 = EGLConfigChooser_RGBA8888D16S8.getConfigAttrib(eGL10, eGLDisplay, (EGLConfig)object, 12323);
            int n4 = EGLConfigChooser_RGBA8888D16S8.getConfigAttrib(eGL10, eGLDisplay, (EGLConfig)object, 12322);
            int n5 = EGLConfigChooser_RGBA8888D16S8.getConfigAttrib(eGL10, eGLDisplay, (EGLConfig)object, 12321);
            int n6 = EGLConfigChooser_RGBA8888D16S8.getConfigAttrib(eGL10, eGLDisplay, (EGLConfig)object, 12325);
            int n7 = EGLConfigChooser_RGBA8888D16S8.getConfigAttrib(eGL10, eGLDisplay, (EGLConfig)object, 12326);
            if (n2 != 8 || n3 != 8 || n4 != 8 || 8 > n5 || 16 > n6 || 8 > n7) continue;
            return object;
        }
        return object2[0];
    }

}

