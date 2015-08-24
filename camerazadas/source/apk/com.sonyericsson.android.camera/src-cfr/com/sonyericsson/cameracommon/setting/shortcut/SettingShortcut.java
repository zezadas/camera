/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.shortcut;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.settingitem.OnItemSelectedListener;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItemBuilder;
import com.sonyericsson.cameracommon.utility.RotationUtil;

public class SettingShortcut {
    private static final String TAG = SettingShortcut.class.getSimpleName();
    private final DataSetObserver mAdapterObserver;
    private final ViewGroup mContainer;
    private ViewGroup.OnHierarchyChangeListener mHierarchyChangeListener;
    private final int mIconSize;
    private OnItemSelectedListener mItemSelectedListener;
    private final ListView mItems;
    private float mRotation;

    /*
     * Enabled aggressive block sorting
     */
    public SettingShortcut(Context context, ViewGroup viewGroup, ListView listView) {
        this.mAdapterObserver = new DataSetObserver(){

            @Override
            public void onChanged() {
                SettingShortcut.this.registerOnItemSelectedListener();
            }

            @Override
            public void onInvalidated() {
                SettingShortcut.this.registerOnItemSelectedListener();
            }
        };
        this.mItemSelectedListener = new OnItemSelectedListener(){

            @Override
            public void onItemSelected(SettingItem settingItem) {
                SettingShortcut.this.setSelected(settingItem);
            }
        };
        this.mHierarchyChangeListener = new ViewGroup.OnHierarchyChangeListener(){

            @Override
            public void onChildViewAdded(View view, View view2) {
                view2.setRotation(SettingShortcut.this.mRotation);
            }

            @Override
            public void onChildViewRemoved(View view, View view2) {
            }
        };
        this.mIconSize = context.getResources().getDimensionPixelSize(R.dimen.shortcut_icon_background_width);
        this.mContainer = new FrameLayout(context){

            @Override
            protected void onMeasure(int n, int n2) {
                int n3 = View.MeasureSpec.getSize(n2);
                SettingShortcut.this.updateItemHeight(n3);
                super.onMeasure(n, n2);
            }
        };
        viewGroup.addView(this.mContainer);
        this.mContainer.getLayoutParams().width = -2;
        this.mContainer.getLayoutParams().height = -1;
        this.mItems = listView != null ? listView : new ListView(context);
        this.mItems.setEnabled(false);
        this.mItems.setClickable(false);
        this.mItems.setLongClickable(false);
        this.mItems.setFocusable(false);
        this.mItems.setFocusableInTouchMode(false);
        this.mItems.setScrollBarSize(0);
        this.mItems.setDividerHeight(0);
        this.mContainer.addView(this.mItems);
        this.mItems.getLayoutParams().width = this.mIconSize;
        this.mItems.getLayoutParams().height = -1;
        ((FrameLayout.LayoutParams)this.mItems.getLayoutParams()).gravity = 1;
        this.mItems.setOnHierarchyChangeListener(this.mHierarchyChangeListener);
    }

    private boolean computeShortcutIconRect(int n, int n2, Rect rect) {
        Rect rect2 = new Rect();
        if (!this.mItems.getGlobalVisibleRect(rect2)) {
            return false;
        }
        Rect rect3 = new Rect(0, 0, rect2.width(), rect2.height() / n2);
        rect3.offset(rect2.left, rect2.height() * n / n2);
        rect.set(rect3.centerX() - this.mIconSize / 2, rect3.centerY() - this.mIconSize / 2, rect3.centerX() + this.mIconSize / 2, rect3.centerY() + this.mIconSize / 2);
        return true;
    }

    private SettingItem getSelected() {
        SettingAdapter settingAdapter = (SettingAdapter)this.getAdapter();
        if (settingAdapter != null) {
            for (int i = 0; i < settingAdapter.getCount(); ++i) {
                SettingItem settingItem = (SettingItem)settingAdapter.getItem(i);
                if (!settingItem.isSelected()) continue;
                return settingItem;
            }
        }
        return null;
    }

    private void registerOnItemSelectedListener() {
        SettingAdapter settingAdapter = (SettingAdapter)this.getAdapter();
        if (settingAdapter != null) {
            for (int i = 0; i < settingAdapter.getCount(); ++i) {
                ((SettingItem)settingAdapter.getItem(i)).setOnSelectedListener(this.mItemSelectedListener);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setSelected(SettingItem settingItem) {
        SettingAdapter settingAdapter = (SettingAdapter)this.getAdapter();
        if (settingAdapter != null) {
            for (int i = 0; i < settingAdapter.getCount(); ++i) {
                SettingItem settingItem2 = (SettingItem)settingAdapter.getItem(i);
                if (settingItem2.compareData(settingItem)) {
                    settingItem2.setSelected(true);
                    continue;
                }
                settingItem2.setSelected(false);
            }
            settingAdapter.notifyDataSetChanged();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateItemHeight(int n) {
        SettingAdapter settingAdapter;
        if (n <= 0 || (settingAdapter = (SettingAdapter)this.getAdapter()) == null || settingAdapter.getCount() <= 0) {
            return;
        }
        settingAdapter.setItemHeight(n / settingAdapter.getCount());
    }

    public void clearSelected() {
        this.setSelected(null);
    }

    public Adapter getAdapter() {
        return this.mItems.getAdapter();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean getSelectedItemIconVisibleRect(Rect rect) {
        SettingAdapter settingAdapter = (SettingAdapter)this.getAdapter();
        if (settingAdapter == null) {
            return false;
        }
        for (int i = 0; i < settingAdapter.getCount(); ++i) {
            if (!((SettingItem)settingAdapter.getItem(i)).isSelected()) continue;
            return this.computeShortcutIconRect(i, settingAdapter.getCount(), rect);
        }
        return false;
    }

    public void hide() {
        this.mItems.setVisibility(4);
    }

    public boolean isShown() {
        return this.mItems.isShown();
    }

    public void setAdapter(SettingAdapter settingAdapter) {
        this.updateItemHeight(this.mContainer.getMeasuredHeight());
        SettingItem settingItem = this.getSelected();
        this.mItems.setAdapter(settingAdapter);
        if (settingItem != null) {
            this.setSelected(settingItem);
        }
        settingAdapter.registerDataSetObserver(this.mAdapterObserver);
        this.registerOnItemSelectedListener();
    }

    public <T> void setSelected(T t) {
        this.setSelected(SettingItemBuilder.build(t).commit());
    }

    public void setSensorOrientation(int n) {
        this.mRotation = RotationUtil.getAngle(n);
        for (int i = 0; i < this.mItems.getChildCount(); ++i) {
            this.mItems.getChildAt(i).setRotation(RotationUtil.getAngle(n));
        }
    }

    public void show() {
        this.mItems.setVisibility(0);
    }

    public void updateAdapter(SettingAdapter settingAdapter) {
        if (this.getAdapter() == null) {
            this.setAdapter(settingAdapter);
            return;
        }
        SettingItem settingItem = this.getSelected();
        SettingAdapter settingAdapter2 = (SettingAdapter)this.getAdapter();
        settingAdapter2.clear();
        for (int i = 0; i < settingAdapter.getCount(); ++i) {
            settingAdapter2.add(settingAdapter.getItem(i));
        }
        if (settingItem != null) {
            this.setSelected(settingItem);
        }
        this.updateItemHeight(this.mContainer.getMeasuredHeight());
        this.registerOnItemSelectedListener();
    }

}

