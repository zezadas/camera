/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.executor;

import android.content.Context;
import com.sonyericsson.cameracommon.launcher.ApplicationLauncher;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;

public class TouchBlockSettingExecutor<CommonSettingKey>
implements SettingExecutorInterface<CommonSettingKey> {
    private final Context mContext;
    private final SettingDialogController mSettingDialogController;

    public TouchBlockSettingExecutor(Context context, SettingDialogController settingDialogController) {
        this.mContext = context;
        this.mSettingDialogController = settingDialogController;
    }

    @Override
    public void onExecute(TypedSettingItem<CommonSettingKey> typedSettingItem) {
        ApplicationLauncher.startCameraTouchBlock(this.mContext);
        this.mSettingDialogController.closeDialogs(true);
        GoogleAnalyticsUtil.getInstance().sendSettingsCommon(typedSettingItem.getData().toString());
    }
}

