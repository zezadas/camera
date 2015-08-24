/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.capturefeedback.animation;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas;

public class CaptureFeedbackAnimationFactory {
    private static final String TAG = CaptureFeedbackAnimationFactory.class.getSimpleName();

    public static CaptureFeedbackAnimation createDefaultAnimation() {
        return new DefaultFeedbackAnimation();
    }

    private static class DefaultFeedbackAnimation
    implements CaptureFeedbackAnimation {
        private static final float BLUE = 0.0f;
        private static final long DURATION_MILLIS = 200;
        private static final float END_ALPHA = 0.0f;
        private static final float GREEN = 0.0f;
        private static final float RED = 0.0f;
        private static final float START_ALPHA = 0.6f;
        private final Interpolator mInterpolator = new AccelerateInterpolator();

        private DefaultFeedbackAnimation() {
        }

        @Override
        public boolean draw(CaptureFeedbackAnimationCanvas captureFeedbackAnimationCanvas, long l) {
            float f = (float)l / 200.0f;
            float f2 = Math.min(1.0f, this.mInterpolator.getInterpolation(f));
            if ((double)f > 1.0) {
                captureFeedbackAnimationCanvas.drawColor(0.0f, 0.0f, 0.0f, 0.0f);
                return false;
            }
            captureFeedbackAnimationCanvas.drawColor(0.6f + -0.6f * f2, 0.0f, 0.0f, 0.0f);
            return true;
        }
    }

}

