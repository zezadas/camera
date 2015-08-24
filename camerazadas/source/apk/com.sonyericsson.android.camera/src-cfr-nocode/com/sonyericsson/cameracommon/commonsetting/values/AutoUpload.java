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
public final class AutoUpload
extends Enum<AutoUpload>
implements CommonSettingValue {
    private static final /* synthetic */ AutoUpload[] $VALUES;
    public static final /* enum */ AutoUpload OFF;
    public static final /* enum */ AutoUpload ON;
    private static final int sParameterTextId;
    private final int mIconId;
    private final boolean mIsAutoUploadOn;
    private final String mProviderValue;
    private final int mTextId;

    static;

    private AutoUpload(int var3, int var4, Boolean var5, String var6);

    public static AutoUpload valueOf(String var0);

    public static AutoUpload[] values();

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

    public boolean isAutoUploadOn();
}

