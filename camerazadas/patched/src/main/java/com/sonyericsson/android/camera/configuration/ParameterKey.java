package com.sonyericsson.android.camera.configuration;

import android.content.Context;
import android.util.Log;

import com.sonyericsson.android.camera.configuration.ParameterCategory;
import com.sonyericsson.android.camera.configuration.ParameterSelectability;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.cameracommon.utility.ResourceUtil;

import sonyericsson.camera.R;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import lanchon.dexpatcher.annotation.DexAction;

@DexReplace
public enum ParameterKey {
    AUTO_REVIEW(true, false, ParameterCategory.CAPTURING_MODE, 2131296497),
    VIDEO_AUTO_REVIEW(true, false, ParameterCategory.CAPTURING_MODE, 2131296497),
    AUTO_UPLOAD(false, true, ParameterCategory.COMMON, 2131296509),
    BURST_SHOT(true, false, ParameterCategory.CAPTURING_MODE, 2131296519),
    CAPTURE_FRAME_SHAPE(true, false, ParameterCategory.CAPTURING_MODE, 2131296585),
    CAPTURING_MODE(true, false, ParameterCategory.CAPTURING_MODE, 2131296463),
    DESTINATION_TO_SAVE(true, true, ParameterCategory.COMMON, 2131296425),
    EV(true, false, ParameterCategory.CAPTURING_MODE, 2131296420),
    FACE_IDENTIFY(true, false, ParameterCategory.CAPTURING_MODE, 2131296538),
    FACING(false, false, ParameterCategory.CAPTURING_MODE, 2131296494),
    FAST_CAPTURE(true, true, ParameterCategory.COMMON, 2131296426),
    FLASH(true, false, ParameterCategory.CAPTURING_MODE, 2131296418),
    EXPOSURE_MODE(true, false, ParameterCategory.CAPTURING_MODE, R.string.cam_strings_exposure_mode_title_txt),
    FOCUS_MODE(true, false, ParameterCategory.CAPTURING_MODE, 2131296419),
    GEO_TAG(true, true, ParameterCategory.COMMON, 2131296424),
    HDR(true, false, ParameterCategory.CAPTURING_MODE, 2131296456),
    ISO(true, false, ParameterCategory.CAPTURING_MODE, 2131296725),
    SHUTTER_SPEED(true, false, ParameterCategory.CAPTURING_MODE, R.string.cam_strings_shutter_speed_title_txt),
    METERING(true, false, ParameterCategory.CAPTURING_MODE, 2131296422),
    MICROPHONE(true, false, ParameterCategory.CAPTURING_MODE, 2131296427),
    PHOTO_LIGHT(true, false, ParameterCategory.CAPTURING_MODE, 2131296513),
    RESOLUTION(true, false, ParameterCategory.CAPTURING_MODE, 2131296417),
    SCENE(true, false, ParameterCategory.CAPTURING_MODE, 2131296473),
    SELF_TIMER(true, false, ParameterCategory.CAPTURING_MODE, 2131296319),
    SHUTTER_SOUND(true, true, ParameterCategory.COMMON, 2131296599),
    SMILE_CAPTURE(true, false, ParameterCategory.CAPTURING_MODE, 2131296474),
    SOFT_SKIN(true, false, ParameterCategory.CAPTURING_MODE, 2131296487),
    VIDEO_STABILIZER(true, false, ParameterCategory.CAPTURING_MODE, 2131296477),
    STABILIZER(true, false, ParameterCategory.CAPTURING_MODE, 2131296423),
    SUPER_RESOLUTION(false, false, ParameterCategory.CAPTURING_MODE, -1),
    TOUCH_CAPTURE(true, true, ParameterCategory.COMMON, 2131296502),
    VIDEO_HDR(true, false, ParameterCategory.CAPTURING_MODE, 2131296508),
    VIDEO_SELF_TIMER(true, false, ParameterCategory.CAPTURING_MODE, 2131296319),
    VIDEO_SIZE(true, false, ParameterCategory.CAPTURING_MODE, 2131296454),
    VIDEO_SMILE_CAPTURE(true, false, ParameterCategory.CAPTURING_MODE, 2131296530),
    VOLUME_KEY(true, true, ParameterCategory.COMMON, 2131296543),
    WHITE_BALANCE(true, false, ParameterCategory.CAPTURING_MODE, 2131296421),
    TOUCH_BLOCK(false, true, ParameterCategory.COMMON, -1);

    private final ParameterCategory mCategory;
    private final boolean mIsCommon;
    private boolean mIsSaved;
    private ParameterSelectability mSelectability;
    private final int mTitleTextId;

    @DexIgnore
    private ParameterKey(boolean bl, boolean bl2, ParameterCategory parameterCategory, int n2) {
        this.mIsSaved = bl;
        this.mIsCommon = bl2;
        this.mCategory = parameterCategory;
        this.mTitleTextId = n2;
    }

    @DexIgnore
    public ParameterCategory getCategory() {
        return this.mCategory;
    }

    @DexIgnore
    public ParameterSelectability getSelectability() {
        return this.mSelectability;
    }

    @DexIgnore
    public String getTitleText(Context context) {
        switch (this.ordinal()) {
            default: {
                return null;
            }
            case 3:
        }
        return ResourceUtil.getApplicationLabel(context, "com.sonymobile.touchblocker");
    }

    @DexIgnore
    public int getTitleTextId(CapturingMode capturingMode) {
        switch (this.ordinal()) {
            default: {
                return this.mTitleTextId;
            }
            case 1: {
                return Flash.getParameterKeyTitleTextId();
            }
            case 2:
        }
        return VideoStabilizer.getParameterKeyTitleText(capturingMode.getCameraId());
    }

    @DexIgnore
    public boolean isCommon() {
        return this.mIsCommon;
    }

    @DexIgnore
    public boolean isInvalid() {
        if (this.getSelectability() == ParameterSelectability.INVALID) {
            return true;
        }
        return false;
    }

    @DexIgnore
    public boolean isSaved() {
        return this.mIsSaved;
    }

    @DexIgnore
    public boolean isSelectable() {
        if (this.getSelectability() == ParameterSelectability.SELECTABLE) {
            return true;
        }
        return false;
    }

    @DexIgnore
    public void setSaved(boolean bl) {
        this.mIsSaved = bl;
    }

    @DexIgnore
    public void setSelectability(ParameterSelectability parameterSelectability) {
        this.mSelectability = parameterSelectability;
    }

}


