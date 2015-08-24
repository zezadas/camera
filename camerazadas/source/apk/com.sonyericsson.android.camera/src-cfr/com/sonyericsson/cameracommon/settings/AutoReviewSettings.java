/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.settings;

import com.sonyericsson.cameracommon.settings.AutoReviewSettingKey;
import com.sonyericsson.cameracommon.settings.AutoReviewSettingValue;
import java.util.HashMap;

public class AutoReviewSettings {
    private static final String TAG = AutoReviewSettings.class.getSimpleName();
    private final HashMap<AutoReviewSettingKey, AutoReviewSettingValue> mSettings = new HashMap();

    public AutoReviewSettingValue get(AutoReviewSettingKey autoReviewSettingKey) {
        AutoReviewSettingValue autoReviewSettingValue;
        AutoReviewSettingValue autoReviewSettingValue2 = autoReviewSettingValue = this.mSettings.get(autoReviewSettingKey);
        if (autoReviewSettingValue == null) {
            autoReviewSettingValue2 = autoReviewSettingKey.getDefaultValue(autoReviewSettingKey);
        }
        return autoReviewSettingValue2;
    }

    public void set(AutoReviewSettingValue autoReviewSettingValue) {
        AutoReviewSettingKey autoReviewSettingKey = autoReviewSettingValue.getAutoReviewSettingKey();
        this.mSettings.put(autoReviewSettingKey, autoReviewSettingValue);
    }
}

