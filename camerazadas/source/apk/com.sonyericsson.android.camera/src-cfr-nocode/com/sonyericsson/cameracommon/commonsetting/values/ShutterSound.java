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
public final class ShutterSound
extends Enum<ShutterSound>
implements CommonSettingValue {
    private static final /* synthetic */ ShutterSound[] $VALUES;
    public static final /* enum */ ShutterSound OFF;
    public static final /* enum */ ShutterSound ON;
    private static final int sParameterTextId;
    private final String mDirectoryName;
    private final int mIconId;
    private final boolean mIsShutterSoundOn;
    private final String mProviderValue;
    private final int mTextId;

    static;

    private ShutterSound(int var3, int var4, boolean var5, String var6, String var7);

    public static ShutterSound valueOf(String var0);

    public static ShutterSound[] values();

    @Override
    public CommonSettingKey getCommonSettingKey();

    public String getDirectoryName();

    @Override
    public int getIconId();

    public int getParameterKeyTextId();

    public String getParameterName();

    @Override
    public String getProviderValue();

    @Override
    public int getTextId();

    public boolean isShutterSoundOn();
}

