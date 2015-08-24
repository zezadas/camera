/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import sonyericsson.camera.R;

@DexReplace
public enum CaptureFrameShape implements ParameterValue {
    STANDARD(-1, R.string.cam_strings_captureframeshape_4_3_txt_mod, 133),
    WIDE(-1, R.string.cam_strings_captureframeshape_16_9_txt_mod, 177),
    HEIGHT_STANDARD(-1, R.string.cam_strings_captureframeshape_8_4_3_txt_mod, 133),
    HEIGHT_WIDE(-1, R.string.cam_strings_captureframeshape_8_16_9_txt_mod, 177);

    private static final int sParameterTextId = 2131296584;
    private final int mAspectRatio_x100;
    private final int mIconId;
    private final int mTextId;

    @DexIgnore
    private CaptureFrameShape(int n2, int n3, int n4) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mAspectRatio_x100 = n4;
    }

    @DexIgnore
    public static CaptureFrameShape getDefaultValue(CapturingMode capturingMode) {
        return CaptureFrameShape.values()[0];
    }

    @DexIgnore
    public static CaptureFrameShape[] getOptions(CapturingMode capturingMode) {
        if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.SUPERIOR_FRONT) {
            return CaptureFrameShape.values();
        }
        return new CaptureFrameShape[0];
    }

    @DexIgnore
    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    @DexIgnore
    public int getAspectRatio_x100() {
        return this.mAspectRatio_x100;
    }

    @DexIgnore
    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @DexIgnore
    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.CAPTURE_FRAME_SHAPE;
    }

    @DexIgnore
    @Override
    public int getParameterKeyTextId() {
        return 2131296584;
    }

    @DexIgnore
    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @DexIgnore
    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return arrparameterValue[0];
    }

    @DexIgnore
    public Resolution getResolution(int n) {
        return Resolution.getResolutionFromFrameShape(this, n);
    }

    @DexIgnore
    @Override
    public int getTextId() {
        return this.mTextId;
    }

    @DexIgnore
    @Override
    public String getValue() {
        return this.toString();
    }
}

