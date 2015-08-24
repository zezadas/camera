/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.view.settings.SettingController;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/*
 * Exception performing whole class analysis.
 */
class TouchBlockOnExecutor
implements SettingExecutorInterface<ParameterKey> {
    private final Context mContext;
    private final SettingController mSettingController;

    public TouchBlockOnExecutor(Context var1, SettingController var2);

    @Override
    public void onExecute(TypedSettingItem<ParameterKey> var1);
}

