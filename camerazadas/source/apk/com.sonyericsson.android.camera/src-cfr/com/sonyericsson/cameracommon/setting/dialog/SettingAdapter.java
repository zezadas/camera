/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.GridView;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItemBuilder;
import java.util.ArrayList;
import java.util.List;

public class SettingAdapter
extends ArrayAdapter<SettingItem> {
    public static final int INVALID_VALUE = -1;
    private static final String TAG = SettingAdapter.class.getSimpleName();
    private final SettingDialogItemFactory mDialogItemFactory;
    private int mItemHeight;
    private boolean mSetRoundBackgroundTop;

    public SettingAdapter(Context context) {
        this(context, new ArrayList<SettingItem>(), new SettingDialogItemFactory());
    }

    public SettingAdapter(Context context, SettingDialogItemFactory settingDialogItemFactory) {
        this(context, new ArrayList<SettingItem>(), settingDialogItemFactory);
    }

    public SettingAdapter(Context context, List<SettingItem> list, SettingDialogItemFactory settingDialogItemFactory) {
        super(context, 0, list);
        this.mDialogItemFactory = settingDialogItemFactory;
        this.mSetRoundBackgroundTop = false;
        this.mItemHeight = -1;
    }

    /*
     * Enabled aggressive block sorting
     */
    private ItemLayoutParams generateItemLayoutParams(ViewGroup viewGroup, int n) {
        boolean bl = true;
        int n2 = 1;
        if (viewGroup instanceof GridView) {
            n2 = ((GridView)viewGroup).getNumColumns();
        }
        int n3 = this.getCount() / n2;
        int n4 = n / n2;
        int n5 = this.mItemHeight;
        boolean bl2 = this.mSetRoundBackgroundTop && n4 == 0;
        boolean bl3 = n4 == n3 - 1;
        boolean bl4 = (n%=n2) == 0;
        if (n == n2 - 1) {
            return new ItemLayoutParams(n5, bl2, bl3, bl4, bl);
        }
        bl = false;
        return new ItemLayoutParams(n5, bl2, bl3, bl4, bl);
    }

    @Override
    public int getItemViewType(int n) {
        Object t = this.getItem(n);
        if (t instanceof SettingItem) {
            return ((SettingItem)t).getDialogItemType();
        }
        return super.getItemViewType(n);
    }

    public SettingItem getSelected() {
        for (int i = 0; i < this.getCount(); ++i) {
            SettingItem settingItem = (SettingItem)this.getItem(i);
            if (!settingItem.isSelected()) continue;
            return settingItem;
        }
        return null;
    }

    public int getSelectedPosition() {
        for (int i = 0; i < this.getCount(); ++i) {
            if (!((SettingItem)this.getItem(i)).isSelected()) continue;
            return i;
        }
        return 0;
    }

    @Override
    public View getView(int n, View object, ViewGroup viewGroup) {
        SettingItem settingItem = (SettingItem)this.getItem(n);
        ItemLayoutParams itemLayoutParams = this.generateItemLayoutParams(viewGroup, n);
        if (object != null && object.getTag() instanceof SettingDialogItem) {
            if ((object = (SettingDialogItem)object.getTag()).getItem() != settingItem) {
                object.setItem(settingItem);
            }
            object.update(viewGroup, itemLayoutParams);
            return object.getView();
        }
        object = this.mDialogItemFactory.create(settingItem, viewGroup);
        object.update(viewGroup, itemLayoutParams);
        object.getView().setTag(object);
        return object.getView();
    }

    @Override
    public int getViewTypeCount() {
        return this.mDialogItemFactory.getDialogItemTypeCount();
    }

    /*
     * Enabled aggressive block sorting
     */
    public <T> void selectByData(T object) {
        object = SettingItemBuilder.build(object).commit();
        for (int i = 0; i < this.getCount(); ++i) {
            SettingItem settingItem = (SettingItem)this.getItem(i);
            if (!settingItem.isSelectable()) continue;
            if (object.compareData(settingItem)) {
                settingItem.setSelected(true);
                continue;
            }
            settingItem.setSelected(false);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void selectByItem(SettingItem settingItem) {
        if (settingItem == null) {
            return;
        }
        for (int i = 0; i < this.getCount(); ++i) {
            SettingItem settingItem2 = (SettingItem)this.getItem(i);
            if (settingItem.compareData(settingItem2)) {
                settingItem2.setSelected(true);
                continue;
            }
            settingItem2.setSelected(false);
        }
    }

    public void setItemHeight(int n) {
        if (this.mItemHeight != n) {
            this.mItemHeight = n;
            this.notifyDataSetChanged();
        }
    }

    public void setRoundTopItemBackground(boolean bl) {
        if (this.mSetRoundBackgroundTop != bl) {
            this.mSetRoundBackgroundTop = bl;
            this.notifyDataSetChanged();
        }
    }

    public static class ItemLayoutParams {
        public final boolean bottom;
        public final int height;
        public final boolean left;
        public final boolean right;
        public final boolean top;

        public ItemLayoutParams(int n, boolean bl, boolean bl2, boolean bl3, boolean bl4) {
            this.height = n;
            this.top = bl;
            this.bottom = bl2;
            this.left = bl3;
            this.right = bl4;
        }
    }

}

