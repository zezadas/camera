/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

class AutoUploadOnExecutor
implements SettingExecutorInterface<ParameterKey> {
    private final Context mContext;

    public AutoUploadOnExecutor(Context context) {
        this.mContext = context;
    }

    @Override
    public void onExecute(TypedSettingItem<ParameterKey> typedSettingItem) {
        AutoUploadSettings.getInstance().startPluginListActivity(this.mContext);
    }
}

