/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

public enum ParameterSelectability {
    INVALID(false),
    FIXED(false),
    UNAVAILABLE(false),
    SELECTABLE(true),
    FORCE_CHANGED(true);
    
    private static final String TAG = "ParameterSelectability";
    private final boolean mIsUpdatable;

    private ParameterSelectability(boolean bl) {
        this.mIsUpdatable = bl;
    }

    public static ParameterSelectability getSelectability(int n) {
        switch (n) {
            default: {
                return SELECTABLE;
            }
            case 0: {
                return INVALID;
            }
            case 1: 
        }
        return FIXED;
    }

    public boolean isUpdatable() {
        return this.mIsUpdatable;
    }
}

