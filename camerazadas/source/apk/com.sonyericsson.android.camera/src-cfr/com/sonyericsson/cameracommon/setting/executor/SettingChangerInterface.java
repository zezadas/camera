/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.executor;

import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

public interface SettingChangerInterface<T> {
    public void changeValue(TypedSettingItem<T> var1);
}

