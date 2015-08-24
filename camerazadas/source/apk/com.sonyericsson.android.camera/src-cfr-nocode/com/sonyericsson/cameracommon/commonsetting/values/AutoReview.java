/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.settings.AutoReviewSettingKey;
import com.sonyericsson.cameracommon.settings.AutoReviewSettingValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class AutoReview
extends Enum<AutoReview>
implements AutoReviewSettingValue {
    private static final /* synthetic */ AutoReview[] $VALUES;
    public static final /* enum */ AutoReview EDIT;
    public static final /* enum */ AutoReview LONG;
    public static final /* enum */ AutoReview OFF;
    public static final /* enum */ AutoReview SHORT;
    public static final /* enum */ AutoReview UNLIMITED;
    private static final int sParameterTextId;
    private final int mDuration;
    private final int mIconId;
    private final int mTextId;

    static;

    private AutoReview(int var3, int var4, int var5);

    public static AutoReview valueOf(String var0);

    public static AutoReview[] values();

    @Override
    public AutoReviewSettingKey getAutoReviewSettingKey();

    public int getDuration();

    @Override
    public int getIconId();

    public int getParameterKeyTextId();

    public String getParameterName();

    @Override
    public int getTextId();
}

