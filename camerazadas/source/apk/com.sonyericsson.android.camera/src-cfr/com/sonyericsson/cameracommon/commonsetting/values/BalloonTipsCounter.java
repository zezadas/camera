/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

public enum BalloonTipsCounter implements CommonSettingValue
{
    COUNT_START(-1, -1, null, "count_start"),
    FIRST(-1, -1, null, "first"),
    SECOND(-1, -1, null, "second"),
    DISPLAY_OK_FIRST(-1, -1, null, "display_ok_first"),
    DISPLAY_OK_SECOND(-1, -1, null, "display_ok_second"),
    DISPLAY_OK(-1, -1, null, "display_ok"),
    COUNT_STOP(-1, -1, null, "count_stop");
    
    private static int sParameterTextId;
    private final BalloonTipsCounter mCompatibleValue;
    private int mIconId;
    private final String mProviderValue;
    private int mTextId;

    static {
        sParameterTextId = -1;
    }

    private BalloonTipsCounter(int n2, int n3, BalloonTipsCounter balloonTipsCounter, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mCompatibleValue = balloonTipsCounter;
        this.mProviderValue = string2;
    }

    @Override
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.BALLOON_TIPS_COUNTER;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    public int getParameterKeyTextId() {
        return sParameterTextId;
    }

    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public String getProviderValue() {
        return this.mProviderValue;
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }

    public BalloonTipsCounter isCompatibleValue() {
        return this.mCompatibleValue;
    }
}

