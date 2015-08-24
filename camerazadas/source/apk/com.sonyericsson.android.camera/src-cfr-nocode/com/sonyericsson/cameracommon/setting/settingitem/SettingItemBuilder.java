/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.settingitem;

import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public class SettingItemBuilder<T> {
    private String mAdditionalTextForAccessibility;
    private final T mData;
    private int mDialogItemType;
    private SettingExecutorInterface<T> mExecutor;
    private int mIconId;
    private boolean mIsSelectable;
    private boolean mIsSoundEnabled;
    private List<SettingItem> mItems;
    private int mLongTextId;
    private boolean mSelected;
    private int mSubTextId;
    private String mText;
    private int mTextId;

    private SettingItemBuilder(T var1);

    public static <T> SettingItemBuilder<T> build(T var0);

    public SettingItemBuilder<T> additionalTextForAccessibility(String var1);

    public SettingItem commit();

    public SettingItemBuilder<T> dialogItemType(int var1);

    public SettingItemBuilder<T> enableSound(boolean var1);

    public SettingItemBuilder<T> executor(SettingExecutorInterface<T> var1);

    public SettingItemBuilder<T> iconId(int var1);

    public SettingItemBuilder<T> item(SettingItem var1);

    public SettingItemBuilder<T> longTextId(int var1);

    public SettingItemBuilder<T> selectable(boolean var1);

    public SettingItemBuilder<T> selected(boolean var1);

    public SettingItemBuilder<T> subTextId(int var1);

    public SettingItemBuilder<T> text(String var1);

    public SettingItemBuilder<T> textId(int var1);
}

