/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings;

import com.sonyericsson.android.camera.configuration.ParameterKey;

public enum SettingGroup {
    PHOTO(2131296527, new ParameterKey[]{ParameterKey.RESOLUTION, ParameterKey.CAPTURE_FRAME_SHAPE, ParameterKey.SELF_TIMER, ParameterKey.SMILE_CAPTURE, ParameterKey.FOCUS_MODE, ParameterKey.HDR, ParameterKey.ISO, ParameterKey.METERING, ParameterKey.STABILIZER, ParameterKey.SOFT_SKIN, ParameterKey.AUTO_REVIEW, ParameterKey.BURST_SHOT, ParameterKey.SUPER_RESOLUTION, ParameterKey.FACE_IDENTIFY}),
    VIDEO(2131296526, new ParameterKey[]{ParameterKey.VIDEO_SIZE, ParameterKey.VIDEO_SELF_TIMER, ParameterKey.VIDEO_SMILE_CAPTURE, ParameterKey.FOCUS_MODE, ParameterKey.VIDEO_HDR, ParameterKey.METERING, ParameterKey.VIDEO_STABILIZER, ParameterKey.MICROPHONE, ParameterKey.VIDEO_AUTO_REVIEW}),
    SCENE(2131296771, new ParameterKey[0]),
    CONTROL(2131296775, new ParameterKey[]{ParameterKey.EV, ParameterKey.WHITE_BALANCE}),
    FLASH_LIGHT(2131296418, new ParameterKey[]{ParameterKey.FLASH, ParameterKey.PHOTO_LIGHT}),
    COMMON(2131296528, new ParameterKey[]{ParameterKey.FAST_CAPTURE, ParameterKey.GEO_TAG, ParameterKey.AUTO_UPLOAD, ParameterKey.TOUCH_CAPTURE, ParameterKey.VOLUME_KEY, ParameterKey.SHUTTER_SOUND, ParameterKey.DESTINATION_TO_SAVE, ParameterKey.TOUCH_BLOCK});
    
    private final ParameterKey[] mItems;
    private final int mTextId;

    private SettingGroup(int n2, ParameterKey[] arrparameterKey) {
        this.mTextId = n2;
        this.mItems = arrparameterKey;
    }

    public static SettingGroup getGroup(String string) {
        for (SettingGroup settingGroup : SettingGroup.values()) {
            if (!settingGroup.toString().equals(string)) continue;
            return settingGroup;
        }
        return null;
    }

    public ParameterKey[] getSettingItemList() {
        return (ParameterKey[])this.mItems.clone();
    }

    public int getTextId() {
        return this.mTextId;
    }

    public ParameterKey[] valueOf(SettingGroup settingGroup) {
        return this.getSettingItemList();
    }
}

