/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class SelfTimer
extends Enum<SelfTimer>
implements ParameterValue,
SelfTimerInterface {
    private static final /* synthetic */ SelfTimer[] $VALUES;
    public static final /* enum */ SelfTimer INSTANT;
    public static final /* enum */ SelfTimer LONG;
    public static final /* enum */ SelfTimer OFF;
    public static final /* enum */ SelfTimer SHORT;
    private static final int sParameterTextId = 2131296319;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mMilliSeconds;
    private final ShutterToneGenerator.Type mSoundType;
    private final int mTextId;

    static;

    private SelfTimer(int var3, int var4, boolean var5, int var6, ShutterToneGenerator.Type var7);

    public static SelfTimer[] getOptions();

    public static SelfTimer valueOf(String var0);

    public static SelfTimer[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public Boolean getBooleanValue();

    @Override
    public int getDurationInMillisecond();

    @Override
    public int getIconId();

    @Override
    public ParameterKey getParameterKey();

    @Override
    public int getParameterKeyTextId();

    @Override
    public String getParameterName();

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] var1, ParameterValue var2);

    public ShutterToneGenerator.Type getSoundType();

    @Override
    public int getTextId();

    @Override
    public String getValue();
}

