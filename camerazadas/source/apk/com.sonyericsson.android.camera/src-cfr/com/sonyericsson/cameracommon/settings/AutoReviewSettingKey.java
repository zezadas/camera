/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.settings;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.commonsetting.values.AutoReview;
import com.sonyericsson.cameracommon.commonsetting.values.VideoAutoReview;
import com.sonyericsson.cameracommon.settings.AutoReviewSettingValue;
import com.sonyericsson.cameracommon.settings.SettingKey;

public enum AutoReviewSettingKey implements SettingKey
{
    AUTO_REVIEW(R.string.cam_strings_preview_duration_title_txt, AutoReview.OFF, AutoReview.values()),
    VIDEO_AUTO_REVIEW(R.string.cam_strings_preview_duration_title_txt, VideoAutoReview.OFF, VideoAutoReview.values());
    
    private final AutoReviewSettingValue mDefault;
    private int mTitleTextId;
    private AutoReviewSettingValue[] mValues;

    private AutoReviewSettingKey(int n2, AutoReviewSettingValue autoReviewSettingValue, AutoReviewSettingValue[] arrautoReviewSettingValue) {
        this.mTitleTextId = n2;
        this.mDefault = autoReviewSettingValue;
        this.mValues = arrautoReviewSettingValue;
    }

    public AutoReviewSettingValue getDefaultValue() {
        return this.mDefault;
    }

    public AutoReviewSettingValue getDefaultValue(AutoReviewSettingKey autoReviewSettingKey) {
        return this.mDefault;
    }

    @Override
    public int getIconId() {
        return 0;
    }

    @Override
    public int getTextId() {
        return 0;
    }

    public int getTitleId() {
        return this.mTitleTextId;
    }

    public AutoReviewSettingValue[] getValues() {
        return (AutoReviewSettingValue[])this.mValues.clone();
    }
}

