/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingAdapter
extends ArrayAdapter<SettingItem> {
    public static final int INVALID_VALUE = -1;
    private static final String TAG;
    private final SettingDialogItemFactory mDialogItemFactory;
    private int mItemHeight;
    private boolean mSetRoundBackgroundTop;

    static;

    public SettingAdapter(Context var1);

    public SettingAdapter(Context var1, SettingDialogItemFactory var2);

    public SettingAdapter(Context var1, List<SettingItem> var2, SettingDialogItemFactory var3);

    private ItemLayoutParams generateItemLayoutParams(ViewGroup var1, int var2);

    @Override
    public int getItemViewType(int var1);

    public SettingItem getSelected();

    public int getSelectedPosition();

    @Override
    public View getView(int var1, View var2, ViewGroup var3);

    @Override
    public int getViewTypeCount();

    public <T> void selectByData(T var1);

    public void selectByItem(SettingItem var1);

    public void setItemHeight(int var1);

    public void setRoundTopItemBackground(boolean var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class ItemLayoutParams {
        public final boolean bottom;
        public final int height;
        public final boolean left;
        public final boolean right;
        public final boolean top;

        public ItemLayoutParams(int var1, boolean var2, boolean var3, boolean var4, boolean var5);
    }

}

