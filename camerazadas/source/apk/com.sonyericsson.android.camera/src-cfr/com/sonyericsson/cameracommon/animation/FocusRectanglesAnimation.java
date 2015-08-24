/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.animation;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.animation.ScaleLayoutAnimation;
import java.util.HashMap;
import java.util.Map;

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

    public FocusRectanglesAnimation(Context context) {
        this.mContext = context;
        this.mAnimationMap = new HashMap<Animation, View>();
        this.mSingleConfig = new AnimationConfig(R.dimen.focus_rect_single_width, R.dimen.focus_rect_single_height, R.attr.focus_indicator_animation_mag_single, R.integer.focus_indicator_animation_focusin_duration);
        this.mTouchConfig = new AnimationConfig(R.dimen.focus_rect_single_width, R.dimen.focus_rect_single_height, R.attr.focus_indicator_animation_mag_touch, R.integer.focus_indicator_animation_focusin_duration);
        this.mObjectConfig = new AnimationConfig(R.dimen.focus_rect_object_width, R.dimen.focus_rect_object_height, R.attr.focus_indicator_animation_mag_object, R.integer.focus_indicator_animation_focusin_duration);
    }

    private AlphaAnimation getFadeOutAnimation() {
        if (this.mFadeOutAnimation == null) {
            this.mFadeOutAnimation = (AlphaAnimation)AnimationUtils.loadAnimation(this.mContext, R.anim.focus_indicator_fade_out);
            this.mFadeOutAnimation.setAnimationListener(new FadeOutAnimationListener());
        }
        return this.mFadeOutAnimation;
    }

    private void playAfFadeOutAnimation(View view) {
        AlphaAnimation alphaAnimation = this.getFadeOutAnimation();
        alphaAnimation.setAnimationListener(new FadeOutAnimationListener());
        view.startAnimation(alphaAnimation);
        this.mAnimationMap.put(alphaAnimation, view);
    }

    private ScaleLayoutAnimation playAfFocusInAnimation(View view, ScaleLayoutAnimation scaleLayoutAnimation, AnimationConfig animationConfig) {
        scaleLayoutAnimation = this.getFocusInAnimation(view, scaleLayoutAnimation, animationConfig);
        view.startAnimation(scaleLayoutAnimation);
        return scaleLayoutAnimation;
    }

    private AnimationSet playTouchDownAnimation(View view, AnimationSet animationSet, AnimationConfig animationConfig) {
        animationSet = this.getTouchDownAnimation(view, animationSet, animationConfig);
        view.startAnimation(animationSet);
        return animationSet;
    }

    private AnimationSet playTouchUpAnimation(View view, AnimationSet animationSet, AnimationConfig animationConfig) {
        animationSet = this.getTouchUpAnimation(view, animationSet, animationConfig);
        view.startAnimation(animationSet);
        return animationSet;
    }

    public void cancelAfFocusAnimationObject(View view) {
        if (view.getWidth() != this.mObjectConfig.mToWidth || view.getHeight() != this.mObjectConfig.mToHeight) {
            view.getLayoutParams().width = this.mObjectConfig.mToWidth;
            view.getLayoutParams().height = this.mObjectConfig.mToHeight;
            view.requestLayout();
        }
    }

    public void cancelAfFocusAnimationSingle(View view) {
        if (view.getWidth() != this.mSingleConfig.mToWidth || view.getHeight() != this.mSingleConfig.mToHeight) {
            view.getLayoutParams().width = this.mSingleConfig.mToWidth;
            view.getLayoutParams().height = this.mSingleConfig.mToHeight;
            view.requestLayout();
        }
    }

    public void cancelAfFocusAnimationTouch(View view) {
        if (view.getWidth() != this.mTouchConfig.mToWidth || view.getHeight() != this.mTouchConfig.mToHeight) {
            view.getLayoutParams().width = this.mTouchConfig.mToWidth;
            view.getLayoutParams().height = this.mTouchConfig.mToHeight;
            view.requestLayout();
        }
    }

    public ScaleLayoutAnimation getFocusInAnimation(View view, ScaleLayoutAnimation scaleLayoutAnimation, AnimationConfig animationConfig) {
        if (scaleLayoutAnimation == null) {
            return new ScaleLayoutAnimation.Builder(view).setFromSize(animationConfig.mFromWidth, animationConfig.mFromHeight).setToSize(animationConfig.mToWidth, animationConfig.mToHeight).setDuration(animationConfig.mDuration).create();
        }
        scaleLayoutAnimation.recycle();
        return scaleLayoutAnimation;
    }

    public AnimationConfig getObjectAnimationConfig() {
        return this.mObjectConfig;
    }

    public ScaleLayoutAnimation getTouchAnimation(View view) {
        return this.getFocusInAnimation(view, this.mFocusInAnimationTouch, this.mTouchConfig);
    }

    public AnimationConfig getTouchAnimationConfig() {
        return this.mTouchConfig;
    }

    public AnimationSet getTouchDownAnimation(View object, AnimationSet animationSet, AnimationConfig animationConfig) {
        object = animationSet;
        if (animationSet == null) {
            object = (AnimationSet)AnimationUtils.loadAnimation(this.mContext, R.anim.focus_touch_down);
        }
        return object;
    }

    public AnimationSet getTouchUpAnimation(View object, AnimationSet animationSet, AnimationConfig animationConfig) {
        object = animationSet;
        if (animationSet == null) {
            object = (AnimationSet)AnimationUtils.loadAnimation(this.mContext, R.anim.focus_touch_up);
        }
        return object;
    }

    public void playAfFadeOutAnimationObject(View view) {
        this.playAfFadeOutAnimation(view);
    }

    public void playAfFadeOutAnimationSingle(View view) {
        this.playAfFadeOutAnimation(view);
    }

    public void playAfFadeOutAnimationTouch(View view) {
        this.playAfFadeOutAnimation(view);
    }

    public void playAfFocusInAnimationObject(View view) {
        this.mFocusInAnimationObject = this.playAfFocusInAnimation(view, this.mFocusInAnimationObject, this.mObjectConfig);
    }

    public void playAfFocusInAnimationSingle(View view) {
        this.mFocusInAnimationSingle = this.playAfFocusInAnimation(view, this.mFocusInAnimationSingle, this.mSingleConfig);
    }

    public void playAfFocusInAnimationTouch(View view) {
        this.mFocusInAnimationTouch = this.playAfFocusInAnimation(view, this.mFocusInAnimationTouch, this.mTouchConfig);
    }

    public void playTouchDownAnimation(View view) {
        this.mTouchDownAnimation = this.playTouchDownAnimation(view, this.mTouchDownAnimation, this.mSingleConfig);
    }

    public void playTouchUpAnimation(View view) {
        this.mTouchUpAnimation = this.playTouchUpAnimation(view, this.mTouchUpAnimation, this.mSingleConfig);
    }

    public class AnimationConfig {
        public final int mDuration;
        public final int mFromHeight;
        public final int mFromWidth;
        public final int mToHeight;
        public final int mToWidth;

        public AnimationConfig(int n, int n2, int n3, int n4) {
            float f = Float.valueOf(FocusRectanglesAnimation.this.mContext.getResources().getString(n3)).floatValue();
            this.mToWidth = FocusRectanglesAnimation.this.mContext.getResources().getDimensionPixelSize(n);
            this.mToHeight = FocusRectanglesAnimation.this.mContext.getResources().getDimensionPixelSize(n2);
            this.mFromWidth = (int)((float)this.mToWidth * f);
            this.mFromHeight = (int)((float)this.mToHeight * f);
            this.mDuration = FocusRectanglesAnimation.this.mContext.getResources().getInteger(n4);
        }
    }

    private class FadeOutAnimationListener
    implements Animation.AnimationListener {
        private FadeOutAnimationListener() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            View view = (View)FocusRectanglesAnimation.this.mAnimationMap.get(animation);
            if (view != null) {
                view.setVisibility(4);
            }
            FocusRectanglesAnimation.this.mAnimationMap.remove(animation);
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }

}

