/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.setting;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.viewfinder.setting.OnChangedCommonSettingListener;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;

public class CommonSettingChanger
implements SettingChangerInterface<CommonSettingValue> {
    private final OnChangedCommonSettingListener mOnChangedListener;
    private final CommonSettings mSettings;

    public CommonSettingChanger(CommonSettings commonSettings, OnChangedCommonSettingListener onChangedCommonSettingListener) {
        this.mSettings = commonSettings;
        this.mOnChangedListener = onChangedCommonSettingListener;
    }

    @Override
    public void changeValue(TypedSettingItem<CommonSettingValue> typedSettingItem) {
        this.mSettings.set(typedSettingItem.getData());
        this.mOnChangedListener.onSettingChanged(typedSettingItem.getData());
        GoogleAnalyticsUtil.getInstance().sendSettingsCommon(typedSettingItem.getData());
    }
}

