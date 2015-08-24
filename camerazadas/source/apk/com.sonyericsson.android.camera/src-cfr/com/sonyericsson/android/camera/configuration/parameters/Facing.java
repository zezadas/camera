/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;

public enum Facing implements ParameterValue
{
    BACK(2130837600, 2131296524, 0),
    FRONT(2130837600, 2131296525, 1);
    
    private static Facing[] sOptions;
    private static final int sParameterTextId = 2131296494;
    private final int mIconId;
    private final int mTextId;
    private final int mValue;

    static {
        if (HardwareCapability.isFrontCameraSupported()) {
            sOptions = new Facing[]{BACK, FRONT};
            return;
        }
        sOptions = new Facing[]{BACK};
    }

    private Facing(int n2, int n3, int n4) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = n4;
    }

    public static Facing[] getOptions() {
        return (Facing[])sOptions.clone();
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public int getCameraId() {
        return this.mValue;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.FACING;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296494;
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
        return null;
    }
}

