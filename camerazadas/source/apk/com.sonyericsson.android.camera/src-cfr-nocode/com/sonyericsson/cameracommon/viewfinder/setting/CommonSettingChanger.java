/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.setting;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.viewfinder.setting.OnChangedCommonSettingListener;

/*
 * Exception performing whole class analysis.
 */
public class CommonSettingChanger
implements SettingChangerInterface<CommonSettingValue> {
    private final OnChangedCommonSettingListener mOnChangedListener;
    private final CommonSettings mSettings;

    public CommonSettingChanger(CommonSettings var1, OnChangedCommonSettingListener var2);

    @Override
    public void changeValue(TypedSettingItem<CommonSettingValue> var1);
}

