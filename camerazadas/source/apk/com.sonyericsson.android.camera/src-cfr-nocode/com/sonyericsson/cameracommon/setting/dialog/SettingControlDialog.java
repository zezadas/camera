/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialog;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingControlDialog
extends SettingDialog {
    private static final String TAG;
    private final int CONTROL_DIALOG_LEFT_PADDING;
    private SettingAdapter mAdapter;
    private Drawable mBackground;
    private LinearLayout mItems;

    static;

    public SettingControlDialog(Context var1, AttributeSet var2);

    private Rect computeBackgroundRectBeforeRotation();

    private void drawBackground(Canvas var1);

    private int getPixel(int var1);

    private void updateItems();

    public int getControlDialogLeftPadding();

    @Override
    public boolean getSelectedItemRect(Rect var1);

    @Override
    protected void onAttachedToWindow();

    @Override
    protected void onDetachedFromWindow();

    @Override
    protected void onDraw(Canvas var1);

    @Override
    protected void onFinishInflate();

    @Override
    public void setAdapter(SettingAdapter var1);

    @Override
    public void setSensorOrientation(int var1);
}

