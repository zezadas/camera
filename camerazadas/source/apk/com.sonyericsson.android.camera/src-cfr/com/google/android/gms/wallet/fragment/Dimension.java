/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.fragment;

import android.util.DisplayMetrics;
import android.util.TypedValue;

public class Dimension {
    public static final int MATCH_PARENT = -1;
    public static final int UNIT_DIP = 1;
    public static final int UNIT_IN = 4;
    public static final int UNIT_MM = 5;
    public static final int UNIT_PT = 3;
    public static final int UNIT_PX = 0;
    public static final int UNIT_SP = 2;
    public static final int WRAP_CONTENT = -2;

    private Dimension() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int a(long l, DisplayMetrics displayMetrics) {
        int n = (int)(l >>> 32);
        int n2 = (int)l;
        switch (n) {
            default: {
                throw new IllegalStateException("Unexpected unit or type: " + n);
            }
            case 129: {
                return n2;
            }
            case 128: {
                return TypedValue.complexToDimensionPixelSize(n2, displayMetrics);
            }
            case 0: {
                n = 0;
                do {
                    return Math.round(TypedValue.applyDimension(n, Float.intBitsToFloat(n2), displayMetrics));
                    break;
                } while (true);
            }
            case 1: {
                n = 1;
                return Math.round(TypedValue.applyDimension(n, Float.intBitsToFloat(n2), displayMetrics));
            }
            case 2: {
                n = 2;
                return Math.round(TypedValue.applyDimension(n, Float.intBitsToFloat(n2), displayMetrics));
            }
            case 3: {
                n = 3;
                return Math.round(TypedValue.applyDimension(n, Float.intBitsToFloat(n2), displayMetrics));
            }
            case 4: {
                n = 4;
                return Math.round(TypedValue.applyDimension(n, Float.intBitsToFloat(n2), displayMetrics));
            }
            case 5: 
        }
        n = 5;
        return Math.round(TypedValue.applyDimension(n, Float.intBitsToFloat(n2), displayMetrics));
    }

    public static long a(int n, float f) {
        switch (n) {
            default: {
                throw new IllegalArgumentException("Unrecognized unit: " + n);
            }
            case 0: 
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
        }
        return Dimension.o(n, Float.floatToIntBits(f));
    }

    public static long a(TypedValue typedValue) {
        switch (typedValue.type) {
            default: {
                throw new IllegalArgumentException("Unexpected dimension type: " + typedValue.type);
            }
            case 16: {
                return Dimension.fE(typedValue.data);
            }
            case 5: 
        }
        return Dimension.o(128, typedValue.data);
    }

    public static long fE(int n) {
        if (n < 0) {
            if (n == -1 || n == -2) {
                return Dimension.o(129, n);
            }
            throw new IllegalArgumentException("Unexpected dimension value: " + n);
        }
        return Dimension.a(0, n);
    }

    private static long o(int n, int n2) {
        return (long)n << 32 | (long)n2 & 0xFFFFFFFFL;
    }
}

