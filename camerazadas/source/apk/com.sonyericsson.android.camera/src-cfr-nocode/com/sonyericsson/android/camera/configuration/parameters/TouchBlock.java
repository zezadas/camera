/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class TouchBlock
extends Enum<TouchBlock>
implements ParameterValue {
    private static final /* synthetic */ TouchBlock[] $VALUES;
    public static final /* enum */ TouchBlock OFF;
    public static final /* enum */ TouchBlock ON;
    private static final int sParameterTextId = -1;
    private final int mIconId;
    private final int mTextId;

    static;

    private TouchBlock(int var3, int var4);

    public static TouchBlock getDefaultValue();

    public static TouchBlock[] getOptions(Context var0);

    public static TouchBlock valueOf(String var0);

    public static TouchBlock[] values();

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

