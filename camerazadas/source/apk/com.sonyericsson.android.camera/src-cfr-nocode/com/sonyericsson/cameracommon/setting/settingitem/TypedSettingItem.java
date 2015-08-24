/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.settingitem;

import android.content.res.Resources;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.OnItemSelectedListener;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public class TypedSettingItem<T>
implements SettingItem {
    private final String mAdditionalTextForAccessibility;
    private final List<SettingItem> mChildren;
    private final T mData;
    private final int mDialogItemType;
    private final SettingExecutorInterface<T> mExecutor;
    private final int mIconId;
    private boolean mIsSelectable;
    private boolean mIsSelected;
    private final boolean mIsSoundEnabled;
    private final int mLongTextId;
    private OnItemSelectedListener mOnSettingItemSelectedListener;
    private final int mSubTextId;
    private final String mText;
    private final int mTextId;

    public TypedSettingItem(T var1, int var2, int var3, int var4, int var5, String var6, int var7, SettingExecutorInterface<T> var8, boolean var9);

    public TypedSettingItem(T var1, int var2, String var3, int var4, int var5, String var6, int var7, SettingExecutorInterface<T> var8, boolean var9);

    @Override
    public boolean compareData(SettingItem var1);

    @Override
    public boolean compareData(Object var1);

    @Override
    public List<SettingItem> getChildren();

    @Override
    public String getContentDescription(Resources var1);

    public T getData();

    @Override
    public int getDialogItemType();

    @Override
    public int getIconId();

    @Override
    public String getLongText(Resources var1);

    @Override
    public String getSubText(Resources var1);

    @Override
    public String getText(Resources var1);

    public String getValueText();

    @Override
    public boolean isSelectable();

    @Override
    public boolean isSelected();

    @Override
    public boolean isSoundEnabled();

    @Override
    public void select();

    @Override
    public void setOnSelectedListener(OnItemSelectedListener var1);

    @Override
    public void setSelectable(boolean var1);

    @Override
    public void setSelected(boolean var1);
}

