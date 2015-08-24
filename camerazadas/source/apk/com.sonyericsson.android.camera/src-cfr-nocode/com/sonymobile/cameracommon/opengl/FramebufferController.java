/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

/*
 * Exception performing whole class analysis.
 */
public class FramebufferController {
    private final int[] mFramebuffer;
    private int[] mPreviousFramebuffer;
    private final int[] mStencilBuffer;
    private final int[] mTexture;

    public FramebufferController(int var1, int var2);

    public void bind();

    public int getTexture();

    public void release();

    public void unbind();
}

