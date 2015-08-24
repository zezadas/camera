/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.DrawableStateChanger;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/*
 * Exception performing whole class analysis.
 */
public abstract class SettingDialogItem {
    private SettingItem mItem;

    public SettingDialogItem(SettingItem var1);

    protected DrawableStateChanger changeDrawableState(SettingAdapter.ItemLayoutParams var1);

    public SettingItem getItem();

    public abstract View getView();

    public void select(SettingItem var1);

    public void setItem(SettingItem var1);

    public void setUiOrientation(int var1);

    public abstract void update(ViewGroup var1, SettingAdapter.ItemLayoutParams var2);
}

