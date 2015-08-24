/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.shortcut;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.FrameLayout;
import android.widget.ListView;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.settingitem.OnItemSelectedListener;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingShortcut {
    private static final String TAG;
    private final DataSetObserver mAdapterObserver;
    private final ViewGroup mContainer;
    private ViewGroup.OnHierarchyChangeListener mHierarchyChangeListener;
    private final int mIconSize;
    private OnItemSelectedListener mItemSelectedListener;
    private final ListView mItems;
    private float mRotation;

    static;

    public SettingShortcut(Context var1, ViewGroup var2, ListView var3);

    static /* synthetic */ void access$000(SettingShortcut var0, int var1);

    static /* synthetic */ void access$100(SettingShortcut var0);

    static /* synthetic */ void access$200(SettingShortcut var0, SettingItem var1);

    static /* synthetic */ float access$300(SettingShortcut var0);

    private boolean computeShortcutIconRect(int var1, int var2, Rect var3);

    private SettingItem getSelected();

    private void registerOnItemSelectedListener();

    private void setSelected(SettingItem var1);

    private void updateItemHeight(int var1);

    public void clearSelected();

    public Adapter getAdapter();

    public boolean getSelectedItemIconVisibleRect(Rect var1);

    public void hide();

    public boolean isShown();

    public void setAdapter(SettingAdapter var1);

    public <T> void setSelected(T var1);

    public void setSensorOrientation(int var1);

    public void show();

    public void updateAdapter(SettingAdapter var1);

}

