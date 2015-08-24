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
public final class ShutterSound
extends Enum<ShutterSound>
implements ParameterValue {
    private static final /* synthetic */ ShutterSound[] $VALUES;
    public static final /* enum */ ShutterSound OFF;
    public static final /* enum */ ShutterSound SOUND1;
    private static final int sParameterTextId = 2131296599;
    private final Boolean mBooleanValue;
    private final String mDirectoryName;
    private final int mIconId;
    private final int mTextId;

    static;

    private ShutterSound(int var3, int var4, Boolean var5, String var6);

    public static ShutterSound[] getOptions(boolean var0);

    public static ShutterSound valueOf(String var0);

    public static ShutterSound[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public Boolean getBooleanValue();

    public String getDirectoryName();

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

