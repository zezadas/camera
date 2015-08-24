/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.view.View;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;

/*
 * Exception performing whole class analysis.
 */
class DrawableStateChanger {
    private static final int DRAWABLE_LEVEL_BOTTOM = 2;
    private static final int DRAWABLE_LEVEL_NORMAL = 0;
    private static final int DRAWABLE_LEVEL_TOP = 1;
    private View mBackground;
    private View mDividerBottom;
    private View mDividerLeft;
    private View mDividerRight;
    private final SettingAdapter.ItemLayoutParams mParams;

    public DrawableStateChanger(SettingAdapter.ItemLayoutParams var1);

    private int getDrawbleLevel(SettingAdapter.ItemLayoutParams var1);

    public void apply();

    public DrawableStateChanger background(View var1);

    public DrawableStateChanger dividerHorizontal(View var1);

    public DrawableStateChanger dividerVertical(View var1, View var2);
}

