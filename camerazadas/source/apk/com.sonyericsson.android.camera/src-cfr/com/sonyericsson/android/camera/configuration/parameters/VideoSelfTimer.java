/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;

public enum VideoSelfTimer implements ParameterValue
{
    LONG(SelfTimer.LONG, 2130837740),
    SHORT(SelfTimer.SHORT, 2130837741),
    INSTANT(SelfTimer.INSTANT, 2130837739),
    OFF(SelfTimer.OFF, -1);
    
    private static final int sParameterTextId = 2131296319;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mMilliSeconds;
    private final int mNotificationIconId;
    private final ShutterToneGenerator.Type mSoundType;
    private final int mTextId;

    private VideoSelfTimer(SelfTimer selfTimer, int n2) {
        this.mIconId = selfTimer.getIconId();
        this.mTextId = selfTimer.getTextId();
        this.mNotificationIconId = n2;
        this.mBooleanValue = selfTimer.getBooleanValue();
        this.mMilliSeconds = selfTimer.getDurationInMillisecond();
        this.mSoundType = selfTimer.getSoundType();
    }

    public static VideoSelfTimer[] getOptions() {
        return VideoSelfTimer.values();
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
        return this.mNotificationIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.VIDEO_SELF_TIMER;
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

    public int getTime() {
        return this.mMilliSeconds;
    }

    @Override
    public String getValue() {
        return this.toString();
    }
}

