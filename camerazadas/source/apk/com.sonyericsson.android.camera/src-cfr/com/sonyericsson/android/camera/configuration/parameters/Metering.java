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

public enum Metering implements ParameterValue
{
    FACE(-1, 2131296605, "face"),
    MULTI(-1, 2131296476, "multi"),
    CENTER(-1, 2131296354, "center-weighted"),
    SPOT(-1, 2131296356, "spot"),
    AVERAGE(-1, 2131296355, "frame-average");
    
    private static final int sParameterTextId = 2131296353;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    private Metering(int n2, int n3, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = string2;
    }

    public static Metering getDefaultValue(CapturingMode capturingMode) {
        if (HardwareCapability.getCapability((int)capturingMode.getCameraId()).METERING.get().contains(Metering.FACE.mValue)) {
            return FACE;
        }
        return CENTER;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Metering[] getOptions(CapturingMode arrmetering) {
        ArrayList<Metering> arrayList = new ArrayList<Metering>();
        List<String> list = HardwareCapability.getCapability((int)arrmetering.getCameraId()).METERING.get();
        if (list.isEmpty()) return arrayList.toArray(new Metering[0]);
        if (arrmetering == CapturingMode.SCENE_RECOGNITION || arrmetering == CapturingMode.FRONT_PHOTO || arrmetering == CapturingMode.SUPERIOR_FRONT) {
            arrayList.add(Metering.getDefaultValue((CapturingMode)arrmetering));
            return arrayList.toArray(new Metering[0]);
        }
        for (Metering metering : Metering.values()) {
            for (String string : list) {
                if (!metering.getValue().equals(string)) continue;
                arrayList.add(metering);
            }
        }
        return arrayList.toArray(new Metering[0]);
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
        return ParameterKey.METERING;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296353;
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
}

