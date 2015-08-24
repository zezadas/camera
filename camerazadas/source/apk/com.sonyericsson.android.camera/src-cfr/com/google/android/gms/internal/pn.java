/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pf;
import com.google.android.gms.internal.pg;
import com.google.android.gms.internal.pm;
import com.google.android.gms.internal.po;
import java.io.IOException;

public abstract class pn {
    protected volatile int awU = -1;

    public static final <T extends pn> T a(T t, byte[] arrby) throws pm {
        return pn.b(t, arrby, 0, arrby.length);
    }

    public static final void a(pn pn, byte[] object, int n, int n2) {
        try {
            object = pg.b((byte[])object, n, n2);
            pn.a((pg)object);
            object.qy();
            return;
        }
        catch (IOException var0_1) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", var0_1);
        }
    }

    public static final <T extends pn> T b(T t, byte[] object, int n, int n2) throws pm {
        try {
            object = pf.a((byte[])object, n, n2);
            t.b((pf)object);
            object.gm(0);
        }
        catch (pm var0_1) {
            throw var0_1;
        }
        catch (IOException var0_2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
        return t;
    }

    public static final byte[] f(pn pn) {
        byte[] arrby = new byte[pn.qI()];
        pn.a(pn, arrby, 0, arrby.length);
        return arrby;
    }

    public void a(pg pg) throws IOException {
    }

    public abstract pn b(pf var1) throws IOException;

    protected int c() {
        return 0;
    }

    public int qH() {
        if (this.awU < 0) {
            this.qI();
        }
        return this.awU;
    }

    public int qI() {
        int n;
        this.awU = n = this.c();
        return n;
    }

    public String toString() {
        return po.g(this);
    }
}

