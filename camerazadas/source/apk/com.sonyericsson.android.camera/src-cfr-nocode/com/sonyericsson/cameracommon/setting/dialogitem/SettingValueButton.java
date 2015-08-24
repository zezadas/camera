/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/*
 * Exception performing whole class analysis.
 */
public class SettingValueButton
extends SettingDialogItem {
    private final ViewHolder mHolder;
    private final View.OnClickListener mOnClickListener;

    public SettingValueButton(Context var1, SettingItem var2);

    @Override
    public View getView();

    @Override
    public void update(ViewGroup var1, SettingAdapter.ItemLayoutParams var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ViewHolder {
        View mBackground;
        View mContainer;
        View mDivider;
        TextView mText;

        private ViewHolder();

        /* synthetic */ ViewHolder( var1);
    }

}

