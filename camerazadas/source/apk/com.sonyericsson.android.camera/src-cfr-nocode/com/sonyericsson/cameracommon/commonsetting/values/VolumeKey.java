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
public final class VolumeKey
extends Enum<VolumeKey>
implements CommonSettingValue {
    private static final /* synthetic */ VolumeKey[] $VALUES;
    public static final /* enum */ VolumeKey HW_CAMERA_KEY;
    public static final /* enum */ VolumeKey VOLUME;
    public static final /* enum */ VolumeKey ZOOM;
    private final int mIconId;
    private final String mSettingsSecureValue;
    private final int mTextId;

    static;

    private VolumeKey(int var3, int var4, String var5);

    public static VolumeKey valueOf(String var0);

    public static VolumeKey[] values();

    @Override
    public CommonSettingKey getCommonSettingKey();

    @Override
    public int getIconId();

    @Override
    public String getProviderValue();

    @Override
    public int getTextId();
}

