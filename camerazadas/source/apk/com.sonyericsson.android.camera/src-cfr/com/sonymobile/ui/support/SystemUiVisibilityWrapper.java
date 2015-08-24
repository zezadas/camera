/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.ui.support;

import android.view.View;

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
    private int mChangedMask = 0;
    private int mSystemUiVisibility;
    private final View mView;

    static {
        SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION = SystemUiVisibilityWrapper.getValue("SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION");
        SYSTEM_UI_FLAG_TRANSPARENT = SystemUiVisibilityWrapper.getValue("SYSTEM_UI_FLAG_TRANSPARENT");
        SYSTEM_UI_FLAG_FULL_TRANSPARENCY = SystemUiVisibilityWrapper.getValue("SYSTEM_UI_FLAG_FULL_TRANSPARENCY");
        SYSTEM_UI_FLAG_ROUNDED_CORNERS = SystemUiVisibilityWrapper.getValue("SYSTEM_UI_FLAG_ROUNDED_CORNERS");
        SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS = SystemUiVisibilityWrapper.getValue("SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS");
        SYSTEM_UI_FLAG_LIGHT = SystemUiVisibilityWrapper.getValue("SYSTEM_UI_FLAG_LIGHT");
        SOMC_EXTENSION_MASK = SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION | SYSTEM_UI_FLAG_TRANSPARENT | SYSTEM_UI_FLAG_FULL_TRANSPARENCY | SYSTEM_UI_FLAG_ROUNDED_CORNERS | SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS | SYSTEM_UI_FLAG_LIGHT;
    }

    private SystemUiVisibilityWrapper(View view) {
        this.mView = view;
        this.mSystemUiVisibility = view.getSystemUiVisibility();
    }

    private boolean getFlag(int n) {
        if ((this.mView.getSystemUiVisibility() & n) != 0) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static int getValue(String string) {
        try {
            return View.class.getField(string).getInt(null);
        }
        catch (IllegalAccessException var0_1) {
            do {
                return 0;
                break;
            } while (true);
        }
        catch (IllegalArgumentException var0_2) {
            return 0;
        }
        catch (NoSuchFieldException var0_3) {
            return 0;
        }
    }

    public static SystemUiVisibilityWrapper newInstance(View view) {
        if (view == null) {
            throw new NullPointerException();
        }
        return new SystemUiVisibilityWrapper(view);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setFlag(int n, boolean bl) {
        this.mSystemUiVisibility = bl ? (this.mSystemUiVisibility|=n) : (this.mSystemUiVisibility&=~ n);
        this.mChangedMask|=n;
    }

    public void apply() {
        int n = this.mView.getSystemUiVisibility();
        int n2 = this.mSystemUiVisibility;
        int n3 = this.mChangedMask;
        int n4 = this.mChangedMask;
        this.mView.setSystemUiVisibility(n & ~ n4 | n2 & n3);
        this.mChangedMask = 0;
    }

    public boolean getLightBackground() {
        return this.getFlag(SYSTEM_UI_FLAG_LIGHT);
    }

    public boolean getRoundedCorners() {
        if (this.getFlag(SYSTEM_UI_FLAG_ROUNDED_CORNERS) && !this.getFlag(SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS)) {
            return true;
        }
        return false;
    }

    public boolean getSuppressNavigationBar() {
        return this.getFlag(SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION);
    }

    public int getSystemUiVisibility() {
        return this.mView.getSystemUiVisibility() & ~ SOMC_EXTENSION_MASK;
    }

    public boolean getTranslucentBackground() {
        return this.getFlag(SYSTEM_UI_FLAG_TRANSPARENT);
    }

    public int getTranslucentBackgroundOpacity() {
        if (this.getFlag(SYSTEM_UI_FLAG_FULL_TRANSPARENCY)) {
            return -2;
        }
        return -1;
    }

    public boolean getVisibilityFlag(int n) {
        return this.getFlag(~ SOMC_EXTENSION_MASK & n);
    }

    public SystemUiVisibilityWrapper setLightBackground(boolean bl) {
        this.setFlag(SYSTEM_UI_FLAG_LIGHT, bl);
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public SystemUiVisibilityWrapper setRoundedCorners(boolean bl) {
        this.setFlag(SYSTEM_UI_FLAG_ROUNDED_CORNERS, bl);
        int n = SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS;
        bl = !bl;
        this.setFlag(n, bl);
        return this;
    }

    public SystemUiVisibilityWrapper setSuppressNavigationBar(boolean bl) {
        this.setFlag(SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION, bl);
        return this;
    }

    public SystemUiVisibilityWrapper setSystemUiVisibility(int n) {
        this.mSystemUiVisibility = ~ SOMC_EXTENSION_MASK & n | this.mSystemUiVisibility & SOMC_EXTENSION_MASK;
        this.mChangedMask|=~ SOMC_EXTENSION_MASK;
        return this;
    }

    public SystemUiVisibilityWrapper setTranslucentBackground(boolean bl) {
        this.setFlag(SYSTEM_UI_FLAG_TRANSPARENT, bl);
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public SystemUiVisibilityWrapper setTranslucentBackgroundOpacity(int n) {
        if (n == -1 || n == -2) {
            int n2 = SYSTEM_UI_FLAG_FULL_TRANSPARENCY;
            boolean bl = n == -2;
            this.setFlag(n2, bl);
        }
        return this;
    }

    public SystemUiVisibilityWrapper setVisibilityFlag(int n, boolean bl) {
        this.setFlag(~ SOMC_EXTENSION_MASK & n, bl);
        return this;
    }

    public boolean supportsLightBackground() {
        if (SYSTEM_UI_FLAG_LIGHT != 0) {
            return true;
        }
        return false;
    }

    public boolean supportsRoundedCorners() {
        if (SYSTEM_UI_FLAG_ROUNDED_CORNERS != 0) {
            return true;
        }
        return false;
    }

    public boolean supportsSuppressNavigationBar() {
        if (SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION != 0) {
            return true;
        }
        return false;
    }

    public boolean supportsTranslucentBackground() {
        if (SYSTEM_UI_FLAG_TRANSPARENT != 0) {
            return true;
        }
        return false;
    }

    public boolean supportsTranslucentBackgroundOpacity(int n) {
        if (n == -1 || SYSTEM_UI_FLAG_FULL_TRANSPARENCY != 0 && n == -2) {
            return true;
        }
        return false;
    }
}

