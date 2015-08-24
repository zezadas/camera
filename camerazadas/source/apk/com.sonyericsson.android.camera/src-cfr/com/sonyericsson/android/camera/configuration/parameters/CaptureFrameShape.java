/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;

public enum CaptureFrameShape implements ParameterValue
{
    WIDE(-1, 2131296740, 177),
    STANDARD(-1, 2131296741, 133);
    
    private static final int sParameterTextId = 2131296584;
    private final int mAspectRatio_x100;
    private final int mIconId;
    private final int mTextId;

    private CaptureFrameShape(int n2, int n3, int n4) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mAspectRatio_x100 = n4;
    }

    public static CaptureFrameShape getDefaultValue(CapturingMode capturingMode) {
        return CaptureFrameShape.values()[0];
    }

    public static CaptureFrameShape[] getOptions(CapturingMode capturingMode) {
        if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.SUPERIOR_FRONT) {
            return CaptureFrameShape.values();
        }
        return new CaptureFrameShape[0];
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public int getAspectRatio_x100() {
        return this.mAspectRatio_x100;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.CAPTURE_FRAME_SHAPE;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296584;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return arrparameterValue[0];
    }

    public Resolution getResolution(int n) {
        return Resolution.getResolutionFromFrameShape(this, n);
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

