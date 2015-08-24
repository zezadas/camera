/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Stabilizer
extends Enum<Stabilizer>
implements ParameterValue {
    private static final /* synthetic */ Stabilizer[] $VALUES;
    public static final /* enum */ Stabilizer AUTO;
    public static final /* enum */ Stabilizer OFF;
    public static final /* enum */ Stabilizer ON;
    private static final int sParameterTextId = 2131296357;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mNotificationId;
    private final int mTextId;
    private final String mValue;

    static;

    private Stabilizer(int var3, int var4, int var5, String var6, boolean var7);

    public static Stabilizer getDefault(CapturingMode var0);

    public static Stabilizer[] getOptions(CapturingMode var0);

    public static Stabilizer valueOf(String var0);

    public static Stabilizer[] values();

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

    @Override
    public int getTextId();

    @Override
    public String getValue();
}

