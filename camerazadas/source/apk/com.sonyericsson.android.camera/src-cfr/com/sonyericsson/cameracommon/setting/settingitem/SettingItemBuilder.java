/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.settingitem;

import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import java.util.ArrayList;
import java.util.List;

public class SettingItemBuilder<T> {
    private String mAdditionalTextForAccessibility = "";
    private final T mData;
    private int mDialogItemType = -1;
    private SettingExecutorInterface<T> mExecutor = null;
    private int mIconId = -1;
    private boolean mIsSelectable = true;
    private boolean mIsSoundEnabled = true;
    private List<SettingItem> mItems = null;
    private int mLongTextId = -1;
    private boolean mSelected = false;
    private int mSubTextId = -1;
    private String mText = "";
    private int mTextId = -1;

    private SettingItemBuilder(T t) {
        this.mData = t;
    }

    public static <T> SettingItemBuilder<T> build(T t) {
        return new SettingItemBuilder<T>(t);
    }

    public SettingItemBuilder<T> additionalTextForAccessibility(String string) {
        this.mAdditionalTextForAccessibility = string;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public SettingItem commit() {
        TypedSettingItem<T> typedSettingItem = this.mTextId == -1 ? new TypedSettingItem<T>(this.mData, this.mIconId, this.mText, this.mSubTextId, this.mLongTextId, this.mAdditionalTextForAccessibility, this.mDialogItemType, this.mExecutor, this.mIsSoundEnabled) : new TypedSettingItem<T>(this.mData, this.mIconId, this.mTextId, this.mSubTextId, this.mLongTextId, this.mAdditionalTextForAccessibility, this.mDialogItemType, this.mExecutor, this.mIsSoundEnabled);
        if (this.mItems != null) {
            for (SettingItem settingItem : this.mItems) {
                typedSettingItem.getChildren().add(settingItem);
            }
        }
        typedSettingItem.setSelectable(this.mIsSelectable);
        typedSettingItem.setSelected(this.mSelected);
        return typedSettingItem;
    }

    public SettingItemBuilder<T> dialogItemType(int n) {
        this.mDialogItemType = n;
        return this;
    }

    public SettingItemBuilder<T> enableSound(boolean bl) {
        this.mIsSoundEnabled = bl;
        return this;
    }

    public SettingItemBuilder<T> executor(SettingExecutorInterface<T> settingExecutorInterface) {
        this.mExecutor = settingExecutorInterface;
        return this;
    }

    public SettingItemBuilder<T> iconId(int n) {
        this.mIconId = n;
        return this;
    }

    public SettingItemBuilder<T> item(SettingItem settingItem) {
        if (this.mItems == null) {
            this.mItems = new ArrayList<SettingItem>();
        }
        this.mItems.add(settingItem);
        return this;
    }

    public SettingItemBuilder<T> longTextId(int n) {
        this.mLongTextId = n;
        return this;
    }

    public SettingItemBuilder<T> selectable(boolean bl) {
        this.mIsSelectable = bl;
        return this;
    }

    public SettingItemBuilder<T> selected(boolean bl) {
        this.mSelected = bl;
        return this;
    }

    public SettingItemBuilder<T> subTextId(int n) {
        this.mSubTextId = n;
        return this;
    }

    public SettingItemBuilder<T> text(String string) {
        this.mText = string;
        return this;
    }

    public SettingItemBuilder<T> textId(int n) {
        this.mTextId = n;
        return this;
    }
}

