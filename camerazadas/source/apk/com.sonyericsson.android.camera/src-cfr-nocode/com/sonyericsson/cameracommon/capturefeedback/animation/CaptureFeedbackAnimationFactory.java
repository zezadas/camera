/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.capturefeedback.animation;

import android.view.animation.Interpolator;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CaptureFeedbackAnimationFactory {
    private static final String TAG;

    static;

    public CaptureFeedbackAnimationFactory();

    public static CaptureFeedbackAnimation createDefaultAnimation();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class DefaultFeedbackAnimation
    implements CaptureFeedbackAnimation {
        private static final float BLUE = 0.0f;
        private static final long DURATION_MILLIS = 200;
        private static final float END_ALPHA = 0.0f;
        private static final float GREEN = 0.0f;
        private static final float RED = 0.0f;
        private static final float START_ALPHA = 0.6f;
        private final Interpolator mInterpolator;

        private DefaultFeedbackAnimation();

        /* synthetic */ DefaultFeedbackAnimation( var1);

        @Override
        public boolean draw(CaptureFeedbackAnimationCanvas var1, long var2);
    }

}

