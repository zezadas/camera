/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.DrawableStateChanger;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

public abstract class SettingDialogItem {
    private SettingItem mItem;

    public SettingDialogItem(SettingItem settingItem) {
        this.mItem = settingItem;
    }

    protected DrawableStateChanger changeDrawableState(SettingAdapter.ItemLayoutParams itemLayoutParams) {
        return new DrawableStateChanger(itemLayoutParams);
    }

    public SettingItem getItem() {
        return this.mItem;
    }

    public abstract View getView();

    public void select(SettingItem settingItem) {
        settingItem.select();
    }

    public void setItem(SettingItem settingItem) {
        this.mItem = settingItem;
    }

    public void setUiOrientation(int n) {
    }

    public abstract void update(ViewGroup var1, SettingAdapter.ItemLayoutParams var2);
}

