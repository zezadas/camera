/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;

public enum SmileCapture implements ParameterValue
{
    HIGH(-1, 2131296323, 2130837736, 70, 2131492988, true),
    MIDDLE(-1, 2131296324, 2130837738, 55, 2131492989, true),
    LOW(-1, 2131296325, 2130837737, 40, 2131492990, true),
    OFF(-1, 2131296304, -1, 999, -1, false);
    
    private static final int sParameterTextId = 2131296475;
    private final int mDimenId;
    private final int mIconId;
    private final boolean mIsSmileCaptureOn;
    private final int mNotificationIconId;
    private final int mScoreThreshold;
    private final int mTextId;
    private final String mValue;

    private SmileCapture(int n2, int n3, int n4, int n5, int n6, boolean bl) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mNotificationIconId = n4;
        this.mScoreThreshold = n5;
        this.mDimenId = n6;
        this.mIsSmileCaptureOn = bl;
        if (bl) {
            this.mValue = "on";
            return;
        }
        this.mValue = "off";
    }

    public static SmileCapture[] getOptions(CapturingMode capturingMode) {
        if (HardwareCapability.getCapability((int)capturingMode.getCameraId()).SMILE_DETECTION.get().booleanValue()) {
            return SmileCapture.values();
        }
        return new SmileCapture[0];
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public int getDimenId() {
        return this.mDimenId;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    public int getIntValue() {
        return this.mScoreThreshold;
    }

    public int getNotificationIconId() {
        return this.mNotificationIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.SMILE_CAPTURE;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296475;
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
        return this.mValue;
    }

    public boolean isSmileCaptureOn() {
        return this.mIsSmileCaptureOn;
    }
}

