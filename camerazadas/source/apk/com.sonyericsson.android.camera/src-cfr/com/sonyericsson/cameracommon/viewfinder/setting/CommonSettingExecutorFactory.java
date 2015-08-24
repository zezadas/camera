/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.setting;

import android.content.Context;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.executor.TermOfUseSettingExecutor;
import com.sonyericsson.cameracommon.setting.executor.TouchBlockSettingExecutor;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.viewfinder.setting.CommonSettingChanger;
import com.sonyericsson.cameracommon.viewfinder.setting.SettingExecutorFactory;

public class CommonSettingExecutorFactory
extends SettingExecutorFactory<CommonSettingKey, CommonSettingValue> {
    private final Context mContext;
    private final SettingDialogController mSettingDialogController;

    public CommonSettingExecutorFactory(Context context, SettingDialogController settingDialogController, CommonSettingChanger commonSettingChanger) {
        super(context, settingDialogController, commonSettingChanger);
        this.mContext = context;
        this.mSettingDialogController = settingDialogController;
    }

    public SettingExecutorInterface<CommonSettingKey> getExecutor(CommonSettingKey commonSettingKey, SettingDialogItemFactory settingDialogItemFactory) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey[commonSettingKey.ordinal()]) {
            default: {
                return this.getOpenValueSelectDialogExecutor(commonSettingKey, settingDialogItemFactory);
            }
            case 1: {
                return new SettingExecutorInterface<CommonSettingKey>(){

                    @Override
                    public void onExecute(TypedSettingItem<CommonSettingKey> typedSettingItem) {
                        AutoUploadSettings.getInstance().startPluginListActivity(CommonSettingExecutorFactory.this.mContext);
                    }
                };
            }
            case 2: {
                return new TermOfUseSettingExecutor<CommonSettingKey>(this.mContext, this.mSettingDialogController);
            }
            case 3: 
        }
        return new TouchBlockSettingExecutor<CommonSettingKey>(this.mContext, this.mSettingDialogController);
    }

}

