/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.view.settings.SettingController;
import com.sonyericsson.android.camera.view.settings.SettingGroup;
import com.sonyericsson.android.camera.view.settings.executor.GeotagOnExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/*
 * Exception performing whole class analysis ignored.
 */
public class SettingExecutorFactory {
    public SettingExecutorFactory();

    public static GeotagOnExecutor createGeotagChangeExecutor(Context var0, ParameterManager var1, SettingController var2);

    public static SettingExecutorInterface<ParameterKey> createSelectMenuItemExecutor(Context var0, ParameterKey var1, SettingGroup var2, SettingController var3);

    public static SettingExecutorInterface<SettingGroup> createSelectMenuShortcutExecutor(SettingController var0);

    public static SettingExecutorInterface<ParameterKey> createSelectShortcutExecutor(SettingController var0, ParameterKey var1);

    public static SettingExecutorInterface<SettingGroup> createSelectShortcutExecutor(SettingController var0, SettingGroup var1);

    public static SettingExecutorInterface<ParameterValue> createSettingChangeExecutor(Context var0, ParameterKey var1, ParameterValue var2, ParameterManager var3, SettingController var4);

    public static SettingExecutorInterface<ParameterValue> createSettingChangeExecutor(Context var0, ParameterKey var1, ParameterValue var2, ParameterManager var3, SettingController var4, boolean var5);

}

