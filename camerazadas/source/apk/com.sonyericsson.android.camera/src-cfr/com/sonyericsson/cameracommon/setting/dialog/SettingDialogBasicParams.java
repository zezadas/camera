/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.content.res.Resources;
import com.sonyericsson.cameracommon.R;

public enum SettingDialogBasicParams {
    SHORTCUT_DIALOG_PARAMS(R.dimen.shortcut_dialog_item_height, R.dimen.shortcut_dialog_padding, R.drawable.cam_shortcut_dialog_background_icn),
    SECOND_LAYER_DIALOG_SINGLE_ITEM_PARAMS(R.dimen.second_layer_dialog_item_double_line_height, R.dimen.second_layer_dialog_padding, R.drawable.cam_setting_sub_dialog_background_icn),
    SECOND_LAYER_DIALOG_DOUBLE_ITEM_PARAMS(R.dimen.second_layer_dialog_item_double_line_height, R.dimen.second_layer_dialog_padding, R.drawable.cam_setting_sub_dialog_background_icn);
    
    private final int mBackgroundId;
    private final int mItemHeightResId;
    private final int mPaddingResId;

    private SettingDialogBasicParams(int n2, int n3, int n4) {
        this.mItemHeightResId = n2;
        this.mPaddingResId = n3;
        this.mBackgroundId = n4;
    }

    public int getBackgroundId() {
        return this.mBackgroundId;
    }

    public int getItemHeight(Context context) {
        return context.getResources().getDimensionPixelSize(this.mItemHeightResId);
    }

    public int getPadding(Context context) {
        return context.getResources().getDimensionPixelSize(this.mPaddingResId);
    }
}

