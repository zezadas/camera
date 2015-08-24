/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.constants;

public final class PlatformType {
    private PlatformType() {
    }

    public static String dH(int n) {
        switch (n) {
            default: {
                throw new IllegalArgumentException("Unknown platform type: " + n);
            }
            case 0: {
                return "ANDROID";
            }
            case 1: {
                return "IOS";
            }
            case 2: 
        }
        return "WEB_APP";
    }
}

