/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.n;
import com.google.android.gms.internal.pg;
import java.io.IOException;

class p
implements n {
    private pg kY;
    private byte[] kZ;
    private final int la;

    public p(int n) {
        this.la = n;
        this.reset();
    }

    @Override
    public byte[] A() throws IOException {
        int n = this.kY.qx();
        if (n < 0) {
            throw new IOException();
        }
        if (n == 0) {
            return this.kZ;
        }
        byte[] arrby = new byte[this.kZ.length - n];
        System.arraycopy(this.kZ, 0, arrby, 0, arrby.length);
        return arrby;
    }

    @Override
    public void b(int n, long l) throws IOException {
        this.kY.b(n, l);
    }

    @Override
    public void b(int n, String string) throws IOException {
        this.kY.b(n, string);
    }

    @Override
    public void reset() {
        this.kZ = new byte[this.la];
        this.kY = pg.q(this.kZ);
    }
}

