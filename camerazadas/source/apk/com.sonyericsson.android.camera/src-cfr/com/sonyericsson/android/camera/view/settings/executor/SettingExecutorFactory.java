/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import android.content.Context;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.android.camera.view.settings.SettingController;
import com.sonyericsson.android.camera.view.settings.SettingGroup;
import com.sonyericsson.android.camera.view.settings.executor.AutoUploadOnExecutor;
import com.sonyericsson.android.camera.view.settings.executor.CloseExecutor;
import com.sonyericsson.android.camera.view.settings.executor.FaceIdentifyOnExecutor;
import com.sonyericsson.android.camera.view.settings.executor.FacingChangeExecutor;
import com.sonyericsson.android.camera.view.settings.executor.GeotagOnExecutor;
import com.sonyericsson.android.camera.view.settings.executor.HdrOnExecutor;
import com.sonyericsson.android.camera.view.settings.executor.ParameterChanger;
import com.sonyericsson.android.camera.view.settings.executor.ShutterSoundOnExecutor;
import com.sonyericsson.android.camera.view.settings.executor.TouchBlockOnExecutor;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.executor.SettingChangeExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

public class SettingExecutorFactory {
    public static GeotagOnExecutor createGeotagChangeExecutor(Context context, ParameterManager object, SettingController settingController) {
        object = new ParameterChanger((ParameterManager)object, settingController);
        return new GeotagOnExecutor((ExtendedActivity)context, (SettingChangerInterface<ParameterValue>)object, settingController);
    }

    public static SettingExecutorInterface<ParameterKey> createSelectMenuItemExecutor(Context context, final ParameterKey parameterKey, final SettingGroup settingGroup, final SettingController settingController) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[parameterKey.ordinal()]) {
            default: {
                return new SettingExecutorInterface<ParameterKey>(){

                    @Override
                    public void onExecute(TypedSettingItem<ParameterKey> typedSettingItem) {
                        settingController.getSettingDialogStack().openSecondLayerDialog(settingController.generateParameterItemAdapter(typedSettingItem.getData(), settingGroup), (Object)parameterKey);
                    }
                };
            }
            case 8: {
                return new AutoUploadOnExecutor(context);
            }
            case 9: 
        }
        return new TouchBlockOnExecutor(context, settingController);
    }

    public static SettingExecutorInterface<SettingGroup> createSelectMenuShortcutExecutor(final SettingController settingController) {
        return new SettingExecutorInterface<SettingGroup>(){

            @Override
            public void onExecute(TypedSettingItem<SettingGroup> typedSettingItem) {
                settingController.openMenuDialog(typedSettingItem.getData());
            }
        };
    }

    public static SettingExecutorInterface<ParameterKey> createSelectShortcutExecutor(final SettingController settingController, ParameterKey parameterKey) {
        return new SettingExecutorInterface<ParameterKey>(){

            @Override
            public void onExecute(TypedSettingItem<ParameterKey> typedSettingItem) {
                settingController.openShortcutDialog(typedSettingItem.getData());
            }
        };
    }

    public static SettingExecutorInterface<SettingGroup> createSelectShortcutExecutor(final SettingController settingController, SettingGroup settingGroup) {
        if (SettingGroup.CONTROL.equals((Object)settingGroup)) {
            return new SettingExecutorInterface<SettingGroup>(){

                @Override
                public void onExecute(TypedSettingItem<SettingGroup> typedSettingItem) {
                    settingController.openControlDialog(typedSettingItem.getData());
                }
            };
        }
        return new SettingExecutorInterface<SettingGroup>(){

            @Override
            public void onExecute(TypedSettingItem<SettingGroup> typedSettingItem) {
                settingController.openShortcutDialog(typedSettingItem.getData());
            }
        };
    }

    public static SettingExecutorInterface<ParameterValue> createSettingChangeExecutor(Context context, ParameterKey parameterKey, ParameterValue parameterValue, ParameterManager parameterManager, SettingController settingController) {
        return SettingExecutorFactory.createSettingChangeExecutor(context, parameterKey, parameterValue, parameterManager, settingController, false);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static SettingExecutorInterface<ParameterValue> createSettingChangeExecutor(Context var0, ParameterKey var1_1, ParameterValue var2_2, ParameterManager var3_3, SettingController var4_4, boolean var5_5) {
        var8_6 = new ParameterChanger(var3_3, var4_4);
        var6_8 = var7_7 = new SettingChangeExecutor<T>(var8_6);
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[var1_1.ordinal()]) {
            default: {
                var6_9 = var7_7;
                break;
            }
            case 1: {
                var6_11 = var7_7;
                if ((Geotag)var2_2 != Geotag.OFF) {
                    var6_12 = new GeotagOnExecutor((ExtendedActivity)var0 /* !! */ , var8_6, var4_4);
                    break;
                } else {
                    ** GOTO lbl31
                }
            }
            case 3: {
                var6_13 = var7_7;
                if ((ShutterSound)var2_2 != ShutterSound.OFF) {
                    var6_14 = new ShutterSoundOnExecutor((ExtendedActivity)var0 /* !! */ , var3_3.getParameters().capturingMode.getType(), var8_6);
                    break;
                } else {
                    ** GOTO lbl31
                }
            }
            case 4: {
                var6_15 = new FacingChangeExecutor(var8_6, (CameraActivity)var0 /* !! */ , var3_3.getParameters().capturingMode, var4_4.getSettingDialogStack());
                break;
            }
            case 5: {
                var6_16 = var7_7;
                if ((FaceIdentify)var2_2 != FaceIdentify.OFF) {
                    var6_17 = new FaceIdentifyOnExecutor((ExtendedActivity)var0 /* !! */ , var8_6);
                    break;
                } else {
                    ** GOTO lbl31
                }
            }
            case 6: {
                var6_18 = var7_7;
                if ((Hdr)var2_2 == Hdr.HDR_ON) {
                    var6_19 = var7_7;
                    if (!HardwareCapability.getInstance().isStillHdrVer3(var3_3.getParameters().capturingMode.getCameraId())) {
                        var6_20 = new HdrOnExecutor((ExtendedActivity)var0 /* !! */ , var8_6);
                    }
                }
            }
lbl31: // 12 sources:
            case 2: {
                break;
            }
            case 7: {
                var6_21 = var7_7;
                if ((Scene)var2_2 != Scene.BACKLIGHT_HDR) break;
                var6_22 = var7_7;
                if (HardwareCapability.getInstance().isStillHdrVer3(var3_3.getParameters().capturingMode.getCameraId())) break;
                var6_23 = new HdrOnExecutor((ExtendedActivity)var0 /* !! */ , var8_6);
            }
        }
        var0 /* !! */  = var6_10;
        if (var5_5 == false) return var0 /* !! */ ;
        return new CloseExecutor<T>(var4_4, var6_10);
    }

}

