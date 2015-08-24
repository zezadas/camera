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
public final class Iso
extends Enum<Iso>
implements ParameterValue {
    private static final /* synthetic */ Iso[] $VALUES;
    public static final /* enum */ Iso ISO_100;
    public static final /* enum */ Iso ISO_10000;
    public static final /* enum */ Iso ISO_12800;
    public static final /* enum */ Iso ISO_1600;
    public static final /* enum */ Iso ISO_200;
    public static final /* enum */ Iso ISO_3200;
    public static final /* enum */ Iso ISO_400;
    public static final /* enum */ Iso ISO_50;
    public static final /* enum */ Iso ISO_6400;
    public static final /* enum */ Iso ISO_800;
    public static final /* enum */ Iso ISO_AUTO;
    private static final int sParameterTextId = 2131296724;
    private final String mAeMode;
    private final int mIconId;
    private final int mIsoValue;
    private final int mTextId;

    static;

    private Iso(int var3, int var4, String var5, int var6);

    public static Iso[] getOptions(CapturingMode var0, Resolution var1);

    public static boolean isAlwaysChangeToAutoToResolveDependency();

    public static boolean isExclusiveWith(Resolution var0);

    public static Iso valueOf(String var0);

    public static Iso[] values();

    @Override
    public void apply(ParameterApplicable var1);

    @Override
    public int getIconId();

    public int getIsoValue();

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

