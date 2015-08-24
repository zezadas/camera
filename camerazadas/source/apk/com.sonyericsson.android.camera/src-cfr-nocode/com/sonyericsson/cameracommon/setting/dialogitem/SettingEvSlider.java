/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingEvSlider
extends SettingDialogItem {
    private static final String TAG;
    private final int mBottomPadding;
    private final ViewHolder mHolder;
    private int mSelectedPosition;
    private final int mTopPadding;

    static;

    public SettingEvSlider(Context var1, SettingItem var2);

    static /* synthetic */ int access$100(SettingEvSlider var0);

    static /* synthetic */ void access$200(SettingEvSlider var0, int var1);

    static /* synthetic */ void access$300(SettingEvSlider var0, float var1, int var2);

    private float getMemoryStepSize();

    private int getSelectedItemDisplyPosition();

    private SettingItem getValueItem(int var1);

    private int getValueItemCount();

    private void updateIndicator(float var1, int var2);

    private void updateIndicator(int var1);

    @Override
    public View getView();

    @Override
    public void setUiOrientation(int var1);

    @Override
    public void update(ViewGroup var1, SettingAdapter.ItemLayoutParams var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ViewHolder {
        View mBackground;
        ViewGroup mContainer;
        ImageView mIndicator;
        ImageView mScaleNumber;

        private ViewHolder();

        /* synthetic */ ViewHolder( var1);
    }

}

