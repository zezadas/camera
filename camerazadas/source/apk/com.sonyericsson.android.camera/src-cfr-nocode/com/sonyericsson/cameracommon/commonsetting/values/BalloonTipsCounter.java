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
public final class BalloonTipsCounter
extends Enum<BalloonTipsCounter>
implements CommonSettingValue {
    private static final /* synthetic */ BalloonTipsCounter[] $VALUES;
    public static final /* enum */ BalloonTipsCounter COUNT_START;
    public static final /* enum */ BalloonTipsCounter COUNT_STOP;
    public static final /* enum */ BalloonTipsCounter DISPLAY_OK;
    public static final /* enum */ BalloonTipsCounter DISPLAY_OK_FIRST;
    public static final /* enum */ BalloonTipsCounter DISPLAY_OK_SECOND;
    public static final /* enum */ BalloonTipsCounter FIRST;
    public static final /* enum */ BalloonTipsCounter SECOND;
    private static int sParameterTextId;
    private final BalloonTipsCounter mCompatibleValue;
    private int mIconId;
    private final String mProviderValue;
    private int mTextId;

    static;

    private BalloonTipsCounter(int var3, int var4, BalloonTipsCounter var5, String var6);

    public static BalloonTipsCounter valueOf(String var0);

    public static BalloonTipsCounter[] values();

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

    public BalloonTipsCounter isCompatibleValue();
}

