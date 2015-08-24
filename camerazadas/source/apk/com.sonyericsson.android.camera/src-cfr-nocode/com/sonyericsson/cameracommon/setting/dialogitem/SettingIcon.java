/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingIcon
extends SettingDialogItem {
    private static final int ICON_FADE_SWITCH_ANIMATION_DURATION = 250;
    private static final int ICON_FADE_SWITCH_ANIMATION_OFFSET = 50;
    private static final int PRESSED_COLOR_FILTER = 1711276032;
    private static final String TAG;
    private final ViewHolder mHolder;
    private final View.OnClickListener mOnClickListener;

    static;

    public SettingIcon(Context var1, SettingItem var2);

    private Animation createIconAnimation(Context var1);

    public ImageView getIcon();

    @Override
    public View getView();

    @Override
    public void update(ViewGroup var1, SettingAdapter.ItemLayoutParams var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class ViewHolder {
        FrameLayout mBackground;
        FrameLayout mContainer;
        ImageView mIcon;
        int mIconRes;

        ViewHolder();
    }

}

