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
public final class Ev
extends Enum<Ev>
implements ParameterValue {
    private static final /* synthetic */ Ev[] $VALUES;
    public static final /* enum */ Ev M1_3;
    public static final /* enum */ Ev M2_3;
    public static final /* enum */ Ev M3_3;
    public static final /* enum */ Ev M4_3;
    public static final /* enum */ Ev M5_3;
    public static final /* enum */ Ev M6_3;
    public static final /* enum */ Ev P1_3;
    public static final /* enum */ Ev P2_3;
    public static final /* enum */ Ev P3_3;
    public static final /* enum */ Ev P4_3;
    public static final /* enum */ Ev P5_3;
    public static final /* enum */ Ev P6_3;
    public static final /* enum */ Ev ZERO;
    private static final int sParameterTextId = 2131296333;
    private final int mIconId;
    private int mIndex;
    private final int mTextId;
    private final float mValue;

    static;

    private Ev(int var3, int var4, float var5);

    public static Ev[] getOptions(CapturingMode var0);

    public static Ev valueOf(String var0);

    public static Ev[] values();

    @Override
    public void apply(ParameterApplicable var1);

    @Override
    public int getIconId();

    public int getIntValue();

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

