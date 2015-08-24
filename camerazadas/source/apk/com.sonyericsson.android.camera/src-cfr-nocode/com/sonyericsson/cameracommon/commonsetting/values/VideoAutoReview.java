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
public final class VideoAutoReview
extends Enum<VideoAutoReview>
implements AutoReviewSettingValue {
    private static final /* synthetic */ VideoAutoReview[] $VALUES;
    public static final /* enum */ VideoAutoReview EDIT;
    public static final /* enum */ VideoAutoReview OFF;
    public static final /* enum */ VideoAutoReview ON;
    private static final int sParameterTextId;
    private final int mIconId;
    private final int mTextId;

    static;

    private VideoAutoReview(int var3, int var4);

    public static VideoAutoReview valueOf(String var0);

    public static VideoAutoReview[] values();

    @Override
    public AutoReviewSettingKey getAutoReviewSettingKey();

    @Override
    public int getIconId();

    public int getParameterKeyTextId();

    public String getParameterName();

    @Override
    public int getTextId();
}

