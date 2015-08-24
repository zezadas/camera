/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.capturefeedback.contextview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.SurfaceTexture;
import android.view.TextureView;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas;
import com.sonymobile.cameracommon.media.utility.ReferenceClock;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public class TextureContextView
extends TextureView
implements TextureView.SurfaceTextureListener,
CaptureFeedback {
    private static final long DRAW_INTERVAL_MILLIS = 33;
    private static final String TAG = TextureContextView.class.getSimpleName();
    private CaptureFeedbackAnimation mAnimation;
    private final ReferenceClock mAnimationElapsedTimeCount;
    private final AnimationCanvas mCanvas;
    private final ScheduledExecutorService mExecutor;
    private boolean mIsAnimationRequested;
    private ScheduledFuture<?> mScheduledFuture;
    private final SetInvisibleTask mSetInvisibleTask;

    public TextureContextView(Context context) {
        super(context);
        this.mSetInvisibleTask = new SetInvisibleTask();
        this.mCanvas = new AnimationCanvas();
        this.setSurfaceTextureListener(this);
        this.mAnimationElapsedTimeCount = new ReferenceClock();
        this.mExecutor = Executors.newSingleThreadScheduledExecutor(new ThreadFactoryImpl());
    }

    @Override
    public void onPause() {
    }

    @Override
    public void onResume() {
    }

    @Override
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int n, int n2) {
        if (this.mIsAnimationRequested) {
            this.mIsAnimationRequested = false;
            this.mScheduledFuture = this.mExecutor.scheduleAtFixedRate(new DrawFrameTask(), 0, 33, TimeUnit.MILLISECONDS);
        }
    }

    @Override
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int n, int n2) {
    }

    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override
    public void release() {
    }

    @Override
    public void start(CaptureFeedbackAnimation captureFeedbackAnimation) {
        this.mAnimation = captureFeedbackAnimation;
        this.mAnimationElapsedTimeCount.start();
        this.setVisibility(0);
        if (this.isAvailable()) {
            this.mScheduledFuture = this.mExecutor.scheduleAtFixedRate(new DrawFrameTask(), 0, 33, TimeUnit.MILLISECONDS);
            return;
        }
        this.mIsAnimationRequested = true;
    }

    private class AnimationCanvas
    implements CaptureFeedbackAnimationCanvas {
        private Canvas mCanvas;

        private AnimationCanvas() {
            this.mCanvas = null;
        }

        public void clear() {
            if (this.mCanvas == null) {
                return;
            }
            this.mCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }

        @Override
        public void drawColor(float f, float f2, float f3, float f4) {
            if (this.mCanvas == null) {
                return;
            }
            this.mCanvas.drawColor(Color.argb((int)(255.0f * f), (int)(255.0f * f2), (int)(255.0f * f3), (int)(255.0f * f4)), PorterDuff.Mode.SRC_OVER);
        }

        public boolean lock() {
            this.mCanvas = TextureContextView.this.lockCanvas();
            if (this.mCanvas == null) {
                return false;
            }
            return true;
        }

        public void unlock() {
            if (this.mCanvas != null) {
                TextureContextView.this.unlockCanvasAndPost(this.mCanvas);
            }
        }
    }

    private class DrawFrameTask
    implements Runnable {
        private DrawFrameTask() {
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            if (!TextureContextView.this.mCanvas.lock()) {
                return;
            }
            TextureContextView.this.mCanvas.clear();
            CaptureFeedbackAnimation captureFeedbackAnimation = TextureContextView.this.mAnimation;
            boolean bl = captureFeedbackAnimation != null ? !captureFeedbackAnimation.draw(TextureContextView.this.mCanvas, TextureContextView.this.mAnimationElapsedTimeCount.elapsedTimeMillis()) : true;
            TextureContextView.this.mCanvas.unlock();
            if (!bl) return;
            TextureContextView.this.mAnimationElapsedTimeCount.stop();
            TextureContextView.this.post(TextureContextView.this.mSetInvisibleTask);
        }
    }

    private class SetInvisibleTask
    implements Runnable {
        private SetInvisibleTask() {
        }

        @Override
        public void run() {
            TextureContextView.this.setVisibility(4);
            TextureContextView.this.mScheduledFuture.cancel(true);
        }
    }

    private static class ThreadFactoryImpl
    implements ThreadFactory {
        private ThreadFactoryImpl() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            runnable = new Thread(runnable);
            runnable.setPriority(10);
            return runnable;
        }
    }

}

