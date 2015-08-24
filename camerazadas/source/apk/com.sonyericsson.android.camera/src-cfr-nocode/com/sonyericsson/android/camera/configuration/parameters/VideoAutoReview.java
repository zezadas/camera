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
public final class VideoAutoReview
extends Enum<VideoAutoReview>
implements ParameterValue {
    private static final /* synthetic */ VideoAutoReview[] $VALUES;
    public static final /* enum */ VideoAutoReview EDIT;
    public static final /* enum */ VideoAutoReview OFF;
    public static final /* enum */ VideoAutoReview ON;
    private static final int sParameterTextId = 2131296496;
    private final int mIconId;
    private final int mTextId;

    static;

    private VideoAutoReview(int var3, int var4);

    public static VideoAutoReview[] getOptions(CapturingMode var0);

    public static VideoAutoReview valueOf(String var0);

    public static VideoAutoReview[] values();

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

