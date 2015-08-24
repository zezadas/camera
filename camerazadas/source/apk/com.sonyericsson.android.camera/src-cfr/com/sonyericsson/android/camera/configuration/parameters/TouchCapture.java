/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

public enum TouchCapture implements ParameterValue
{
    VIEW_FINDER(-1, 2131296303, -1, true),
    OFF(-1, 2131296304, -1, false);
    
    private static final int sParameterTextId = 2131296502;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mNotificationId;
    private final int mTextId;

    private TouchCapture(int n2, int n3, int n4, boolean bl) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mNotificationId = n4;
        this.mBooleanValue = bl;
    }

    public static TouchCapture[] getOptions() {
        return TouchCapture.values();
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

    public int getNotificationIconId() {
        return this.mNotificationId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.TOUCH_CAPTURE;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296502;
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

