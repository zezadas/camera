/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.capturefeedback.contextview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.SurfaceTexture;
import android.view.TextureView;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas;
import com.sonymobile.cameracommon.media.utility.ReferenceClock;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TextureContextView
extends TextureView
implements TextureView.SurfaceTextureListener,
CaptureFeedback {
    private static final long DRAW_INTERVAL_MILLIS = 33;
    private static final String TAG;
    private CaptureFeedbackAnimation mAnimation;
    private final ReferenceClock mAnimationElapsedTimeCount;
    private final AnimationCanvas mCanvas;
    private final ScheduledExecutorService mExecutor;
    private boolean mIsAnimationRequested;
    private ScheduledFuture<?> mScheduledFuture;
    private final SetInvisibleTask mSetInvisibleTask;

    static;

    public TextureContextView(Context var1);

    static /* synthetic */ AnimationCanvas access$400(TextureContextView var0);

    static /* synthetic */ CaptureFeedbackAnimation access$500(TextureContextView var0);

    static /* synthetic */ ReferenceClock access$600(TextureContextView var0);

    static /* synthetic */ SetInvisibleTask access$700(TextureContextView var0);

    static /* synthetic */ ScheduledFuture access$800(TextureContextView var0);

    @Override
    public void onPause();

    @Override
    public void onResume();

    @Override
    public void onSurfaceTextureAvailable(SurfaceTexture var1, int var2, int var3);

    @Override
    public boolean onSurfaceTextureDestroyed(SurfaceTexture var1);

    @Override
    public void onSurfaceTextureSizeChanged(SurfaceTexture var1, int var2, int var3);

    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture var1);

    @Override
    public void release();

    @Override
    public void start(CaptureFeedbackAnimation var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AnimationCanvas
    implements CaptureFeedbackAnimationCanvas {
        private Canvas mCanvas;
        final /* synthetic */ TextureContextView this$0;

        private AnimationCanvas(TextureContextView var1);

        /* synthetic */ AnimationCanvas(TextureContextView var1,  var2);

        public void clear();

        @Override
        public void drawColor(float var1, float var2, float var3, float var4);

        public boolean lock();

        public void unlock();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DrawFrameTask
    implements Runnable {
        final /* synthetic */ TextureContextView this$0;

        private DrawFrameTask(TextureContextView var1);

        /* synthetic */ DrawFrameTask(TextureContextView var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SetInvisibleTask
    implements Runnable {
        final /* synthetic */ TextureContextView this$0;

        private SetInvisibleTask(TextureContextView var1);

        /* synthetic */ SetInvisibleTask(TextureContextView var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ThreadFactoryImpl
    implements ThreadFactory {
        private ThreadFactoryImpl();

        /* synthetic */ ThreadFactoryImpl( var1);

        @Override
        public Thread newThread(Runnable var1);
    }

}

