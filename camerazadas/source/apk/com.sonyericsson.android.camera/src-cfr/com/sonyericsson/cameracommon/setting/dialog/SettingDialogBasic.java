/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasicParams;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

public class SettingDialogBasic
extends SettingDialog {
    private static final String TAG = SettingDialogBasic.class.getSimpleName();
    private final int ITEM_DIVIDER_HEIGHT;
    private final int TITLE_HEIGHT;
    protected GridView mGridView;
    private SettingDialogBasicParams mParams;
    private View mSelectedView;

    public SettingDialogBasic(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TITLE_HEIGHT = this.getPixel(R.dimen.title_text_height) + this.getPixel(R.dimen.divider_height);
        this.ITEM_DIVIDER_HEIGHT = this.getPixel(R.dimen.divider_height);
    }

    private void convertRectInLandscape(Rect rect) {
        if (this.mOrientation == 1) {
            int n = (int)((float)rect.top + this.getX());
            int n2 = (int)((float)rect.left - this.getX());
            rect.set(n, n2, n + rect.height(), n2 + rect.width());
        }
    }

    private int getItemNum() {
        return this.mGridView.getAdapter().getCount();
    }

    private int getPixel(int n) {
        return this.getResources().getDimensionPixelSize(n);
    }

    private int getSelectorPadding() {
        Rect rect = new Rect();
        if (this.mGridView.getSelector() != null) {
            this.mGridView.getSelector().getPadding(rect);
            return rect.bottom + rect.top;
        }
        return 0;
    }

    private int getTitleHeight() {
        if (this.findViewById(R.id.setting_title_layout).getVisibility() == 0) {
            return this.TITLE_HEIGHT;
        }
        return 0;
    }

    private boolean isVisibleTitle() {
        if (this.findViewById(R.id.setting_title_layout).getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public int computeHeight(int n) {
        int n2 = this.getSelectorPadding();
        Context context = this.getContext();
        if (n == 2) {
            return (int)((float)this.getItemNum() / 2.0f * (float)this.mParams.getItemHeight(this.getContext()) + (float)this.getItemNum() / 2.0f * (float)this.ITEM_DIVIDER_HEIGHT + (float)this.getTitleHeight() + (float)(this.mParams.getPadding(context) * 2) + (float)n2);
        }
        return this.getItemNum() * this.mParams.getItemHeight(context) + this.getItemNum() * this.ITEM_DIVIDER_HEIGHT + this.getTitleHeight() + this.mParams.getPadding(context) * 2 + n2;
    }

    public int computeMaxHeight(int n) {
        int n2 = this.getSelectorPadding();
        return this.mParams.getItemHeight(this.getContext()) * n + this.mParams.getPadding(this.getContext()) * 2 + this.getTitleHeight() + this.ITEM_DIVIDER_HEIGHT * n + n2;
    }

    public int computeWidth(int n) {
        if (n == 2) {
            return this.getResources().getDimensionPixelSize(R.dimen.setting_dialog_shortcut_2_column_width);
        }
        return this.getResources().getDimensionPixelSize(R.dimen.setting_dialog_shortcut_width);
    }

    public SettingAdapter getAdapter() {
        return (SettingAdapter)this.mGridView.getAdapter();
    }

    public int getNumRows(int n) {
        int n2 = this.mParams.getPadding(this.getContext());
        int n3 = this.getTitleHeight();
        return (this.ITEM_DIVIDER_HEIGHT + (n - n2 * 2 - n3)) / (this.mParams.getItemHeight(this.getContext()) + this.ITEM_DIVIDER_HEIGHT);
    }

    @Override
    public boolean getSelectedItemRect(Rect rect) {
        if (this.mSelectedView != null && this.mSelectedView.getGlobalVisibleRect(rect)) {
            this.convertRectInLandscape(rect);
            return true;
        }
        return false;
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mGridView = (GridView)this.findViewById(R.id.setting_gridview);
        int n = this.getPixel(R.dimen.setting_dialog_scroll_fading_edge_length);
        this.mGridView.setFadingEdgeLength(n);
        this.mGridView.setVerticalFadingEdgeEnabled(true);
        this.mGridView.setChoiceMode(1);
        this.mGridView.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
                SettingDialogBasic.this.mSelectedView = view;
                ((SettingItem)((SettingAdapter)SettingDialogBasic.this.mGridView.getAdapter()).getItem(n)).select();
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setAdapter(SettingAdapter settingAdapter) {
        if (this.mParams != null) {
            settingAdapter.setItemHeight(this.mParams.getItemHeight(this.getContext()));
        }
        boolean bl = !this.isVisibleTitle();
        settingAdapter.setRoundTopItemBackground(bl);
        this.mGridView.setAdapter(settingAdapter);
        if (settingAdapter.getCount() > 0) {
            this.mGridView.setSelection(settingAdapter.getSelectedPosition());
        }
    }

    public void setNumColumns(int n) {
        this.mGridView.setNumColumns(n);
    }

    @Override
    public void setSensorOrientation(int n) {
        this.requestLayout();
        super.setSensorOrientation(n);
        this.mGridView.performAccessibilityAction(64, null);
    }

    public void setSettingDialogParams(SettingDialogBasicParams settingDialogBasicParams) {
        Context context = this.getContext();
        this.mParams = settingDialogBasicParams;
        this.findViewById(R.id.background).setBackgroundResource(this.mParams.getBackgroundId());
        this.findViewById(R.id.container).setPadding(this.mParams.getPadding(context), this.mParams.getPadding(context), this.mParams.getPadding(context), this.mParams.getPadding(context));
        if (this.mGridView.getAdapter() instanceof SettingAdapter) {
            ((SettingAdapter)this.mGridView.getAdapter()).setItemHeight(this.mParams.getItemHeight(context));
        }
    }

    public void setTitle(int n) {
        Object object = (TextView)this.findViewById(R.id.setting_title);
        object.setText(n);
        object.setContentDescription(object.getText());
        this.findViewById(R.id.setting_title_layout).setVisibility(0);
        object = (SettingAdapter)this.mGridView.getAdapter();
        if (object != null) {
            object.setRoundTopItemBackground(false);
        }
    }

}

