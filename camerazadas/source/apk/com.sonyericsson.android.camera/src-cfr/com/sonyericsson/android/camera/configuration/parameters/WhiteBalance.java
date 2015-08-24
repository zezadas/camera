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

public enum WhiteBalance implements ParameterValue
{
    AUTO(2130837751, 2131296348, "auto"),
    INCANDESCENT(2130837755, 2131296349, "incandescent"),
    FLUORESCENT(2130837754, 2131296350, "fluorescent"),
    DAYLIGHT(2130837753, 2131296351, "daylight"),
    CLOUDY_DAYLIGHT(2130837752, 2131296352, "cloudy-daylight");
    
    private static final int sParameterTextId = 2131296347;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    private WhiteBalance(int n2, int n3, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = string2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static WhiteBalance[] getOptions(CapturingMode arrwhiteBalance) {
        ArrayList<WhiteBalance> arrayList = new ArrayList<WhiteBalance>();
        List<String> list = HardwareCapability.getCapability((int)arrwhiteBalance.getCameraId()).WHITE_BALANCE.get();
        if (list.isEmpty()) return arrayList.toArray(new WhiteBalance[0]);
        if (arrwhiteBalance == CapturingMode.SCENE_RECOGNITION || arrwhiteBalance == CapturingMode.SUPERIOR_FRONT) {
            arrayList.add(AUTO);
            return arrayList.toArray(new WhiteBalance[0]);
        }
        for (WhiteBalance whiteBalance : WhiteBalance.values()) {
            for (String string : list) {
                if (!whiteBalance.getValue().equals(string)) continue;
                arrayList.add(whiteBalance);
            }
        }
        return arrayList.toArray(new WhiteBalance[0]);
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
        return ParameterKey.WHITE_BALANCE;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296347;
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

