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

public enum Ev implements ParameterValue
{
    M6_3(2130837581, 2131296334, -2.0f),
    M5_3(2130837581, 2131296335, -1.7f),
    M4_3(2130837581, 2131296336, -1.3f),
    M3_3(2130837581, 2131296337, -1.0f),
    M2_3(2130837581, 2131296338, -0.7f),
    M1_3(2130837581, 2131296339, -0.3f),
    ZERO(2130837582, 2131296340, 0.0f),
    P1_3(2130837581, 2131296341, 0.3f),
    P2_3(2130837581, 2131296342, 0.7f),
    P3_3(2130837581, 2131296343, 1.0f),
    P4_3(2130837581, 2131296344, 1.3f),
    P5_3(2130837581, 2131296345, 1.7f),
    P6_3(2130837581, 2131296346, 2.0f);
    
    private static final int sParameterTextId = 2131296333;
    private final int mIconId;
    private int mIndex;
    private final int mTextId;
    private final float mValue;

    private Ev(int n2, int n3, float f) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = f;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Ev[] getOptions(CapturingMode arrev) {
        ArrayList<Object> arrayList = new ArrayList<Object>();
        Object object = HardwareCapability.getCapability(arrev.getCameraId());
        int n = object.EV_MAX.get();
        int n2 = object.EV_MIN.get();
        if (n == 0 && n2 == 0) {
            do {
                return arrayList.toArray(new Ev[0]);
                break;
            } while (true);
        }
        if (arrev == CapturingMode.SCENE_RECOGNITION || arrev == CapturingMode.SUPERIOR_FRONT) {
            arrayList.add(ZERO);
            return arrayList.toArray(new Ev[0]);
        }
        float f = object.EV_STEP.get().floatValue();
        arrev = Ev.values();
        int n3 = arrev.length;
        int n4 = 0;
        block1 : while (n4 < n3) {
            object = arrev[n4];
            int n5 = n2;
            do {
                if (n5 <= n) {
                    if ((int)((double)(10.0f * (f * (float)n5)) + 0.5) == (int)((double)(object.mValue * 10.0f) + 0.5)) {
                        object.mIndex = n5;
                        arrayList.add(object);
                    }
                } else {
                    ++n4;
                    continue block1;
                }
                ++n5;
            } while (true);
            break;
        }
        return arrayList.toArray(new Ev[0]);
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    public int getIntValue() {
        return this.mIndex;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.EV;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296333;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return ZERO;
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

