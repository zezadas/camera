/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.ui.support;

import android.view.View;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SystemUiVisibilityWrapper {
    public static final int BACKGROUND_OPACITY_DEFAULT = -1;
    public static final int BACKGROUND_OPACITY_TRANSPARENT = -2;
    private static final int SOMC_EXTENSION_MASK;
    private static final int SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS;
    private static final int SYSTEM_UI_FLAG_FULL_TRANSPARENCY;
    private static final int SYSTEM_UI_FLAG_LIGHT;
    private static final int SYSTEM_UI_FLAG_ROUNDED_CORNERS;
    private static final int SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION;
    private static final int SYSTEM_UI_FLAG_TRANSPARENT;
    private int mChangedMask;
    private int mSystemUiVisibility;
    private final View mView;

    static;

    private SystemUiVisibilityWrapper(View var1);

    private boolean getFlag(int var1);

    private static int getValue(String var0);

    public static SystemUiVisibilityWrapper newInstance(View var0);

    private void setFlag(int var1, boolean var2);

    public void apply();

    public boolean getLightBackground();

    public boolean getRoundedCorners();

    public boolean getSuppressNavigationBar();

    public int getSystemUiVisibility();

    public boolean getTranslucentBackground();

    public int getTranslucentBackgroundOpacity();

    public boolean getVisibilityFlag(int var1);

    public SystemUiVisibilityWrapper setLightBackground(boolean var1);

    public SystemUiVisibilityWrapper setRoundedCorners(boolean var1);

    public SystemUiVisibilityWrapper setSuppressNavigationBar(boolean var1);

    public SystemUiVisibilityWrapper setSystemUiVisibility(int var1);

    public SystemUiVisibilityWrapper setTranslucentBackground(boolean var1);

    public SystemUiVisibilityWrapper setTranslucentBackgroundOpacity(int var1);

    public SystemUiVisibilityWrapper setVisibilityFlag(int var1, boolean var2);

    public boolean supportsLightBackground();

    public boolean supportsRoundedCorners();

    public boolean supportsSuppressNavigationBar();

    public boolean supportsTranslucentBackground();

    public boolean supportsTranslucentBackgroundOpacity(int var1);
}

