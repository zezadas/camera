package com.sonyericsson.android.camera.view.settings;

import android.util.Log;

import com.sonyericsson.android.camera.configuration.ParameterKey;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import lanchon.dexpatcher.annotation.DexAction;

@DexReplace
public enum SettingGroup {
    PHOTO(2131296527, new ParameterKey[]{
            ParameterKey.RESOLUTION,
            ParameterKey.CAPTURE_FRAME_SHAPE,
            ParameterKey.EXPOSURE_MODE,
            ParameterKey.FOCUS_MODE,
            ParameterKey.ISO,
            ParameterKey.SHUTTER_SPEED,
            ParameterKey.HDR,
            ParameterKey.METERING,
            ParameterKey.STABILIZER,
            ParameterKey.SELF_TIMER,
            ParameterKey.SMILE_CAPTURE,
            ParameterKey.SOFT_SKIN,
            ParameterKey.AUTO_REVIEW,
            ParameterKey.BURST_SHOT,
            ParameterKey.SUPER_RESOLUTION,
            ParameterKey.FACE_IDENTIFY}),
    VIDEO(2131296526, new ParameterKey[]{
            ParameterKey.VIDEO_SIZE,
            ParameterKey.VIDEO_SELF_TIMER,
            ParameterKey.VIDEO_SMILE_CAPTURE,
            ParameterKey.FOCUS_MODE,
            ParameterKey.VIDEO_HDR,
            ParameterKey.METERING,
            ParameterKey.VIDEO_STABILIZER,
            ParameterKey.MICROPHONE,
            ParameterKey.VIDEO_AUTO_REVIEW}),
    SCENE(2131296772, new ParameterKey[0]),
    CONTROL(2131296776, new ParameterKey[]{ParameterKey.EV, ParameterKey.WHITE_BALANCE}),
    FLASH_LIGHT(2131296418, new ParameterKey[]{ParameterKey.FLASH, ParameterKey.PHOTO_LIGHT}),
    COMMON(2131296528, new ParameterKey[]{ParameterKey.FAST_CAPTURE, ParameterKey.GEO_TAG, ParameterKey.AUTO_UPLOAD, ParameterKey.TOUCH_CAPTURE, ParameterKey.VOLUME_KEY, ParameterKey.SHUTTER_SOUND, ParameterKey.DESTINATION_TO_SAVE, ParameterKey.TOUCH_BLOCK});

    private final ParameterKey[] mItems;
    private final int mTextId;

    @DexIgnore
    private SettingGroup(int n2, ParameterKey[] arrparameterKey) {
        this.mTextId = n2;
        this.mItems = arrparameterKey;
    }

    @DexIgnore
    public static SettingGroup getGroup(String string) {
        for (SettingGroup settingGroup : SettingGroup.values()) {
            if (!settingGroup.toString().equals(string)) continue;
            return settingGroup;
        }
        return null;
    }

    @DexIgnore
    public ParameterKey[] getSettingItemList() {
        return (ParameterKey[]) this.mItems.clone();
    }

    @DexIgnore
    public int getTextId() {
        return this.mTextId;
    }

    @DexIgnore
    public ParameterKey[] valueOf(SettingGroup settingGroup) {
        return this.getSettingItemList();
    }
}

