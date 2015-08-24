/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Geotag
extends Enum<Geotag>
implements CommonSettingValue {
    private static final /* synthetic */ Geotag[] $VALUES;
    public static final /* enum */ Geotag OFF;
    public static final /* enum */ Geotag ON;
    private static final int sParameterTextId;
    private final int mIconId;
    private final boolean mIsGeotagOn;
    private final String mProviderValue;
    private final int mTextId;

    static;

    private Geotag(int var3, int var4, boolean var5, String var6);

    public static Geotag valueOf(String var0);

    public static Geotag[] values();

    @Override
    public CommonSettingKey getCommonSettingKey();

    @Override
    public int getIconId();

    public int getParameterKeyTextId();

    public String getParameterName();

    @Override
    public String getProviderValue();

    @Override
    public int getTextId();

    public boolean isGeotagOn();
}

