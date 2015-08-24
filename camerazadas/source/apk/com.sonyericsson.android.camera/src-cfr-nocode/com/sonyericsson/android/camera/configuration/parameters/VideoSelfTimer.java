/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class VideoSelfTimer
extends Enum<VideoSelfTimer>
implements ParameterValue {
    private static final /* synthetic */ VideoSelfTimer[] $VALUES;
    public static final /* enum */ VideoSelfTimer INSTANT;
    public static final /* enum */ VideoSelfTimer LONG;
    public static final /* enum */ VideoSelfTimer OFF;
    public static final /* enum */ VideoSelfTimer SHORT;
    private static final int sParameterTextId = 2131296319;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mMilliSeconds;
    private final int mNotificationIconId;
    private final ShutterToneGenerator.Type mSoundType;
    private final int mTextId;

    static;

    private VideoSelfTimer(SelfTimer var3, int var4);

    public static VideoSelfTimer[] getOptions();

    public static VideoSelfTimer valueOf(String var0);

    public static VideoSelfTimer[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public Boolean getBooleanValue();

    @Override
    public int getIconId();

    public int getNotificationIconId();

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

    public int getTime();

    @Override
    public String getValue();
}

