/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.setting;

import android.content.Context;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.viewfinder.setting.CommonSettingExecutorFactory;

/*
 * Exception performing whole class analysis.
 */
public class CommonSettingItemResolver {
    private final Context mContext;
    private final SettingDialogItemFactory mDialogItemFactory;
    private final CommonSettingExecutorFactory mExecutorFactory;
    private final CommonSettingKey[] mItems;
    private final CommonSettings mSettings;

    public CommonSettingItemResolver(Context var1, CommonSettings var2, CommonSettingExecutorFactory var3, CommonSettingKey[] var4);

    private int getDialogItemType(CommonSettingKey var1);

    private SettingItem getSettingItem(CommonSettingValue var1, SettingExecutorInterface<CommonSettingValue> var2);

    private boolean isTouchBlockSupported();

    private boolean isVisible(CommonSettingKey var1);

    public SettingAdapter generateItemAdapter();

    public SettingAdapter generateItemAdapter(CommonSettingKey var1);

}

