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

public enum Hdr implements ParameterValue
{
    HDR_ON(-1, 2131296303, "on-still-hdr"),
    HDR_AUTO(-1, 2131296303, "auto"),
    HDR_OFF(-1, 2131296304, "off");
    
    private static final int sParameterTextId = 2131296455;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    private Hdr(int n2, int n3, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = string2;
    }

    public static Hdr getDefault(CapturingMode capturingMode) {
        if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.SUPERIOR_FRONT) {
            return HDR_AUTO;
        }
        return HDR_OFF;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Hdr[] getOptions(CapturingMode capturingMode) {
        ArrayList<Hdr> arrayList = new ArrayList<Hdr>();
        List<String> list = HardwareCapability.getCapability((int)capturingMode.getCameraId()).HDR.get();
        if (capturingMode != CapturingMode.SCENE_RECOGNITION && capturingMode != CapturingMode.SUPERIOR_FRONT) {
            if (capturingMode.getType() != 1) return arrayList.toArray(new Hdr[0]);
            if (!list.contains(HDR_ON.getValue())) return arrayList.toArray(new Hdr[0]);
            arrayList.add(HDR_ON);
            arrayList.add(HDR_OFF);
            return arrayList.toArray(new Hdr[0]);
        }
        if (!list.contains(HDR_AUTO.getValue())) return arrayList.toArray(new Hdr[0]);
        arrayList.add(HDR_AUTO);
        return arrayList.toArray(new Hdr[0]);
    }

    public static boolean isResolutionIndependentHdrSupported(List<String> list) {
        return list.contains("hdr");
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
        return ParameterKey.HDR;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296455;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return HDR_OFF;
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

