/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.ParameterCategory;
import com.sonyericsson.android.camera.configuration.ParameterSelectability;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ParameterKey
extends Enum<ParameterKey> {
    private static final /* synthetic */ ParameterKey[] $VALUES;
    public static final /* enum */ ParameterKey AUTO_REVIEW;
    public static final /* enum */ ParameterKey AUTO_UPLOAD;
    public static final /* enum */ ParameterKey BURST_SHOT;
    public static final /* enum */ ParameterKey CAPTURE_FRAME_SHAPE;
    public static final /* enum */ ParameterKey CAPTURING_MODE;
    public static final /* enum */ ParameterKey DESTINATION_TO_SAVE;
    public static final /* enum */ ParameterKey EV;
    public static final /* enum */ ParameterKey FACE_IDENTIFY;
    public static final /* enum */ ParameterKey FACING;
    public static final /* enum */ ParameterKey FAST_CAPTURE;
    public static final /* enum */ ParameterKey FLASH;
    public static final /* enum */ ParameterKey FOCUS_MODE;
    public static final /* enum */ ParameterKey GEO_TAG;
    public static final /* enum */ ParameterKey HDR;
    public static final /* enum */ ParameterKey ISO;
    public static final /* enum */ ParameterKey METERING;
    public static final /* enum */ ParameterKey MICROPHONE;
    public static final /* enum */ ParameterKey PHOTO_LIGHT;
    public static final /* enum */ ParameterKey RESOLUTION;
    public static final /* enum */ ParameterKey SCENE;
    public static final /* enum */ ParameterKey SELF_TIMER;
    public static final /* enum */ ParameterKey SHUTTER_SOUND;
    public static final /* enum */ ParameterKey SMILE_CAPTURE;
    public static final /* enum */ ParameterKey SOFT_SKIN;
    public static final /* enum */ ParameterKey STABILIZER;
    public static final /* enum */ ParameterKey SUPER_RESOLUTION;
    public static final /* enum */ ParameterKey TOUCH_BLOCK;
    public static final /* enum */ ParameterKey TOUCH_CAPTURE;
    public static final /* enum */ ParameterKey VIDEO_AUTO_REVIEW;
    public static final /* enum */ ParameterKey VIDEO_HDR;
    public static final /* enum */ ParameterKey VIDEO_SELF_TIMER;
    public static final /* enum */ ParameterKey VIDEO_SIZE;
    public static final /* enum */ ParameterKey VIDEO_SMILE_CAPTURE;
    public static final /* enum */ ParameterKey VIDEO_STABILIZER;
    public static final /* enum */ ParameterKey VOLUME_KEY;
    public static final /* enum */ ParameterKey WHITE_BALANCE;
    private final ParameterCategory mCategory;
    private final boolean mIsCommon;
    private boolean mIsSaved;
    private ParameterSelectability mSelectability;
    private final int mTitleTextId;

    static;

    private ParameterKey(boolean var3, boolean var4, ParameterCategory var5, int var6);

    public static ParameterKey valueOf(String var0);

    public static ParameterKey[] values();

    public ParameterCategory getCategory();

    public ParameterSelectability getSelectability();

    public String getTitleText(Context var1);

    public int getTitleTextId(CapturingMode var1);

    public boolean isCommon();

    public boolean isInvalid();

    public boolean isSaved();

    public boolean isSelectable();

    public void setSaved(boolean var1);

    public void setSelectability(ParameterSelectability var1);

}

