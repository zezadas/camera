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
public final class WhiteBalance
extends Enum<WhiteBalance>
implements ParameterValue {
    private static final /* synthetic */ WhiteBalance[] $VALUES;
    public static final /* enum */ WhiteBalance AUTO;
    public static final /* enum */ WhiteBalance CLOUDY_DAYLIGHT;
    public static final /* enum */ WhiteBalance DAYLIGHT;
    public static final /* enum */ WhiteBalance FLUORESCENT;
    public static final /* enum */ WhiteBalance INCANDESCENT;
    private static final int sParameterTextId = 2131296347;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    static;

    private WhiteBalance(int var3, int var4, String var5);

    public static WhiteBalance[] getOptions(CapturingMode var0);

    public static WhiteBalance valueOf(String var0);

    public static WhiteBalance[] values();

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

