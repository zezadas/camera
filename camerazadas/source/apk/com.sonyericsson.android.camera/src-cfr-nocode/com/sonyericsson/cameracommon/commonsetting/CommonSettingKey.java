/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting;

import android.content.Context;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.settings.SettingKey;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class CommonSettingKey
extends Enum<CommonSettingKey>
implements SettingKey {
    private static final /* synthetic */ CommonSettingKey[] $VALUES;
    public static final /* enum */ CommonSettingKey AUTO_UPLOAD;
    public static final /* enum */ CommonSettingKey BALLOON_TIPS_COUNTER;
    public static final /* enum */ CommonSettingKey DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG;
    public static final /* enum */ CommonSettingKey FAST_CAPTURE;
    public static final /* enum */ CommonSettingKey GEO_TAG;
    public static final /* enum */ CommonSettingKey SAVE_DESTINATION;
    public static final /* enum */ CommonSettingKey SHUTTER_SOUND;
    public static final /* enum */ CommonSettingKey TERM_OF_USE;
    public static final /* enum */ CommonSettingKey TOUCH_BLOCK;
    public static final /* enum */ CommonSettingKey TOUCH_CAPTURE;
    public static final /* enum */ CommonSettingKey VOLUME_KEY;
    private String mKey;
    private int mTitleTextId;
    private CommonSettingValue[] mValues;

    static;

    private CommonSettingKey(int var3, String var4, CommonSettingValue[] var5);

    public static CommonSettingKey fromKey(String var0);

    public static CommonSettingValue fromValue(CommonSettingKey var0, String var1);

    public static String getValueFromProviderString(String var0, CommonSettingKey var1);

    public static CommonSettingKey valueOf(String var0);

    public static CommonSettingKey[] values();

    @Override
    public int getIconId();

    public String getKey();

    @Override
    public int getTextId();

    public String getTitle(Context var1);

    public int getTitleId();

    public CommonSettingValue[] getValues();

}

