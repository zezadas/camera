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
public final class SuperResolution
extends Enum<SuperResolution>
implements ParameterValue {
    private static final /* synthetic */ SuperResolution[] $VALUES;
    public static final /* enum */ SuperResolution OFF;
    public static final /* enum */ SuperResolution ON;
    private static final String TAG;
    private static final int sParameterTextId = -1;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    static;

    private SuperResolution(int var3, int var4, String var5);

    public static SuperResolution[] getOptions(CapturingMode var0, boolean var1);

    public static boolean isSupported(CapturingMode var0, boolean var1);

    public static SuperResolution valueOf(String var0);

    public static SuperResolution[] values();

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

