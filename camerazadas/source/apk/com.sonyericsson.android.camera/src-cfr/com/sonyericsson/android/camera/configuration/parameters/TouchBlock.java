/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.cameracommon.utility.CommonUtility;

public enum TouchBlock implements ParameterValue
{
    ON(-1, -1),
    OFF(-1, -1);
    
    private static final int sParameterTextId = -1;
    private final int mIconId;
    private final int mTextId;

    private TouchBlock(int n2, int n3) {
        this.mIconId = n2;
        this.mTextId = n3;
    }

    public static TouchBlock getDefaultValue() {
        return OFF;
    }

    public static TouchBlock[] getOptions(Context context) {
        if (CommonUtility.isPackageExist("com.sonymobile.touchblocker", context)) {
            return TouchBlock.values();
        }
        return new TouchBlock[0];
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.TOUCH_BLOCK;
    }

    @Override
    public int getParameterKeyTextId() {
        return -1;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return OFF;
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }

    @Override
    public String getValue() {
        return this.toString();
    }
}

