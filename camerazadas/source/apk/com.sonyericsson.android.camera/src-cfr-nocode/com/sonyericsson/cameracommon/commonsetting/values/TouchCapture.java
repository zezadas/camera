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
public final class TouchCapture
extends Enum<TouchCapture>
implements CommonSettingValue {
    private static final /* synthetic */ TouchCapture[] $VALUES;
    public static final /* enum */ TouchCapture OFF;
    public static final /* enum */ TouchCapture ON;
    private static final int sParameterTextId;
    private final int mIconId;
    private final boolean mIsTouchCaptureOn;
    private final String mProviderValue;
    private final int mTextId;

    static;

    private TouchCapture(int var3, int var4, boolean var5, String var6);

    public static TouchCapture valueOf(String var0);

    public static TouchCapture[] values();

    @Override
    public CommonSettingKey getCommonSettingKey();

    public int getCommonSettingKeyTextId();

    @Override
    public int getIconId();

    public String getParameterName();

    @Override
    public String getProviderValue();

    @Override
    public int getTextId();

    public boolean isTouchCaptureOn();
}

