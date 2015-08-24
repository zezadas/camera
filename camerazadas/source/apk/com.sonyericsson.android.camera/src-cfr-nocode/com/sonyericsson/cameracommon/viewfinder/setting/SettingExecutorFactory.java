/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.setting;

import android.content.Context;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/*
 * Exception performing whole class analysis.
 */
public class SettingExecutorFactory<Key, Value> {
    private final Context mContext;
    private final SettingChangerInterface<Value> mSettingChanger;
    private final SettingDialogController mSettingDialogController;

    public SettingExecutorFactory(Context var1, SettingDialogController var2, SettingChangerInterface<Value> var3);

    static /* synthetic */ SettingAdapter access$000(SettingExecutorFactory var0, SettingItem var1, SettingDialogItemFactory var2);

    static /* synthetic */ SettingDialogController access$100(SettingExecutorFactory var0);

    private SettingAdapter generateChildrenAdapter(SettingItem var1, SettingDialogItemFactory var2);

    public SettingExecutorInterface<Value> getChangeValueExecutor(int var1);

    public SettingExecutorInterface<Key> getOpenValueSelectDialogExecutor(Key var1, SettingDialogItemFactory var2);

}

