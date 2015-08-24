/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.settingitem;

import android.content.res.Resources;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.OnItemSelectedListener;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import java.util.ArrayList;
import java.util.List;

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

    public TypedSettingItem(T t, int n, int n2, int n3, int n4, String string, int n5, SettingExecutorInterface<T> settingExecutorInterface, boolean bl) {
        this.mData = t;
        this.mTextId = n2;
        this.mText = "";
        this.mIconId = n;
        this.mDialogItemType = n5;
        this.mExecutor = settingExecutorInterface;
        this.mIsSoundEnabled = bl;
        this.mChildren = new ArrayList<SettingItem>();
        this.mSubTextId = n3;
        this.mLongTextId = n4;
        this.mAdditionalTextForAccessibility = string;
        this.mIsSelected = false;
        this.mIsSelectable = false;
        this.mOnSettingItemSelectedListener = null;
    }

    public TypedSettingItem(T t, int n, String string, int n2, int n3, String string2, int n4, SettingExecutorInterface<T> settingExecutorInterface, boolean bl) {
        this.mData = t;
        this.mTextId = -1;
        this.mText = string;
        this.mSubTextId = n2;
        this.mLongTextId = n3;
        this.mIconId = n;
        this.mDialogItemType = n4;
        this.mAdditionalTextForAccessibility = string2;
        this.mExecutor = settingExecutorInterface;
        this.mIsSoundEnabled = bl;
        this.mChildren = new ArrayList<SettingItem>();
        this.mIsSelected = false;
        this.mIsSelectable = false;
        this.mOnSettingItemSelectedListener = null;
    }

    @Override
    public boolean compareData(SettingItem settingItem) {
        boolean bl;
        boolean bl2 = bl = false;
        if (settingItem instanceof TypedSettingItem) {
            settingItem = (TypedSettingItem)settingItem;
            bl2 = bl;
            if (this.mData == settingItem.mData) {
                bl2 = true;
            }
        }
        return bl2;
    }

    @Override
    public boolean compareData(Object object) {
        if (this.mData == object) {
            return true;
        }
        return false;
    }

    @Override
    public List<SettingItem> getChildren() {
        return this.mChildren;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public String getContentDescription(Resources resources) {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.mTextId != -1) {
            stringBuilder.append(resources.getString(this.mTextId));
        } else {
            stringBuilder.append(this.mText);
        }
        if (!(this.mAdditionalTextForAccessibility == null || this.mAdditionalTextForAccessibility.isEmpty())) {
            stringBuilder.append(' ');
            stringBuilder.append(this.mAdditionalTextForAccessibility);
        }
        if (!this.isSelectable()) {
            stringBuilder.append(' ');
            stringBuilder.append(resources.getString(R.string.cam_strings_accessibility_not_configurable_txt));
        }
        return stringBuilder.toString();
    }

    public T getData() {
        return this.mData;
    }

    @Override
    public int getDialogItemType() {
        return this.mDialogItemType;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public String getLongText(Resources resources) {
        if (this.mLongTextId == -1) {
            return null;
        }
        return resources.getString(this.mLongTextId);
    }

    @Override
    public String getSubText(Resources resources) {
        if (this.mSubTextId == -1) {
            return null;
        }
        return resources.getString(this.mSubTextId);
    }

    @Override
    public String getText(Resources resources) {
        if (this.mTextId == -1) {
            return this.mText;
        }
        return resources.getString(this.mTextId);
    }

    public String getValueText() {
        return this.mAdditionalTextForAccessibility;
    }

    @Override
    public boolean isSelectable() {
        return this.mIsSelectable;
    }

    @Override
    public boolean isSelected() {
        return this.mIsSelected;
    }

    @Override
    public boolean isSoundEnabled() {
        return this.mIsSoundEnabled;
    }

    @Override
    public void select() {
        this.mIsSelected = true;
        if (this.mOnSettingItemSelectedListener != null) {
            this.mOnSettingItemSelectedListener.onItemSelected(this);
        }
        if (this.mExecutor == null) {
            return;
        }
        this.mExecutor.onExecute(this);
    }

    @Override
    public void setOnSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.mOnSettingItemSelectedListener = onItemSelectedListener;
    }

    @Override
    public void setSelectable(boolean bl) {
        this.mIsSelectable = bl;
    }

    @Override
    public void setSelected(boolean bl) {
        this.mIsSelected = bl;
    }
}

