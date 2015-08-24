/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;

public enum AutoUpload implements ParameterValue
{
    ON(-1, -1, true),
    OFF(-1, -1, false);
    
    private static final int sParameterTextId = 2131296510;
    private final int mIconId;
    private final boolean mIsAutoUploadOn;
    private final int mTextId;

    private AutoUpload(int n2, int n3, boolean bl) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mIsAutoUploadOn = bl;
    }

    public static AutoUpload getDefaultValue() {
        return OFF;
    }

    public static AutoUpload[] getOptions() {
        if (AutoUploadSettings.getInstance().isAvailable()) {
            return AutoUpload.values();
        }
        return new AutoUpload[0];
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
        return ParameterKey.AUTO_UPLOAD;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296510;
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

    public boolean isAutoUploadOn() {
        return this.mIsAutoUploadOn;
    }
}

