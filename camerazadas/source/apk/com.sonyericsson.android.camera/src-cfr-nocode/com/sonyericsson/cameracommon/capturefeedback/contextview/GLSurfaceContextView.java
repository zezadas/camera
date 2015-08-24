/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.capturefeedback.contextview;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas;
import com.sonymobile.cameracommon.media.utility.ReferenceClock;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;
import com.sonymobile.cameracommon.opengl.SimpleFrame;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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
    private long mAnimationFrameCount;
    private SimpleFrame mFlashFeedback;
    private final SetInvisibleTask mSetInvisibleTask;
    private int mSimpleFrameShader;

    static;

    public GLSurfaceContextView(Context var1, AttributeSet var2);

    static /* synthetic */ SimpleFrame access$300(GLSurfaceContextView var0);

    static /* synthetic */ SimpleFrame access$302(GLSurfaceContextView var0, SimpleFrame var1);

    static /* synthetic */ void access$400(GLSurfaceContextView var0);

    static /* synthetic */ void access$600(GLSurfaceContextView var0, int var1, int var2);

    static /* synthetic */ void access$700(GLSurfaceContextView var0);

    static /* synthetic */ int access$800(GLSurfaceContextView var0);

    private void clearSurface();

    private void createAllShaders();

    private boolean disableGlobalFunctions();

    private void doRender();

    private boolean enableGlobalFunctions();

    private void releaseAllShaders();

    private void render();

    private void setupDynamicConfig(int var1, int var2);

    @Override
    public void onDrawFrame(GL10 var1);

    @Override
    public void onSurfaceChanged(GL10 var1, int var2, int var3);

    @Override
    public void onSurfaceCreated(GL10 var1, EGLConfig var2);

    @Override
    public void release();

    public void setupRelatedToSurfaceSize();

    @Override
    public void start(CaptureFeedbackAnimation var1);

    @Override
    public void surfaceDestroyed(SurfaceHolder var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AnimationCanvas
    implements CaptureFeedbackAnimationCanvas {
        final /* synthetic */ GLSurfaceContextView this$0;

        private AnimationCanvas(GLSurfaceContextView var1);

        /* synthetic */ AnimationCanvas(GLSurfaceContextView var1,  var2);

        @Override
        public void drawColor(float var1, float var2, float var3, float var4);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ReleaseTask
    implements Runnable {
        final /* synthetic */ GLSurfaceContextView this$0;

        private ReleaseTask(GLSurfaceContextView var1);

        /* synthetic */ ReleaseTask(GLSurfaceContextView var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SetInvisibleTask
    implements Runnable {
        final /* synthetic */ GLSurfaceContextView this$0;

        private SetInvisibleTask(GLSurfaceContextView var1);

        /* synthetic */ SetInvisibleTask(GLSurfaceContextView var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SetupRelatedToSurfaceSizeTask
    implements Runnable {
        final /* synthetic */ GLSurfaceContextView this$0;

        private SetupRelatedToSurfaceSizeTask(GLSurfaceContextView var1);

        /* synthetic */ SetupRelatedToSurfaceSizeTask(GLSurfaceContextView var1,  var2);

        @Override
        public void run();
    }

}

