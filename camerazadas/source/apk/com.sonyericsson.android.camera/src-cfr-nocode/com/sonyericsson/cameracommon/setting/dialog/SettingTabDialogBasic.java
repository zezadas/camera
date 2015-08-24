/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.GridView;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.settingitem.OnItemSelectedListener;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingTabDialogBasic
extends SettingDialog {
    private static final String TAG;
    private SettingAdapter mAdapter;
    private GridView mGridView;
    private OnItemSelectedListener mItemSelectedListener;
    private int mNumberOfTabs;
    private final DataSetObserver mTabBodyAdapterObserver;
    private SettingTabs mTabs;

    static;

    public SettingTabDialogBasic(Context var1, AttributeSet var2);

    static /* synthetic */ void access$000(SettingTabDialogBasic var0);

    static /* synthetic */ SettingAdapter access$100(SettingTabDialogBasic var0);

    private int getPixel(int var1);

    private void registerOnItemSelectedListener();

    public SettingAdapter getAdapter();

    @Override
    public boolean getSelectedItemRect(Rect var1);

    public SettingTabs.Tab getSelectedTab();

    public int numberOfTabs();

    @Override
    protected void onFinishInflate();

    @Override
    public void setAdapter(SettingAdapter var1);

    public void setNumColumns(int var1);

    public void setNumberOfTabs(int var1);

    public void setOnSelectedTabListener(SettingTabs.OnTabSelectedListener var1);

    public void setSelectedTab(SettingTabs.Tab var1);

    @Override
    public void setSensorOrientation(int var1);

    public /* varargs */ void setTabs(SettingTabs.Tab ... var1);

}

