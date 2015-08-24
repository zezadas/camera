/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.executor;

import android.content.Context;
import android.content.DialogInterface;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;

public class TermOfUseSettingExecutor<CommonSettingKey>
implements SettingExecutorInterface<CommonSettingKey> {
    private final Context mContext;
    private final SettingDialogController mSettingDialogController;

    public TermOfUseSettingExecutor(Context context, SettingDialogController settingDialogController) {
        this.mContext = context;
        this.mSettingDialogController = settingDialogController;
    }

    private void showTermsAndConditions() {
        BaseActivity baseActivity = (BaseActivity)this.mContext;
        baseActivity.getMessagePopup().showTermsAndConditions(baseActivity, new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialogInterface, int n) {
                TermOfUseSettingExecutor.this.mSettingDialogController.closeDialogs(true);
            }
        }, new DialogInterface.OnCancelListener(){

            @Override
            public void onCancel(DialogInterface dialogInterface) {
                TermOfUseSettingExecutor.this.mSettingDialogController.closeDialogs(true);
            }
        });
    }

    @Override
    public void onExecute(TypedSettingItem<CommonSettingKey> typedSettingItem) {
        this.showTermsAndConditions();
        GoogleAnalyticsUtil.getInstance().sendSettingsCommon(typedSettingItem.getData().toString());
    }

}

