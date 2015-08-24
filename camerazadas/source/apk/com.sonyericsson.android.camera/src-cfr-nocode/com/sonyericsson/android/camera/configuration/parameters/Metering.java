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
public final class Metering
extends Enum<Metering>
implements ParameterValue {
    private static final /* synthetic */ Metering[] $VALUES;
    public static final /* enum */ Metering AVERAGE;
    public static final /* enum */ Metering CENTER;
    public static final /* enum */ Metering FACE;
    public static final /* enum */ Metering MULTI;
    public static final /* enum */ Metering SPOT;
    private static final int sParameterTextId = 2131296353;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    static;

    private Metering(int var3, int var4, String var5);

    public static Metering getDefaultValue(CapturingMode var0);

    public static Metering[] getOptions(CapturingMode var0);

    public static Metering valueOf(String var0);

    public static Metering[] values();

    @Override
    public void apply(ParameterApplicable var1);

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

