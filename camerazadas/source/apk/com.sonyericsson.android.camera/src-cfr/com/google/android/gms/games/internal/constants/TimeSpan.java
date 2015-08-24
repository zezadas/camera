/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.constants;

public final class TimeSpan {
    private TimeSpan() {
        throw new AssertionError((Object)"Uninstantiable");
    }

    public static String dH(int n) {
        switch (n) {
            default: {
                throw new IllegalArgumentException("Unknown time span " + n);
            }
            case 0: {
                return "DAILY";
            }
            case 1: {
                return "WEEKLY";
            }
            case 2: 
        }
        return "ALL_TIME";
    }
}

