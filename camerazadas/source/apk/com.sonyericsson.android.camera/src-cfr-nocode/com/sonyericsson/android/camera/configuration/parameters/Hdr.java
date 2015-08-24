/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Hdr
extends Enum<Hdr>
implements ParameterValue {
    private static final /* synthetic */ Hdr[] $VALUES;
    public static final /* enum */ Hdr HDR_AUTO;
    public static final /* enum */ Hdr HDR_OFF;
    public static final /* enum */ Hdr HDR_ON;
    private static final int sParameterTextId = 2131296455;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    static;

    private Hdr(int var3, int var4, String var5);

    public static Hdr getDefault(CapturingMode var0);

    public static Hdr[] getOptions(CapturingMode var0);

    public static boolean isResolutionIndependentHdrSupported(List<String> var0);

    public static Hdr valueOf(String var0);

    public static Hdr[] values();

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

