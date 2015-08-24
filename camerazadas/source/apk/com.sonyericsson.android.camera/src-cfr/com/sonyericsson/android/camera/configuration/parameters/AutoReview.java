/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

public enum AutoReview implements ParameterValue
{
    UNLIMITED(-1, 2131296500, -1),
    LONG(-1, 2131296499, 5000),
    SHORT(-1, 2131296498, 3000),
    EDIT(-1, 2131296512, 0),
    OFF(-1, 2131296304, 0);
    
    private static final int sParameterTextId = 2131296496;
    private final int mDuration;
    private final int mIconId;
    private final int mTextId;

    private AutoReview(int n2, int n3, int n4) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mDuration = n4;
    }

    public static AutoReview[] getOptions(CapturingMode capturingMode) {
        if (capturingMode.getType() == 1) {
            return AutoReview.values();
        }
        return new AutoReview[0];
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public int getDuration() {
        return this.mDuration;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.AUTO_REVIEW;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296496;
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

