/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class CaptureFrameShape
extends Enum<CaptureFrameShape>
implements ParameterValue {
    private static final /* synthetic */ CaptureFrameShape[] $VALUES;
    public static final /* enum */ CaptureFrameShape STANDARD;
    public static final /* enum */ CaptureFrameShape WIDE;
    private static final int sParameterTextId = 2131296584;
    private final int mAspectRatio_x100;
    private final int mIconId;
    private final int mTextId;

    static;

    private CaptureFrameShape(int var3, int var4, int var5);

    public static CaptureFrameShape getDefaultValue(CapturingMode var0);

    public static CaptureFrameShape[] getOptions(CapturingMode var0);

    public static CaptureFrameShape valueOf(String var0);

    public static CaptureFrameShape[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public int getAspectRatio_x100();

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

    public Resolution getResolution(int var1);

    @Override
    public int getTextId();

    @Override
    public String getValue();
}

