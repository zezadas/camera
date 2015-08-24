/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import java.util.ArrayList;

public enum FastCapture implements ParameterValue
{
    LAUNCH_AND_CAPTURE(-1, 2131296478, 1, true, "photo-launch-and-capture"),
    LAUNCH_ONLY(-1, 2131296415, 1, true, "photo-launch-only"),
    LAUNCH_AND_RECORDING(-1, 2131296479, 2, true, "video-launch-and-recording"),
    VIDEO_LAUNCH_ONLY(-1, 2131296480, 2, true, "video-launch-only"),
    OFF(-1, 2131296304, 0, false, "off");
    
    private static final int sParameterTextId = 2131296363;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final String mSettingsSecureValue;
    private final int mTextId;
    private final int mType;
    private String mValue;

    private FastCapture(int n2, int n3, int n4, boolean bl, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mType = n4;
        this.mBooleanValue = bl;
        this.mSettingsSecureValue = string2;
    }

    public static FastCapture getDefault() {
        return LAUNCH_ONLY;
    }

    public static FastCapture[] getOptions() {
        ArrayList<FastCapture> arrayList = new ArrayList<FastCapture>();
        arrayList.add(LAUNCH_ONLY);
        arrayList.add(LAUNCH_AND_CAPTURE);
        arrayList.add(LAUNCH_AND_RECORDING);
        arrayList.add(OFF);
        return arrayList.toArray(new FastCapture[0]);
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public boolean getBooleanValue() {
        return this.mBooleanValue;
    }

    public int getCameraType() {
        return this.mType;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.FAST_CAPTURE;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296363;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    public int getParameterkeyTitleTextId() {
        return 2131296426;
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return arrparameterValue[0];
    }

    public String getSettingsSecureValue() {
        return this.mSettingsSecureValue;
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

