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
public final class TermOfUse
extends Enum<TermOfUse>
implements CommonSettingValue {
    private static final /* synthetic */ TermOfUse[] $VALUES;
    public static final /* enum */ TermOfUse NO_VALUE;
    private final int mIconId;
    private final int mTextId;

    static;

    private TermOfUse(int var3, int var4);

    public static TermOfUse valueOf(String var0);

    public static TermOfUse[] values();

    @Override
    public CommonSettingKey getCommonSettingKey();

    @Override
    public int getIconId();

    @Override
    public String getProviderValue();

    @Override
    public int getTextId();
}

