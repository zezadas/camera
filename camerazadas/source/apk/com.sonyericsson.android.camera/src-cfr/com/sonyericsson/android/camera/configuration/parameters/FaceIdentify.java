/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

public enum FaceIdentify implements ParameterValue
{
    ON(-1, 2131296303, true),
    OFF(-1, 2131296304, false);
    
    private static final int sParameterTextId = 2131296538;
    private final int mIconId;
    private final boolean mIsFaceIdentifyOn;
    private final int mTextId;

    private FaceIdentify(int n2, int n3, boolean bl) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mIsFaceIdentifyOn = bl;
    }

    public static FaceIdentify[] getOptions(ActionMode actionMode) {
        if (actionMode.mCameraId == 0 && Configurations.isFaceIdentificationEnabled()) {
            return FaceIdentify.values();
        }
        return new FaceIdentify[0];
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public Boolean getBooleanValue() {
        return this.mIsFaceIdentifyOn;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.FACE_IDENTIFY;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296538;
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

