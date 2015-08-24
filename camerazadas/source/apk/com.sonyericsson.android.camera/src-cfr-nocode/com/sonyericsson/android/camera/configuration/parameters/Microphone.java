/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Microphone
extends Enum<Microphone>
implements ParameterValue {
    private static final /* synthetic */ Microphone[] $VALUES;
    public static final /* enum */ Microphone OFF;
    public static final /* enum */ Microphone ON;
    private static final int sParameterTextId = 2131296366;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mTextId;

    static;

    private Microphone(int var3, int var4, boolean var5);

    public static Microphone[] getOptions();

    public static Microphone valueOf(String var0);

    public static Microphone[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public Boolean getBooleanValue();

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

    @Override
    public int getTextId();

    @Override
    public String getValue();
}

