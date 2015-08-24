/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

public enum TermOfUse implements CommonSettingValue
{
    NO_VALUE(-1, -1);
    
    private final int mIconId;
    private final int mTextId;

    private TermOfUse(int n2, int n3) {
        this.mIconId = n2;
        this.mTextId = n3;
    }

    @Override
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.TERM_OF_USE;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public String getProviderValue() {
        return null;
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }
}

