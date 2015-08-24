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
public final class Facing
extends Enum<Facing>
implements ParameterValue {
    private static final /* synthetic */ Facing[] $VALUES;
    public static final /* enum */ Facing BACK;
    public static final /* enum */ Facing FRONT;
    private static Facing[] sOptions;
    private static final int sParameterTextId = 2131296494;
    private final int mIconId;
    private final int mTextId;
    private final int mValue;

    static;

    private Facing(int var3, int var4, int var5);

    public static Facing[] getOptions();

    public static Facing valueOf(String var0);

    public static Facing[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public int getCameraId();

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

