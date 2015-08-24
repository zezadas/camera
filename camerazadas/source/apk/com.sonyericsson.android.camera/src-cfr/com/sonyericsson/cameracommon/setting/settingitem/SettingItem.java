/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.settingitem;

import android.content.res.Resources;
import com.sonyericsson.cameracommon.setting.settingitem.OnItemSelectedListener;
import java.util.List;

public interface SettingItem {
    public boolean compareData(SettingItem var1);

    public boolean compareData(Object var1);

    public List<SettingItem> getChildren();

    public String getContentDescription(Resources var1);

    public int getDialogItemType();

    public int getIconId();

    public String getLongText(Resources var1);

    public String getSubText(Resources var1);

    public String getText(Resources var1);

    public boolean isSelectable();

    public boolean isSelected();

    public boolean isSoundEnabled();

    public void select();

    public void setOnSelectedListener(OnItemSelectedListener var1);

    public void setSelectable(boolean var1);

    public void setSelected(boolean var1);
}

