/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.setting;

import android.content.Context;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.viewfinder.setting.CommonSettingChanger;
import com.sonyericsson.cameracommon.viewfinder.setting.SettingExecutorFactory;

/*
 * Exception performing whole class analysis.
 */
public class CommonSettingExecutorFactory
extends SettingExecutorFactory<CommonSettingKey, CommonSettingValue> {
    private final Context mContext;
    private final SettingDialogController mSettingDialogController;

    public CommonSettingExecutorFactory(Context var1, SettingDialogController var2, CommonSettingChanger var3);

    static /* synthetic */ Context access$000(CommonSettingExecutorFactory var0);

    public SettingExecutorInterface<CommonSettingKey> getExecutor(CommonSettingKey var1, SettingDialogItemFactory var2);

}

