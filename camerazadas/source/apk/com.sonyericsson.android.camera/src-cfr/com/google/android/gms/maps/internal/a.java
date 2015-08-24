/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

public final class a {
    public static Boolean a(byte by) {
        switch (by) {
            default: {
                return null;
            }
            case 1: {
                return Boolean.TRUE;
            }
            case 0: 
        }
        return Boolean.FALSE;
    }

    public static byte c(Boolean bl) {
        if (bl != null) {
            if (bl.booleanValue()) {
                return 1;
            }
            return 0;
        }
        return -1;
    }
}

