/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.setting;

import android.os.Handler;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.viewfinder.setting.SettingUi;

public class SettingUiUtil {
    private final Object mMenuShortcutTag;
    private final SettingUi mUi;

    public SettingUiUtil(SettingUi settingUi, Object object) {
        this.mUi = settingUi;
        this.mMenuShortcutTag = object;
    }

    static /* synthetic */ SettingUi access$100(SettingUiUtil settingUiUtil) {
        return settingUiUtil.mUi;
    }

    public void openMenuDialogAndSelectItem(SettingAdapter settingAdapter, Object object, SettingTabs.Tab[] arrtab, SettingTabs.Tab tab, int n) {
        this.mUi.selectShortcut(this.mMenuShortcutTag);
        SettingItem settingItem = null;
        int n2 = 0;
        do {
            final SettingItem settingItem2 = settingItem;
            if (n2 < settingAdapter.getCount()) {
                if (((SettingItem)settingAdapter.getItem(n2)).compareData(object)) {
                    settingItem2 = (SettingItem)settingAdapter.getItem(n2);
                    settingItem2.setSelected(true);
                }
            } else {
                this.mUi.openMenuDialog(settingAdapter, arrtab, tab, this.mMenuShortcutTag, n);
                if (settingItem2 != null) {
                    new Handler().post(new Runnable(){

                        @Override
                        public void run() {
                            if (SettingUiUtil.access$100((SettingUiUtil)SettingUiUtil.this).mDialogStack.isOpened(SettingUiUtil.this.mMenuShortcutTag)) {
                                settingItem2.select();
                            }
                        }
                    });
                }
                return;
            }
            ++n2;
        } while (true);
    }

}

