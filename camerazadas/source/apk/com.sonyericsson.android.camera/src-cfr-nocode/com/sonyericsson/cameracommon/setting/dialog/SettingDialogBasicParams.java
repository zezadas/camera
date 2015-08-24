/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class SettingDialogBasicParams
extends Enum<SettingDialogBasicParams> {
    private static final /* synthetic */ SettingDialogBasicParams[] $VALUES;
    public static final /* enum */ SettingDialogBasicParams SECOND_LAYER_DIALOG_DOUBLE_ITEM_PARAMS;
    public static final /* enum */ SettingDialogBasicParams SECOND_LAYER_DIALOG_SINGLE_ITEM_PARAMS;
    public static final /* enum */ SettingDialogBasicParams SHORTCUT_DIALOG_PARAMS;
    private final int mBackgroundId;
    private final int mItemHeightResId;
    private final int mPaddingResId;

    static;

    private SettingDialogBasicParams(int var3, int var4, int var5);

    public static SettingDialogBasicParams valueOf(String var0);

    public static SettingDialogBasicParams[] values();

    public int getBackgroundId();

    public int getItemHeight(Context var1);

    public int getPadding(Context var1);
}

