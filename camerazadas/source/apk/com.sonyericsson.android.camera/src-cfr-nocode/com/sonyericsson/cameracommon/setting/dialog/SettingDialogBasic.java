/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasicParams;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingDialogBasic
extends SettingDialog {
    private static final String TAG;
    private final int ITEM_DIVIDER_HEIGHT;
    private final int TITLE_HEIGHT;
    protected GridView mGridView;
    private SettingDialogBasicParams mParams;
    private View mSelectedView;

    static;

    public SettingDialogBasic(Context var1, AttributeSet var2);

    static /* synthetic */ View access$002(SettingDialogBasic var0, View var1);

    private void convertRectInLandscape(Rect var1);

    private int getItemNum();

    private int getPixel(int var1);

    private int getSelectorPadding();

    private int getTitleHeight();

    private boolean isVisibleTitle();

    public int computeHeight(int var1);

    public int computeMaxHeight(int var1);

    public int computeWidth(int var1);

    public SettingAdapter getAdapter();

    public int getNumRows(int var1);

    @Override
    public boolean getSelectedItemRect(Rect var1);

    @Override
    protected void onFinishInflate();

    @Override
    public void setAdapter(SettingAdapter var1);

    public void setNumColumns(int var1);

    @Override
    public void setSensorOrientation(int var1);

    public void setSettingDialogParams(SettingDialogBasicParams var1);

    public void setTitle(int var1);

}

