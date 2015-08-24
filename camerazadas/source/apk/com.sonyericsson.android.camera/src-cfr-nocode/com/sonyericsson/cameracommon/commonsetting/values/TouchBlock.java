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
public final class TouchBlock
extends Enum<TouchBlock>
implements CommonSettingValue {
    private static final /* synthetic */ TouchBlock[] $VALUES;
    public static final /* enum */ TouchBlock NO_VALUE;
    private final int mIconId;
    private final int mTextId;

    static;

    private TouchBlock(int var3, int var4);

    public static TouchBlock valueOf(String var0);

    public static TouchBlock[] values();

    @Override
    public CommonSettingKey getCommonSettingKey();

    @Override
    public int getIconId();

    @Override
    public String getProviderValue();

    @Override
    public int getTextId();
}

