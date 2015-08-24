/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.settings.AutoReviewSettingKey;
import com.sonyericsson.cameracommon.settings.AutoReviewSettingValue;

public enum AutoReview implements AutoReviewSettingValue
{
    UNLIMITED(-1, R.string.cam_strings_preview_duration_unlimited_txt, -1),
    LONG(-1, R.string.cam_strings_preview_duration_5sec_txt, 5000),
    SHORT(-1, R.string.cam_strings_preview_duration_3sec_txt, 3000),
    EDIT(-1, R.string.cam_strings_preview_edit_txt, 0),
    OFF(-1, R.string.cam_strings_settings_off_txt, 0);
    
    private static final int sParameterTextId;
    private final int mDuration;
    private final int mIconId;
    private final int mTextId;

    static {
        sParameterTextId = R.string.cam_strings_preview_duration_txt;
    }

    private AutoReview(int n2, int n3, int n4) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mDuration = n4;
    }

    @Override
    public AutoReviewSettingKey getAutoReviewSettingKey() {
        return AutoReviewSettingKey.AUTO_REVIEW;
    }

    public int getDuration() {
        return this.mDuration;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    public int getParameterKeyTextId() {
        return sParameterTextId;
    }

    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }
}

