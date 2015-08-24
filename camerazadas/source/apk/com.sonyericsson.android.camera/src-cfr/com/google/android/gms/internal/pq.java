/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pf;
import java.io.IOException;

public final class pq {
    public static final int[] awW = new int[0];
    public static final long[] awX = new long[0];
    public static final float[] awY = new float[0];
    public static final double[] awZ = new double[0];
    public static final boolean[] axa = new boolean[0];
    public static final String[] axb = new String[0];
    public static final byte[][] axc = new byte[0][];
    public static final byte[] axd = new byte[0];

    public static final int b(pf pf, int n) throws IOException {
        int n2 = 1;
        int n3 = pf.getPosition();
        pf.gn(n);
        while (pf.qi() == n) {
            pf.gn(n);
            ++n2;
        }
        pf.gr(n3);
        return n2;
    }

    static int gH(int n) {
        return n & 7;
    }

    public static int gI(int n) {
        return n >>> 3;
    }

    static int x(int n, int n2) {
        return n << 3 | n2;
    }
}

