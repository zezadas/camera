/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;

public enum SelfTimer implements ParameterValue,
SelfTimerInterface
{
    LONG(2130837671, 2131296321, true, 10000, ShutterToneGenerator.Type.SOUND_SELFTIMER_10SEC),
    SHORT(2130837672, 2131296320, true, 2000, ShutterToneGenerator.Type.SOUND_SELFTIMER_2SEC),
    INSTANT(2130837670, 2131296688, true, 500, null),
    OFF(2130837673, 2131296304, false, 0, null);
    
    private static final int sParameterTextId = 2131296319;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mMilliSeconds;
    private final ShutterToneGenerator.Type mSoundType;
    private final int mTextId;

    private SelfTimer(int n2, int n3, boolean bl, int n4, ShutterToneGenerator.Type type) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mBooleanValue = bl;
        this.mMilliSeconds = n4;
        this.mSoundType = type;
    }

    public static SelfTimer[] getOptions() {
        return SelfTimer.values();
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public Boolean getBooleanValue() {
        return this.mBooleanValue;
    }

    @Override
    public int getDurationInMillisecond() {
        return this.mMilliSeconds;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.SELF_TIMER;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296319;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return arrparameterValue[0];
    }

    public ShutterToneGenerator.Type getSoundType() {
        return this.mSoundType;
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

