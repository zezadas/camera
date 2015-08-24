/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

public enum VideoAutoReview implements ParameterValue
{
    ON(-1, 2131296303),
    EDIT(-1, 2131296512),
    OFF(-1, 2131296304);
    
    private static final int sParameterTextId = 2131296496;
    private final int mIconId;
    private final int mTextId;

    private VideoAutoReview(int n2, int n3) {
        this.mIconId = n2;
        this.mTextId = n3;
    }

    public static VideoAutoReview[] getOptions(CapturingMode capturingMode) {
        if (capturingMode.getType() == 1 || capturingMode.getType() == 2) {
            return VideoAutoReview.values();
        }
        return new VideoAutoReview[0];
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
        return ParameterKey.VIDEO_AUTO_REVIEW;
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

