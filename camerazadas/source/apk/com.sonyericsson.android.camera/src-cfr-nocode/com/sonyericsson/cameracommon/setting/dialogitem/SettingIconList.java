/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingIconList
extends SettingDialogItem {
    private static final String TAG;
    private final ViewHolder mHolder;

    static;

    public SettingIconList(Context var1, SettingItem var2);

    static /* synthetic */ void access$100(SettingIconList var0, SettingItem var1);

    private ImageView createIcon(SettingItem var1);

    private void updateSelected(SettingItem var1);

    @Override
    public View getView();

    @Override
    public void setUiOrientation(int var1);

    @Override
    public void update(ViewGroup var1, SettingAdapter.ItemLayoutParams var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ViewHolder {
        ViewGroup mContainer;
        LinearLayout mList;

        private ViewHolder();

        /* synthetic */ ViewHolder( var1);
    }

}

