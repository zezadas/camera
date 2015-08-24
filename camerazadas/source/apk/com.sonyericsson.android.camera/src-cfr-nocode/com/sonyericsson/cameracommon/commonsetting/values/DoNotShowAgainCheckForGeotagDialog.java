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
public final class DoNotShowAgainCheckForGeotagDialog
extends Enum<DoNotShowAgainCheckForGeotagDialog>
implements CommonSettingValue {
    private static final /* synthetic */ DoNotShowAgainCheckForGeotagDialog[] $VALUES;
    public static final /* enum */ DoNotShowAgainCheckForGeotagDialog CHECKED;
    public static final /* enum */ DoNotShowAgainCheckForGeotagDialog NOT_CHECKED;
    private final String mProviderValue;

    static;

    private DoNotShowAgainCheckForGeotagDialog(String var3);

    public static DoNotShowAgainCheckForGeotagDialog valueOf(String var0);

    public static DoNotShowAgainCheckForGeotagDialog[] values();

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
}

