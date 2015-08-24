/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.util.LocalGoogleAnalyticsUtil;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.executor.SettingChangeExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.googleanalytics.parameters.CustomDimension;

class FacingChangeExecutor
extends SettingChangeExecutor<ParameterValue> {
    private final CameraActivity mCameraActivity;
    private final CapturingMode mCurrentMode;
    private SettingDialogStack mSettingDialogStack;

    public FacingChangeExecutor(SettingChangerInterface<ParameterValue> settingChangerInterface, CameraActivity cameraActivity, CapturingMode capturingMode, SettingDialogStack settingDialogStack) {
        super(settingChangerInterface);
        this.mCameraActivity = cameraActivity;
        this.mCurrentMode = capturingMode;
        this.mSettingDialogStack = settingDialogStack;
    }

    private void sendGoogleAnalyticsEvent(CapturingMode capturingMode) {
        LocalGoogleAnalyticsUtil.getInstance().sendEventSettings();
        GoogleAnalyticsUtil.getInstance().onPause(true);
        LocalGoogleAnalyticsUtil.getInstance().sendView(CustomDimension.GALaunchedBy.SAME_ACTIVITY, capturingMode, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onExecute(TypedSettingItem<ParameterValue> object) {
        super.onExecute(object);
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[this.mCurrentMode.ordinal()]) {
            default: {
                throw new IllegalArgumentException();
            }
            case 1: {
                if (HardwareCapability.getInstance().isSceneRecognitionSupported(1)) {
                    object = CapturingMode.SUPERIOR_FRONT;
                    break;
                }
                object = CapturingMode.FRONT_PHOTO;
                break;
            }
            case 2: 
            case 3: {
                object = CapturingMode.FRONT_PHOTO;
                break;
            }
            case 4: 
            case 5: 
            case 6: {
                CapturingMode capturingMode;
                object = capturingMode = this.mCameraActivity.getPreviousCapturingModeNotFront();
                if (capturingMode != CapturingMode.NORMAL) break;
                object = this.mCameraActivity.getPreviousManualMode();
            }
        }
        if (this.mCameraActivity.getContentView().isOpenSettingsDialog()) {
            this.mSettingDialogStack.closeDialogs();
        }
        this.sendGoogleAnalyticsEvent((CapturingMode)object);
        this.mCameraActivity.changeCapturingMode((CapturingMode)object);
    }

}

