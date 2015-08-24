/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.parameter.Parameters;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class BurstShot
extends Enum<BurstShot>
implements ParameterValue {
    private static final /* synthetic */ BurstShot[] $VALUES;
    public static final /* enum */ BurstShot BEST_EFFORT;
    public static final /* enum */ BurstShot HIGH;
    public static final /* enum */ BurstShot OFF;
    private static final int sParameterTextId = 2131296491;
    private final int mIconId;
    private final int mQuality;
    private final int mTextId;
    private final String mValue;

    static;

    private BurstShot(int var3, int var4, int var5, String var6);

    public static Resolution getBurstResolution(Parameters var0);

    public static BurstShot getDefault();

    public static BurstShot[] getOptions();

    public static BurstShot[] getOptions(boolean var0, CapturingMode var1);

    public static BurstShot valueOf(String var0);

    public static BurstShot[] values();

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

    public int getQuality();

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] var1, ParameterValue var2);

    @Override
    public int getTextId();

    @Override
    public String getValue();

    public boolean isBurstShotOn();
}

