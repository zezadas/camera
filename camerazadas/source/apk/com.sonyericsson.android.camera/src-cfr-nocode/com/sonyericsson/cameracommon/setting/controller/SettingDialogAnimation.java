/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.controller;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;

/*
 * Exception performing whole class analysis.
 */
public class SettingDialogAnimation {
    private Context mContext;
    private final float mTranslateDistance;

    public SettingDialogAnimation(Context var1);

    private TranslateAnimation getTranslateForAccelerate(float var1, float var2, float var3, float var4);

    private TranslateAnimation getTranslateForDecelerate(float var1, float var2, float var3, float var4);

    public Animation setCloseDialogAnimation(View var1, int var2);

    public Animation setOpenDialogAnimation(View var1, int var2);
}

