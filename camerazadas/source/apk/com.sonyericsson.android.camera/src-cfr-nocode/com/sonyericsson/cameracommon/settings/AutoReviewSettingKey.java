/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.settings;

import com.sonyericsson.cameracommon.settings.AutoReviewSettingValue;
import com.sonyericsson.cameracommon.settings.SettingKey;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class AutoReviewSettingKey
extends Enum<AutoReviewSettingKey>
implements SettingKey {
    private static final /* synthetic */ AutoReviewSettingKey[] $VALUES;
    public static final /* enum */ AutoReviewSettingKey AUTO_REVIEW;
    public static final /* enum */ AutoReviewSettingKey VIDEO_AUTO_REVIEW;
    private final AutoReviewSettingValue mDefault;
    private int mTitleTextId;
    private AutoReviewSettingValue[] mValues;

    static;

    private AutoReviewSettingKey(int var3, AutoReviewSettingValue var4, AutoReviewSettingValue[] var5);

    public static AutoReviewSettingKey valueOf(String var0);

    public static AutoReviewSettingKey[] values();

    public AutoReviewSettingValue getDefaultValue();

    public AutoReviewSettingValue getDefaultValue(AutoReviewSettingKey var1);

    @Override
    public int getIconId();

    @Override
    public int getTextId();

    public int getTitleId();

    public AutoReviewSettingValue[] getValues();
}

