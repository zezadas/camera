/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.controller;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.ViewUtility;

public class SettingDialogAnimation {
    private Context mContext;
    private final float mTranslateDistance;

    public SettingDialogAnimation(Context context) {
        this.mContext = context;
        this.mTranslateDistance = ViewUtility.getPixel(this.mContext, R.dimen.setting_dialog_column_height) / 3;
    }

    private TranslateAnimation getTranslateForAccelerate(float f, float f2, float f3, float f4) {
        TranslateAnimation translateAnimation = new TranslateAnimation(f, f2, f3, f4);
        translateAnimation.setInterpolator(this.mContext, 17432581);
        return translateAnimation;
    }

    private TranslateAnimation getTranslateForDecelerate(float f, float f2, float f3, float f4) {
        TranslateAnimation translateAnimation = new TranslateAnimation(f, f2, f3, f4);
        translateAnimation.setInterpolator(this.mContext, 17432582);
        return translateAnimation;
    }

    /*
     * Enabled aggressive block sorting
     */
    public Animation setCloseDialogAnimation(View view, int n) {
        AnimationSet animationSet = new AnimationSet(false);
        animationSet.addAnimation(AnimationUtils.loadAnimation(this.mContext, R.anim.setting_dialog_fade_out));
        animationSet.setDuration(animationSet.getDuration());
        if (n == 1) {
            animationSet.addAnimation(this.getTranslateForAccelerate(0.0f, this.mTranslateDistance, 0.0f, 0.0f));
        } else {
            animationSet.addAnimation(this.getTranslateForAccelerate(0.0f, 0.0f, 0.0f, this.mTranslateDistance));
        }
        view.setAnimation(animationSet);
        return animationSet;
    }

    /*
     * Enabled aggressive block sorting
     */
    public Animation setOpenDialogAnimation(View view, int n) {
        AnimationSet animationSet = new AnimationSet(false);
        animationSet.addAnimation(AnimationUtils.loadAnimation(this.mContext, R.anim.setting_dialog_fade_in));
        animationSet.setDuration(animationSet.getDuration());
        if (n == 1) {
            animationSet.addAnimation(this.getTranslateForDecelerate(this.mTranslateDistance, 0.0f, 0.0f, 0.0f));
        } else {
            animationSet.addAnimation(this.getTranslateForDecelerate(0.0f, 0.0f, this.mTranslateDistance, 0.0f));
        }
        view.setAnimation(animationSet);
        return animationSet;
    }
}

