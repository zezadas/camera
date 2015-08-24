/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.executor;

import android.content.Context;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/*
 * Exception performing whole class analysis.
 */
public class TouchBlockSettingExecutor<CommonSettingKey>
implements SettingExecutorInterface<CommonSettingKey> {
    private final Context mContext;
    private final SettingDialogController mSettingDialogController;

    public TouchBlockSettingExecutor(Context var1, SettingDialogController var2);

    @Override
    public void onExecute(TypedSettingItem<CommonSettingKey> var1);
}

