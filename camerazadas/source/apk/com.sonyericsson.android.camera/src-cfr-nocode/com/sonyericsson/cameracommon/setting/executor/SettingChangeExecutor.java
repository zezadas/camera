/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.executor;

import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/*
 * Exception performing whole class analysis.
 */
public class SettingChangeExecutor<T>
implements SettingExecutorInterface<T> {
    private final SettingChangerInterface<T> mSettingChanger;

    public SettingChangeExecutor(SettingChangerInterface<T> var1);

    @Override
    public void onExecute(TypedSettingItem<T> var1);
}

