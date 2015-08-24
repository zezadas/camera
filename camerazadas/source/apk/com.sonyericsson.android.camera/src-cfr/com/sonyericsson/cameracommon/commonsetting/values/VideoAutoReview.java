/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.settings.AutoReviewSettingKey;
import com.sonyericsson.cameracommon.settings.AutoReviewSettingValue;

public enum VideoAutoReview implements AutoReviewSettingValue
{
    ON(-1, R.string.cam_strings_settings_on_txt),
    EDIT(-1, R.string.cam_strings_preview_edit_txt),
    OFF(-1, R.string.cam_strings_settings_off_txt);
    
    private static final int sParameterTextId;
    private final int mIconId;
    private final int mTextId;

    static {
        sParameterTextId = R.string.cam_strings_preview_duration_txt;
    }

    private VideoAutoReview(int n2, int n3) {
        this.mIconId = n2;
        this.mTextId = n3;
    }

    @Override
    public AutoReviewSettingKey getAutoReviewSettingKey() {
        return AutoReviewSettingKey.VIDEO_AUTO_REVIEW;
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

