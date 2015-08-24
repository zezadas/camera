/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import java.util.ArrayList;

public enum VolumeKey implements ParameterValue
{
    ZOOM(-1, 2131296544),
    VOLUME(-1, 2131296546),
    HW_CAMERA_KEY(-1, 2131296545);
    
    private static final int sParameterTextId = 2131296543;
    private final int mIconId;
    private final int mTextId;
    private String mValue;

    private VolumeKey(int n2, int n3) {
        this.mIconId = n2;
        this.mTextId = n3;
    }

    public static VolumeKey getDefault() {
        return ZOOM;
    }

    public static VolumeKey[] getOptions() {
        ArrayList<VolumeKey> arrayList = new ArrayList<VolumeKey>();
        arrayList.add(ZOOM);
        arrayList.add(VOLUME);
        arrayList.add(HW_CAMERA_KEY);
        return arrayList.toArray(new VolumeKey[0]);
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
        return ParameterKey.VOLUME_KEY;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296543;
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

