/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.executor;

import android.content.Context;
import android.content.DialogInterface;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/*
 * Exception performing whole class analysis.
 */
public class TermOfUseSettingExecutor<CommonSettingKey>
implements SettingExecutorInterface<CommonSettingKey> {
    private final Context mContext;
    private final SettingDialogController mSettingDialogController;

    public TermOfUseSettingExecutor(Context var1, SettingDialogController var2);

    static /* synthetic */ SettingDialogController access$000(TermOfUseSettingExecutor var0);

    private void showTermsAndConditions();

    @Override
    public void onExecute(TypedSettingItem<CommonSettingKey> var1);

}

