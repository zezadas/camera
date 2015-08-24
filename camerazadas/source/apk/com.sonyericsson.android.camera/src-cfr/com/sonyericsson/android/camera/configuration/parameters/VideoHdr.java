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
import java.util.ArrayList;
import java.util.List;

public enum VideoHdr implements ParameterValue
{
    ON(-1, 2131296303, "on"),
    OFF(-1, 2131296304, "off");
    
    private static final int sParameterTextId = 2131296507;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    private VideoHdr(int n2, int n3, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = string2;
    }

    public static VideoHdr[] getOptions(CapturingMode capturingMode) {
        ArrayList<VideoHdr> arrayList = new ArrayList<VideoHdr>();
        if (!HardwareCapability.getCapability((int)capturingMode.getCameraId()).VIDEO_HDR.get().isEmpty()) {
            arrayList.add(ON);
        }
        arrayList.add(OFF);
        return arrayList.toArray(new VideoHdr[0]);
    }

    public static boolean isSupported(CapturingMode capturingMode) {
        if (HardwareCapability.getCapability((int)capturingMode.getCameraId()).VIDEO_HDR.get().isEmpty()) {
            return false;
        }
        return true;
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
        return ParameterKey.VIDEO_HDR;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296507;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    public int getParameterkeyTitleTextId() {
        return 2131296456;
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
}

