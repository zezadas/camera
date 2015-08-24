/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.animation;

import android.content.Context;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import com.sonyericsson.cameracommon.animation.ScaleLayoutAnimation;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public class FocusRectanglesAnimation {
    private final Map<Animation, View> mAnimationMap;
    private final Context mContext;
    private AlphaAnimation mFadeOutAnimation;
    private ScaleLayoutAnimation mFocusInAnimationObject;
    private ScaleLayoutAnimation mFocusInAnimationSingle;
    private ScaleLayoutAnimation mFocusInAnimationTouch;
    private final AnimationConfig mObjectConfig;
    private final AnimationConfig mSingleConfig;
    private final AnimationConfig mTouchConfig;
    private AnimationSet mTouchDownAnimation;
    private AnimationSet mTouchUpAnimation;

    public FocusRectanglesAnimation(Context var1);

    static /* synthetic */ Context access$000(FocusRectanglesAnimation var0);

    static /* synthetic */ Map access$200(FocusRectanglesAnimation var0);

    private AlphaAnimation getFadeOutAnimation();

    private void playAfFadeOutAnimation(View var1);

    private ScaleLayoutAnimation playAfFocusInAnimation(View var1, ScaleLayoutAnimation var2, AnimationConfig var3);

    private AnimationSet playTouchDownAnimation(View var1, AnimationSet var2, AnimationConfig var3);

    private AnimationSet playTouchUpAnimation(View var1, AnimationSet var2, AnimationConfig var3);

    public void cancelAfFocusAnimationObject(View var1);

    public void cancelAfFocusAnimationSingle(View var1);

    public void cancelAfFocusAnimationTouch(View var1);

    public ScaleLayoutAnimation getFocusInAnimation(View var1, ScaleLayoutAnimation var2, AnimationConfig var3);

    public AnimationConfig getObjectAnimationConfig();

    public ScaleLayoutAnimation getTouchAnimation(View var1);

    public AnimationConfig getTouchAnimationConfig();

    public AnimationSet getTouchDownAnimation(View var1, AnimationSet var2, AnimationConfig var3);

    public AnimationSet getTouchUpAnimation(View var1, AnimationSet var2, AnimationConfig var3);

    public void playAfFadeOutAnimationObject(View var1);

    public void playAfFadeOutAnimationSingle(View var1);

    public void playAfFadeOutAnimationTouch(View var1);

    public void playAfFocusInAnimationObject(View var1);

    public void playAfFocusInAnimationSingle(View var1);

    public void playAfFocusInAnimationTouch(View var1);

    public void playTouchDownAnimation(View var1);

    public void playTouchUpAnimation(View var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public class AnimationConfig {
        public final int mDuration;
        public final int mFromHeight;
        public final int mFromWidth;
        public final int mToHeight;
        public final int mToWidth;
        final /* synthetic */ FocusRectanglesAnimation this$0;

        public AnimationConfig(FocusRectanglesAnimation var1, int var2, int var3, int var4, int var5);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class FadeOutAnimationListener
    implements Animation.AnimationListener {
        final /* synthetic */ FocusRectanglesAnimation this$0;

        private FadeOutAnimationListener(FocusRectanglesAnimation var1);

        /* synthetic */ FadeOutAnimationListener(FocusRectanglesAnimation var1,  var2);

        @Override
        public void onAnimationEnd(Animation var1);

        @Override
        public void onAnimationRepeat(Animation var1);

        @Override
        public void onAnimationStart(Animation var1);
    }

}

