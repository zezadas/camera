/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;

public enum VideoSmileCapture implements ParameterValue
{
    HIGH(SmileCapture.HIGH, 2130837742),
    MIDDLE(SmileCapture.MIDDLE, 2130837744),
    LOW(SmileCapture.LOW, 2130837743),
    OFF(SmileCapture.OFF, -1);
    
    private static final int sParameterTextId = 2131296530;
    private final int mNotificationIconId;
    private final SmileCapture mSmile;
    private final String mValue;

    /*
     * Enabled aggressive block sorting
     */
    private VideoSmileCapture(SmileCapture smileCapture, int n2) {
        this.mSmile = smileCapture;
        this.mValue = this.mSmile.isSmileCaptureOn() ? "on" : "off";
        this.mNotificationIconId = n2;
    }

    public static VideoSmileCapture[] getOptions(boolean bl, CapturingMode capturingMode) {
        if (bl) {
            return new VideoSmileCapture[]{OFF};
        }
        if (HardwareCapability.getCapability((int)capturingMode.getCameraId()).SMILE_DETECTION.get().booleanValue()) {
            return VideoSmileCapture.values();
        }
        return new VideoSmileCapture[0];
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public int getDimenId() {
        return this.mSmile.getDimenId();
    }

    @Override
    public int getIconId() {
        return this.mSmile.getIconId();
    }

    public int getIntValue() {
        return this.mSmile.getIntValue();
    }

    public int getNotificationIconId() {
        return this.mNotificationIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.VIDEO_SMILE_CAPTURE;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296530;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return arrparameterValue[0];
    }

    public SmileCapture getSmileCapture(boolean bl) {
        if (bl) {
            return SmileCapture.OFF;
        }
        return this.mSmile;
    }

    @Override
    public int getTextId() {
        return this.mSmile.getTextId();
    }

    @Override
    public String getValue() {
        return this.mValue;
    }

    public boolean isSmileCaptureOn() {
        return this.mSmile.isSmileCaptureOn();
    }
}

