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
public final class AutoReview
extends Enum<AutoReview>
implements ParameterValue {
    private static final /* synthetic */ AutoReview[] $VALUES;
    public static final /* enum */ AutoReview EDIT;
    public static final /* enum */ AutoReview LONG;
    public static final /* enum */ AutoReview OFF;
    public static final /* enum */ AutoReview SHORT;
    public static final /* enum */ AutoReview UNLIMITED;
    private static final int sParameterTextId = 2131296496;
    private final int mDuration;
    private final int mIconId;
    private final int mTextId;

    static;

    private AutoReview(int var3, int var4, int var5);

    public static AutoReview[] getOptions(CapturingMode var0);

    public static AutoReview valueOf(String var0);

    public static AutoReview[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public int getDuration();

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

