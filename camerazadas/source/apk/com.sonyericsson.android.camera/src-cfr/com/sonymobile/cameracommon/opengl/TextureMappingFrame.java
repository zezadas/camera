/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.opengl.GLES20;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;
import com.sonymobile.cameracommon.opengl.OpenGlException;
import com.sonymobile.cameracommon.opengl.YuvFrame;
import java.nio.Buffer;

public class TextureMappingFrame
extends YuvFrame {
    private static final String TAG = TextureMappingFrame.class.getSimpleName();
    protected int[] mIndexBuffers = new int[1];
    protected int mIndicesNumber;
    protected int[] mVertexAlphaBuffers = new int[1];
    protected int mVertexAlphaInGLSL;

    public TextureMappingFrame(Context context, View view) {
        super(context, view);
    }

    @Override
    protected boolean disableLocalFunctions() {
        GLES20.glDisableVertexAttribArray(this.mVertexAlphaInGLSL);
        return super.enableLocalFunctions();
    }

    @Override
    protected void doRender() {
        this.renderYuvFrame();
    }

    @Override
    protected boolean enableLocalFunctions() {
        GLES20.glEnableVertexAttribArray(this.mVertexAlphaInGLSL);
        return super.enableLocalFunctions();
    }

    @Override
    protected void initializeShaderProgram() throws OpenGlException {
        this.mVertexAlphaInGLSL = GLES20.glGetAttribLocation(this.mShaderProgram, "vertexAlpha");
        ExtendedGlSurfaceView.checkGlErrorWithException();
        super.initializeShaderProgram();
    }

    @Override
    protected void initializeVertexAndTextureCoordinatesBuffer() {
        GLES20.glGenBuffers(this.mIndexBuffers.length, this.mIndexBuffers, 0);
        GLES20.glGenBuffers(this.mVertexAlphaBuffers.length, this.mVertexAlphaBuffers, 0);
        this.updateIndexBuffer(new byte[]{0, 1, 2, 3, 2, 1});
        this.updateVertexAlphaBuffer(new float[]{1.0f, 1.0f, 1.0f, 1.0f});
        super.initializeVertexAndTextureCoordinatesBuffer();
    }

    @Override
    public void release() {
        super.release();
    }

    protected boolean renderYuvFrame() {
        GLES20.glBindBuffer(34962, this.mVertexAlphaBuffers[0]);
        GLES20.glVertexAttribPointer(this.mVertexAlphaInGLSL, 1, 5126, false, 0, 0);
        if (!this.setupTexture(this.mVertexBuffers[0], this.mTexCoordBuffers[0], this.mFrameTextures)) {
            return false;
        }
        this.setupParameter(this.mShaderProgram);
        this.setupMvpMatrix();
        GLES20.glBindBuffer(34963, this.mIndexBuffers[0]);
        GLES20.glDrawElements(4, this.mIndicesNumber, 5121, 0);
        GLES20.glBindBuffer(34963, 0);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, ".render():[Draw frame Error]");
            return false;
        }
        return true;
    }

    public void updateIndexBuffer(byte[] object) {
        this.mIndicesNumber = object.length;
        object = ExtendedGlSurfaceView.allocByteBuffer((byte[])object);
        GLES20.glBindBuffer(34963, this.mIndexBuffers[0]);
        GLES20.glBufferData(34963, object.limit() * 1, (Buffer)object, 35048);
        GLES20.glBindBuffer(34963, 0);
    }

    public void updateVertexAlphaBuffer(float[] object) {
        object = ExtendedGlSurfaceView.allocFloatBuffer((float[])object);
        GLES20.glBindBuffer(34962, this.mVertexAlphaBuffers[0]);
        GLES20.glBufferData(34962, object.limit() * 4, (Buffer)object, 35048);
        GLES20.glBindBuffer(34962, 0);
    }
}

