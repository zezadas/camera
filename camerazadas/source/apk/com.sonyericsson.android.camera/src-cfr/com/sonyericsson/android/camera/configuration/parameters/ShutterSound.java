/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import java.util.ArrayList;

public enum ShutterSound implements ParameterValue
{
    SOUND1(-1, 2131296303, true, "sound1/"),
    OFF(-1, 2131296304, false, "sound0/");
    
    private static final int sParameterTextId = 2131296599;
    private final Boolean mBooleanValue;
    private final String mDirectoryName;
    private final int mIconId;
    private final int mTextId;

    private ShutterSound(int n2, int n3, Boolean bl, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mBooleanValue = bl;
        this.mDirectoryName = string2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static ShutterSound[] getOptions(boolean bl) {
        ArrayList<ShutterSound> arrayList = new ArrayList<ShutterSound>();
        for (ShutterSound shutterSound : ShutterSound.values()) {
            if (shutterSound.mBooleanValue.booleanValue()) {
                arrayList.add(shutterSound);
                continue;
            }
            if (bl) continue;
            arrayList.add(shutterSound);
        }
        return arrayList.toArray(new ShutterSound[0]);
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public Boolean getBooleanValue() {
        return this.mBooleanValue;
    }

    public String getDirectoryName() {
        return this.mDirectoryName;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.SHUTTER_SOUND;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296599;
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
        return this.toString();
    }
}

