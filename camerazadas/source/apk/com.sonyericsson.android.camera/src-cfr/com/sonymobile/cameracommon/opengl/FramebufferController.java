/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.opengl.GLES20;
import java.nio.IntBuffer;

public class FramebufferController {
    private final int[] mFramebuffer = new int[1];
    private int[] mPreviousFramebuffer = new int[1];
    private final int[] mStencilBuffer = new int[1];
    private final int[] mTexture = new int[1];

    public FramebufferController(int n, int n2) {
        GLES20.glGenFramebuffers(1, this.mFramebuffer, 0);
        GLES20.glGenTextures(1, this.mTexture, 0);
        GLES20.glBindTexture(3553, this.mTexture[0]);
        GLES20.glTexImage2D(3553, 0, 6408, n, n2, 0, 6408, 5121, null);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GLES20.glTexParameteri(3553, 10240, 9728);
        GLES20.glTexParameteri(3553, 10241, 9728);
        GLES20.glBindTexture(3553, 0);
        GLES20.glGenRenderbuffers(1, IntBuffer.wrap(this.mStencilBuffer));
        GLES20.glBindRenderbuffer(36161, this.mStencilBuffer[0]);
        GLES20.glRenderbufferStorage(36161, 36168, n, n2);
        GLES20.glBindRenderbuffer(36161, 0);
        this.bind();
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.mTexture[0], 0);
        GLES20.glFramebufferRenderbuffer(36160, 36128, 36161, this.mStencilBuffer[0]);
        this.unbind();
    }

    public void bind() {
        GLES20.glGetIntegerv(36006, this.mPreviousFramebuffer, 0);
        GLES20.glBindFramebuffer(36160, this.mFramebuffer[0]);
    }

    public int getTexture() {
        return this.mTexture[0];
    }

    public void release() {
        GLES20.glDeleteFramebuffers(1, this.mFramebuffer, 0);
        GLES20.glDeleteRenderbuffers(1, this.mStencilBuffer, 0);
        GLES20.glDeleteTextures(1, this.mTexture, 0);
    }

    public void unbind() {
        GLES20.glBindFramebuffer(36160, this.mPreviousFramebuffer[0]);
    }
}

