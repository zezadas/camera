/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

public enum Microphone implements ParameterValue
{
    ON(-1, 2131296303, true),
    OFF(-1, 2131296304, false);
    
    private static final int sParameterTextId = 2131296366;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mTextId;

    private Microphone(int n2, int n3, boolean bl) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mBooleanValue = bl;
    }

    public static Microphone[] getOptions() {
        return Microphone.values();
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public Boolean getBooleanValue() {
        return this.mBooleanValue;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.MICROPHONE;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296366;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return arrparameterValue[0];
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

