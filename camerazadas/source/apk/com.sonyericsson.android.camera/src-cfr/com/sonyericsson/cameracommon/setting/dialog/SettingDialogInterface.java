/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.graphics.Rect;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogStateListener;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;

public interface SettingDialogInterface {
    public void close();

    public LayoutCoordinator getLayoutCoordinator();

    public boolean getSelectedItemRect(Rect var1);

    public boolean hitTest(int var1, int var2);

    public boolean isNested();

    public void open(ViewGroup var1);

    public void open(ViewGroup var1, boolean var2);

    public void setAdapter(SettingAdapter var1);

    public void setCloseAnimation(Animation var1);

    public void setEnabled(boolean var1);

    public void setLayoutCoordinator(LayoutCoordinator var1);

    public void setSensorOrientation(int var1);

    public void setStateListener(SettingDialogStateListener var1);
}

