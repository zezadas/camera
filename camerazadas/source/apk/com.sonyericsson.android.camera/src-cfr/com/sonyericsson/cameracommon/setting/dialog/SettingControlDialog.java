/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialog;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.utility.RotationUtil;

public class SettingControlDialog
extends SettingDialog {
    private static final String TAG = SettingControlDialog.class.getSimpleName();
    private final int CONTROL_DIALOG_LEFT_PADDING;
    private SettingAdapter mAdapter;
    private Drawable mBackground;
    private LinearLayout mItems;

    public SettingControlDialog(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.CONTROL_DIALOG_LEFT_PADDING = this.getPixel(R.dimen.control_dialog_left_padding);
    }

    private Rect computeBackgroundRectBeforeRotation() {
        if (this.mOrientation == 1) {
            Rect rect = new Rect(0, 0, this.getMeasuredHeight(), this.getMeasuredWidth());
            rect.offset((- rect.width() - this.getMeasuredWidth()) / 2, (- rect.height() - this.getMeasuredHeight()) / 2);
            return rect;
        }
        return new Rect(0, 0, this.getMeasuredWidth(), this.getMeasuredHeight());
    }

    private void drawBackground(Canvas canvas) {
        if (this.mBackground == null) {
            return;
        }
        canvas.rotate(RotationUtil.getAngle(this.mOrientation), this.getMeasuredWidth() / 2, this.getMeasuredHeight() / 2);
        this.mBackground.setBounds(this.computeBackgroundRectBeforeRotation());
        this.mBackground.draw(canvas);
    }

    private int getPixel(int n) {
        return this.getResources().getDimensionPixelSize(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateItems() {
        for (int i = 0; i < this.mItems.getChildCount(); ++i) {
            View view = this.mItems.getChildAt(i);
            if (!(view.getTag() instanceof SettingItem)) continue;
            if (((SettingItem)view.getTag()).isSelectable()) {
                view.setVisibility(0);
                continue;
            }
            view.setVisibility(8);
        }
    }

    public int getControlDialogLeftPadding() {
        return this.CONTROL_DIALOG_LEFT_PADDING;
    }

    @Override
    public boolean getSelectedItemRect(Rect rect) {
        return false;
    }

    @Override
    protected void onAttachedToWindow() {
        this.mBackground = this.getResources().getDrawable(R.drawable.cam_shortcut_dialog_background_icn, null);
        super.onAttachedToWindow();
    }

    @Override
    protected void onDetachedFromWindow() {
        this.mBackground = null;
        super.onDetachedFromWindow();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        canvas.save();
        this.drawBackground(canvas);
        canvas.restore();
        super.onDraw(canvas);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setWillNotDraw(false);
        this.mItems = (LinearLayout)this.findViewById(R.id.dialog_items);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setAdapter(SettingAdapter object) {
        this.mAdapter = object;
        object = new LinearLayout.LayoutParams(-2, -2);
        object.gravity = 17;
        for (int i = 0; i < this.mAdapter.getCount(); ++i) {
            if (i < this.mItems.getChildCount()) {
                View view;
                View view2 = this.mItems.getChildAt(i);
                if (view2 == (view = this.mAdapter.getView(i, view2, this.mItems))) continue;
                this.mItems.removeViewAt(i);
                this.mItems.removeView(view);
                this.mItems.addView(view, i, (ViewGroup.LayoutParams)object);
                continue;
            }
            this.mItems.addView(this.mAdapter.getView(i, null, this.mItems), (ViewGroup.LayoutParams)object);
        }
        do {
            if (this.mItems.getChildCount() <= this.mAdapter.getCount()) {
                this.updateItems();
                return;
            }
            this.mItems.removeViewAt(this.mItems.getChildCount() - 1);
        } while (true);
    }

    @Override
    public void setSensorOrientation(int n) {
        this.requestLayout();
        for (int i = 0; i < this.mItems.getChildCount(); ++i) {
            if (!(this.mItems.getChildAt(i).getTag() instanceof SettingDialogItem)) continue;
            ((SettingDialogItem)this.mItems.getChildAt(i).getTag()).setUiOrientation(n);
        }
        super.setSensorOrientation(n);
    }
}

