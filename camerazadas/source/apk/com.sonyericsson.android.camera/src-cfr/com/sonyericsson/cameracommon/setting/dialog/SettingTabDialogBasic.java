/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.OnItemSelectedListener;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

public class SettingTabDialogBasic
extends SettingDialog {
    private static final String TAG = SettingTabDialogBasic.class.getSimpleName();
    private SettingAdapter mAdapter;
    private GridView mGridView;
    private OnItemSelectedListener mItemSelectedListener;
    private int mNumberOfTabs = 0;
    private final DataSetObserver mTabBodyAdapterObserver;
    private SettingTabs mTabs;

    public SettingTabDialogBasic(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTabBodyAdapterObserver = new DataSetObserver(){

            @Override
            public void onChanged() {
                SettingTabDialogBasic.this.registerOnItemSelectedListener();
            }

            @Override
            public void onInvalidated() {
                SettingTabDialogBasic.this.registerOnItemSelectedListener();
            }
        };
        this.mItemSelectedListener = new OnItemSelectedListener(){

            @Override
            public void onItemSelected(SettingItem settingItem) {
                for (int i = 0; i < SettingTabDialogBasic.this.mAdapter.getCount(); ++i) {
                    SettingItem settingItem2 = (SettingItem)SettingTabDialogBasic.this.mAdapter.getItem(i);
                    if (settingItem2 == settingItem) continue;
                    settingItem2.setSelected(false);
                }
            }
        };
    }

    private int getPixel(int n) {
        return this.getResources().getDimensionPixelSize(n);
    }

    private void registerOnItemSelectedListener() {
        for (int i = 0; i < this.mAdapter.getCount(); ++i) {
            ((SettingItem)this.mAdapter.getItem(i)).setOnSelectedListener(this.mItemSelectedListener);
        }
    }

    public SettingAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override
    public boolean getSelectedItemRect(Rect rect) {
        for (int i = 0; i < this.mGridView.getChildCount(); ++i) {
            View view = this.mGridView.getChildAt(i);
            if (!(view.getTag() instanceof SettingDialogItem) || !((SettingDialogItem)view.getTag()).getItem().isSelected()) continue;
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            rect.offset(this.mGridView.getLeft(), this.mGridView.getTop());
            return true;
        }
        return false;
    }

    public SettingTabs.Tab getSelectedTab() {
        return this.mTabs.getSelected();
    }

    public int numberOfTabs() {
        return this.mNumberOfTabs;
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mGridView = (GridView)this.findViewById(R.id.setting_gridview);
        int n = this.getPixel(R.dimen.setting_dialog_scroll_fading_edge_length);
        this.mGridView.setFadingEdgeLength(n);
        this.mGridView.setVerticalFadingEdgeEnabled(true);
        this.mGridView.setChoiceMode(1);
        this.mTabs = (SettingTabs)this.findViewById(R.id.tabs);
    }

    @Override
    public void setAdapter(SettingAdapter settingAdapter) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.mTabBodyAdapterObserver);
        }
        this.mAdapter = settingAdapter;
        this.mAdapter.registerDataSetObserver(this.mTabBodyAdapterObserver);
        this.registerOnItemSelectedListener();
        this.mGridView.setAdapter(this.mAdapter);
        if (settingAdapter.getCount() > 0) {
            this.mGridView.setSelection(settingAdapter.getSelectedPosition());
        }
        this.invalidate();
    }

    public void setNumColumns(int n) {
        this.mGridView.setNumColumns(n);
    }

    public void setNumberOfTabs(int n) {
        this.mNumberOfTabs = n;
    }

    public void setOnSelectedTabListener(SettingTabs.OnTabSelectedListener onTabSelectedListener) {
        this.mTabs.setOnSelectedListener(onTabSelectedListener);
    }

    public void setSelectedTab(SettingTabs.Tab tab) {
        this.mTabs.setSelected(tab);
    }

    @Override
    public void setSensorOrientation(int n) {
        this.requestLayout();
        super.setSensorOrientation(n);
        this.mGridView.performAccessibilityAction(64, null);
    }

    public /* varargs */ void setTabs(SettingTabs.Tab ... arrtab) {
        this.mTabs.setTabs(arrtab);
    }

}

