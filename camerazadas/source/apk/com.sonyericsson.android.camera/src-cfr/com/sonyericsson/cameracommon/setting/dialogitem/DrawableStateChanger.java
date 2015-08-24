/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;

class DrawableStateChanger {
    private static final int DRAWABLE_LEVEL_BOTTOM = 2;
    private static final int DRAWABLE_LEVEL_NORMAL = 0;
    private static final int DRAWABLE_LEVEL_TOP = 1;
    private View mBackground;
    private View mDividerBottom;
    private View mDividerLeft;
    private View mDividerRight;
    private final SettingAdapter.ItemLayoutParams mParams;

    public DrawableStateChanger(SettingAdapter.ItemLayoutParams itemLayoutParams) {
        this.mParams = itemLayoutParams;
        this.mDividerBottom = null;
        this.mDividerLeft = null;
        this.mDividerRight = null;
        this.mBackground = null;
    }

    private int getDrawbleLevel(SettingAdapter.ItemLayoutParams itemLayoutParams) {
        if (this.mParams.top) {
            return 1;
        }
        if (itemLayoutParams.bottom) {
            return 2;
        }
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void apply() {
        if (this.mParams != null) {
            if (this.mDividerBottom != null) {
                this.mDividerBottom.setVisibility(0);
            }
            if (this.mDividerLeft != null && this.mDividerRight != null) {
                if (this.mParams.left && this.mParams.right) {
                    this.mDividerRight.setVisibility(8);
                    this.mDividerLeft.setVisibility(8);
                } else if (this.mParams.left) {
                    this.mDividerRight.setVisibility(0);
                    this.mDividerLeft.setVisibility(8);
                } else if (this.mParams.right) {
                    this.mDividerRight.setVisibility(8);
                    this.mDividerLeft.setVisibility(0);
                } else {
                    this.mDividerRight.setVisibility(0);
                    this.mDividerLeft.setVisibility(0);
                }
            }
            if (this.mBackground != null && this.mBackground.getBackground() != null) {
                this.mBackground.getBackground().setLevel(this.getDrawbleLevel(this.mParams));
            }
        }
    }

    public DrawableStateChanger background(View view) {
        this.mBackground = view;
        return this;
    }

    public DrawableStateChanger dividerHorizontal(View view) {
        this.mDividerBottom = view;
        return this;
    }

    public DrawableStateChanger dividerVertical(View view, View view2) {
        this.mDividerLeft = view;
        this.mDividerRight = view2;
        return this;
    }
}

