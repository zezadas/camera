/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.executor;

import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

public interface SettingExecutorInterface<T> {
    public void onExecute(TypedSettingItem<T> var1);
}

