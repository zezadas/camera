/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.widget.Switch;

/*
 * Exception performing whole class analysis.
 */
public class SettingCategorySwitch
extends SettingDialogItem {
    private final ViewHolder mHolder;
    private final CompoundButton.OnCheckedChangeListener mOnCheckedChangeListener;

    public SettingCategorySwitch(Context var1, SettingItem var2);

    static /* synthetic */ SettingItem access$000(SettingCategorySwitch var0);

    static /* synthetic */ SettingItem access$100(SettingCategorySwitch var0);

    private SettingItem getOffItem();

    private SettingItem getOnItem();

    @Override
    public View getView();

    @Override
    public void update(ViewGroup var1, SettingAdapter.ItemLayoutParams var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class ViewHolder {
        View mContainer;
        View mDivider;
        Switch mSwitch;

        ViewHolder();
    }

}

