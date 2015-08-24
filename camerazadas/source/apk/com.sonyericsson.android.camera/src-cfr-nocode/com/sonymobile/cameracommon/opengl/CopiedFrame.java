/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.view.View;
import com.sonymobile.cameracommon.opengl.FrameBase;
import com.sonymobile.cameracommon.opengl.OpenGlException;
import java.nio.FloatBuffer;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CopiedFrame
extends FrameBase {
    private static final String TAG;
    private int mInputTexture;
    private int mInputTextureInGLSL;

    static;

    public CopiedFrame(Context var1, View var2);

    private void updateVertexBuffer(FloatBuffer var1);

    @Override
    protected void doRender();

    @Override
    protected void initializeShaderProgram() throws OpenGlException;

    @Override
    public void release();

    @Override
    public void render();

    public void setAlignXYAxisCoordinates();

    public void setInputTexture(int var1);

    public void setNormalizedXYAxisToScreen();
}

