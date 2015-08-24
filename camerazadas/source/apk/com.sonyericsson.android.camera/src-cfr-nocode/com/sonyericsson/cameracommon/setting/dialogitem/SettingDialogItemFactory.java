/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.view.ViewGroup;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/*
 * Exception performing whole class analysis ignored.
 */
public class SettingDialogItemFactory {
    public static final int BUTTON = 1;
    public static final int CATEGORY_BUTTON = 3;
    public static final int CATEGORY_SWITCH = 4;
    public static final int END_OF_TYPE_LIST = 8;
    public static final int EV = 5;
    public static final int ICON = 0;
    public static final int MENU = 6;
    public static final int VALUE_BUTTON = 2;
    public static final int VERTICAL_ICON_LIST = 7;

    public SettingDialogItemFactory();

    public SettingDialogItem create(SettingItem var1, ViewGroup var2);

    public int getDialogItemTypeCount();
}

