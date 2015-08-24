/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.executor.SettingChangeExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/*
 * Exception performing whole class analysis.
 */
class FacingChangeExecutor
extends SettingChangeExecutor<ParameterValue> {
    private final CameraActivity mCameraActivity;
    private final CapturingMode mCurrentMode;
    private SettingDialogStack mSettingDialogStack;

    public FacingChangeExecutor(SettingChangerInterface<ParameterValue> var1, CameraActivity var2, CapturingMode var3, SettingDialogStack var4);

    private void sendGoogleAnalyticsEvent(CapturingMode var1);

    @Override
    public void onExecute(TypedSettingItem<ParameterValue> var1);

}

