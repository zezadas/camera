/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings;

import com.sonyericsson.android.camera.configuration.ParameterKey;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class SettingGroup
extends Enum<SettingGroup> {
    private static final /* synthetic */ SettingGroup[] $VALUES;
    public static final /* enum */ SettingGroup COMMON;
    public static final /* enum */ SettingGroup CONTROL;
    public static final /* enum */ SettingGroup FLASH_LIGHT;
    public static final /* enum */ SettingGroup PHOTO;
    public static final /* enum */ SettingGroup SCENE;
    public static final /* enum */ SettingGroup VIDEO;
    private final ParameterKey[] mItems;
    private final int mTextId;

    static;

    private SettingGroup(int var3, ParameterKey[] var4);

    public static SettingGroup getGroup(String var0);

    public static SettingGroup valueOf(String var0);

    public static SettingGroup[] values();

    public ParameterKey[] getSettingItemList();

    public int getTextId();

    public ParameterKey[] valueOf(SettingGroup var1);
}

