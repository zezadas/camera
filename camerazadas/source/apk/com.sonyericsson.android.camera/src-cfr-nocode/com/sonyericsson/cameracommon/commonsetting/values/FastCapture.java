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
public final class FastCapture
extends Enum<FastCapture>
implements CommonSettingValue {
    private static final /* synthetic */ FastCapture[] $VALUES;
    public static final /* enum */ FastCapture LAUNCH_AND_CAPTURE;
    public static final /* enum */ FastCapture LAUNCH_AND_RECORDING;
    public static final /* enum */ FastCapture LAUNCH_ONLY;
    public static final /* enum */ FastCapture OFF;
    public static final /* enum */ FastCapture VIDEO_LAUNCH_ONLY;
    private static final int sParameterTextId;
    private final int mIconId;
    private final boolean mIsFastCaptureOn;
    private final String mSettingsSecureValue;
    private final int mTextId;
    private final int mType;

    static;

    private FastCapture(int var3, int var4, int var5, boolean var6, String var7);

    public static FastCapture valueOf(String var0);

    public static FastCapture[] values();

    public int getCameraType();

    @Override
    public CommonSettingKey getCommonSettingKey();

    @Override
    public int getIconId();

    public int getParameterKeyTextId();

    public String getParameterName();

    public int getParameterkeyTitleTextId();

    @Override
    public String getProviderValue();

    @Override
    public int getTextId();

    public boolean isFastCaptureOn();
}

