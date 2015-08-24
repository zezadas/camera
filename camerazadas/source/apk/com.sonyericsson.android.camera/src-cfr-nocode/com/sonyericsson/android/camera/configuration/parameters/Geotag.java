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
public final class Geotag
extends Enum<Geotag>
implements ParameterValue {
    private static final /* synthetic */ Geotag[] $VALUES;
    public static final /* enum */ Geotag OFF;
    public static final /* enum */ Geotag ON;
    private static final int sParameterTextId = 2131296358;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mTextId;

    static;

    private Geotag(int var3, int var4, boolean var5);

    public static Geotag[] getOptions();

    public static Geotag valueOf(String var0);

    public static Geotag[] values();

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

    public boolean isGeotagOn();
}

