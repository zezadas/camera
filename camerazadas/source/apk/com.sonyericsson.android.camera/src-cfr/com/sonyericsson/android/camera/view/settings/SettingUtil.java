/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings;

import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItemBuilder;

public class SettingUtil {
    public static SettingItem getBlankItem() {
        return SettingItemBuilder.build(new Object()).dialogItemType(0).commit();
    }
}

