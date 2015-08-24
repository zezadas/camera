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

public enum Stabilizer implements ParameterValue
{
    ON(-1, 2131296303, -1, "on", true),
    OFF(-1, 2131296304, -1, "off", false),
    AUTO(-1, 2131296303, -1, "auto", false);
    
    private static final int sParameterTextId = 2131296357;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mNotificationId;
    private final int mTextId;
    private final String mValue;

    private Stabilizer(int n2, int n3, int n4, String string2, boolean bl) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mNotificationId = n4;
        this.mBooleanValue = bl;
        this.mValue = string2;
    }

    public static Stabilizer getDefault(CapturingMode capturingMode) {
        if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.SUPERIOR_FRONT) {
            return AUTO;
        }
        return OFF;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Stabilizer[] getOptions(CapturingMode capturingMode) {
        ArrayList<Stabilizer> arrayList = new ArrayList<Stabilizer>();
        if (!(capturingMode.getType() == 2 || HardwareCapability.getCapability((int)capturingMode.getCameraId()).IMAGE_STABILIZER.get().isEmpty())) {
            if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.SUPERIOR_FRONT) {
                arrayList.add(AUTO);
            }
        } else {
            do {
                return arrayList.toArray(new Stabilizer[0]);
                break;
            } while (true);
        }
        arrayList.add(ON);
        arrayList.add(OFF);
        return arrayList.toArray(new Stabilizer[0]);
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public Boolean getBooleanValue() {
        return this.mBooleanValue;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    public int getNotificationIconId() {
        return this.mNotificationId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.STABILIZER;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296357;
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

