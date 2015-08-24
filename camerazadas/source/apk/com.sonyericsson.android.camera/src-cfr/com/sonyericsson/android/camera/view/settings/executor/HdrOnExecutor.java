/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableToast;
import com.sonyericsson.cameracommon.setting.executor.SettingChangeExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

class HdrOnExecutor
extends SettingChangeExecutor<ParameterValue> {
    private final ExtendedActivity mActivity;

    public HdrOnExecutor(ExtendedActivity extendedActivity, SettingChangerInterface<ParameterValue> settingChangerInterface) {
        super(settingChangerInterface);
        this.mActivity = extendedActivity;
    }

    @Override
    public void onExecute(TypedSettingItem<ParameterValue> typedSettingItem) {
        ParameterValue parameterValue = this.mActivity.getParameterManager().get(typedSettingItem.getData().getParameterKey());
        super.onExecute(typedSettingItem);
        if (typedSettingItem.getData() != parameterValue) {
            this.mActivity.getMessagePopup().showRotatableToastMessage(2131296542, 1, RotatableToast.ToastPosition.BOTTOM);
        }
    }
}

