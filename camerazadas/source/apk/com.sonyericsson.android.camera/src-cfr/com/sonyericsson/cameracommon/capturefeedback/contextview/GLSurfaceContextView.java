/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.capturefeedback.contextview;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.View;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.media.utility.ReferenceClock;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;
import com.sonymobile.cameracommon.opengl.ShaderProgramFactory;
import com.sonymobile.cameracommon.opengl.SimpleFrame;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class GLSurfaceContextView
extends ExtendedGlSurfaceView
implements GLSurfaceView.Renderer,
CaptureFeedback {
    private static final float CENTER_X_POS = 0.0f;
    private static final float CENTER_Y_POS = 0.0f;
    private static final float CENTER_Z_POS = 0.2f;
    private static final float[] EYE_SIGHT_MATRIX;
    private static final float[] PARALLEL_PROJECTION_MATRIX;
    private static final float[] PERSPECTIVE_PROJECTION_MATRIX;
    private static final long REFRESH_INTERVAL_IN_MILLIS = 33;
    private static final float[] ROOT_GM;
    private static final String TAG;
    private CaptureFeedbackAnimation mAnimation;
    private final CaptureFeedbackAnimationCanvas mAnimationCanvas;
    private final ReferenceClock mAnimationElapsedTimeCount;
    private long mAnimationFrameCount = 0;
    private SimpleFrame mFlashFeedback = null;
    private final SetInvisibleTask mSetInvisibleTask;
    private int mSimpleFrameShader = 0;

    static {
        TAG = GLSurfaceContextView.class.getSimpleName();
        EYE_SIGHT_MATRIX = new float[16];
        PERSPECTIVE_PROJECTION_MATRIX = new float[16];
        PARALLEL_PROJECTION_MATRIX = new float[16];
        ROOT_GM = new float[16];
        Matrix.setLookAtM(EYE_SIGHT_MATRIX, 0, 0.0f, 0.0f, 100.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
        Matrix.orthoM(PARALLEL_PROJECTION_MATRIX, 0, -1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 200.0f);
        Matrix.frustumM(PERSPECTIVE_PROJECTION_MATRIX, 0, -1.0f, 1.0f, -1.0f, 1.0f, 50.0f, 150.0f);
    }

    public GLSurfaceContextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSetInvisibleTask = new SetInvisibleTask();
        this.mAnimationCanvas = new AnimationCanvas();
        this.mAnimationElapsedTimeCount = new ReferenceClock();
        this.setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        this.setZOrderOnTop(true);
        this.setRenderer(this);
        this.setRenderMode(0);
        this.getHolder().setFormat(-2);
    }

    private void clearSurface() {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClear(17664);
    }

    private void createAllShaders() {
        if (this.mSimpleFrameShader != 0) {
            ShaderProgramFactory.deleteShaderProgram(this.mSimpleFrameShader);
        }
        this.mSimpleFrameShader = ShaderProgramFactory.createSimpleFrameShaderProgram(this.getContext());
    }

    private boolean disableGlobalFunctions() {
        GLES20.glDisable(3042);
        GLES20.glDisable(2929);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void doRender() {
        boolean bl = true;
        this.clearSurface();
        if (this.mFlashFeedback == null) {
            return;
        }
        Matrix.setIdentityM(ROOT_GM, 0);
        Matrix.multiplyMM(ROOT_GM, 0, EYE_SIGHT_MATRIX, 0, ROOT_GM, 0);
        Matrix.multiplyMM(ROOT_GM, 0, PARALLEL_PROJECTION_MATRIX, 0, ROOT_GM, 0);
        this.mFlashFeedback.setGlobalMatrix(ROOT_GM);
        if (this.mAnimation != null) {
            long l;
            GLES20.glBlendFunc(770, 1);
            ++this.mAnimationFrameCount;
            while ((l = this.mAnimationElapsedTimeCount.elapsedTimeMillis()) < this.mAnimationFrameCount * 33) {
            }
            if (this.mAnimation.draw(this.mAnimationCanvas, l)) {
                bl = false;
            }
            GLES20.glBlendFunc(770, 771);
        } else {
            bl = true;
        }
        if (!bl) return;
        this.mAnimation = null;
        this.mAnimationElapsedTimeCount.stop();
        this.post(this.mSetInvisibleTask);
    }

    private boolean enableGlobalFunctions() {
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        GLES20.glEnable(2929);
        return true;
    }

    private void releaseAllShaders() {
        ShaderProgramFactory.deleteShaderProgram(this.mSimpleFrameShader);
        this.mSimpleFrameShader = 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void render() {
        if (!this.enableGlobalFunctions()) {
            CameraLogger.e(TAG, "render():[Enable functions failed.]");
            return;
        } else {
            this.doRender();
            if (this.disableGlobalFunctions()) return;
            {
                CameraLogger.e(TAG, "render():[Disable functions failed.]");
                return;
            }
        }
    }

    private void setupDynamicConfig(int n, int n2) {
        if (n2 < n) {
            GLES20.glViewport(0, (n - n2) / 2 * -1, n, n);
            return;
        }
        GLES20.glViewport(0, (n2 - n) / 2 * -1, n2, n2);
    }

    @Override
    public void onDrawFrame(GL10 gL10) {
        this.render();
    }

    @Override
    public void onSurfaceChanged(GL10 gL10, int n, int n2) {
        this.setupRelatedToSurfaceSize();
    }

    @Override
    public void onSurfaceCreated(GL10 gL10, EGLConfig eGLConfig) {
    }

    @Override
    public void release() {
        this.queueEvent(new ReleaseTask());
    }

    public void setupRelatedToSurfaceSize() {
        this.queueEvent(new SetupRelatedToSurfaceSizeTask());
    }

    @Override
    public void start(CaptureFeedbackAnimation captureFeedbackAnimation) {
        this.removeCallbacks(this.mSetInvisibleTask);
        this.mAnimation = captureFeedbackAnimation;
        this.mAnimationFrameCount = 0;
        this.mAnimationElapsedTimeCount.start();
        this.setVisibility(0);
        this.setRenderMode(1);
        this.requestRender();
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.release();
        super.surfaceDestroyed(surfaceHolder);
    }

    private class AnimationCanvas
    implements CaptureFeedbackAnimationCanvas {
        private AnimationCanvas() {
        }

        @Override
        public void drawColor(float f, float f2, float f3, float f4) {
            GLSurfaceContextView.this.mFlashFeedback.translate(0.0f, 0.0f, 0.2f);
            GLSurfaceContextView.this.mFlashFeedback.setColor(f2, f3, f4, f);
            GLSurfaceContextView.this.mFlashFeedback.render();
        }
    }

    private class ReleaseTask
    implements Runnable {
        private ReleaseTask() {
        }

        @Override
        public void run() {
            if (GLSurfaceContextView.this.mFlashFeedback != null) {
                GLSurfaceContextView.this.mFlashFeedback.release();
                GLSurfaceContextView.this.mFlashFeedback = null;
            }
            GLSurfaceContextView.this.releaseAllShaders();
        }
    }

    private class SetInvisibleTask
    implements Runnable {
        private SetInvisibleTask() {
        }

        @Override
        public void run() {
            GLSurfaceContextView.this.setVisibility(4);
            GLSurfaceContextView.this.setRenderMode(0);
        }
    }

    private class SetupRelatedToSurfaceSizeTask
    implements Runnable {
        private SetupRelatedToSurfaceSizeTask() {
        }

        @Override
        public void run() {
            GLSurfaceContextView.this.setupDynamicConfig(GLSurfaceContextView.this.getWidth(), GLSurfaceContextView.this.getHeight());
            if (GLSurfaceContextView.this.mFlashFeedback == null) {
                GLSurfaceContextView.this.createAllShaders();
                GLSurfaceContextView.this.mFlashFeedback = new SimpleFrame(GLSurfaceContextView.this.getContext(), GLSurfaceContextView.this);
                GLSurfaceContextView.this.mFlashFeedback.setColor(0.0f, 0.0f, 0.0f, 0.0f);
                GLSurfaceContextView.this.mFlashFeedback.setShaderProgram(GLSurfaceContextView.this.mSimpleFrameShader);
                GLSurfaceContextView.this.mFlashFeedback.setVisibility(true);
            }
        }
    }

}

