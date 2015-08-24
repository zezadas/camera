/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pn;
import com.google.android.gms.internal.pq;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

public final class pg {
    private final int awI;
    private final byte[] buffer;
    private int position;

    private pg(byte[] arrby, int n, int n2) {
        this.buffer = arrby;
        this.position = n;
        this.awI = n + n2;
    }

    public static int D(long l) {
        return pg.G(l);
    }

    public static int E(long l) {
        return pg.G(pg.I(l));
    }

    public static int G(long l) {
        if ((-128 & l) == 0) {
            return 1;
        }
        if ((-16384 & l) == 0) {
            return 2;
        }
        if ((-2097152 & l) == 0) {
            return 3;
        }
        if ((-268435456 & l) == 0) {
            return 4;
        }
        if ((-34359738368L & l) == 0) {
            return 5;
        }
        if ((-4398046511104L & l) == 0) {
            return 6;
        }
        if ((-562949953421312L & l) == 0) {
            return 7;
        }
        if ((-72057594037927936L & l) == 0) {
            return 8;
        }
        if ((Long.MIN_VALUE & l) == 0) {
            return 9;
        }
        return 10;
    }

    public static long I(long l) {
        return l << true ^ l >> 63;
    }

    public static int V(boolean bl) {
        return 1;
    }

    public static int b(int n, double d) {
        return pg.gz(n) + pg.f(d);
    }

    public static int b(int n, pn pn) {
        return pg.gz(n) * 2 + pg.d(pn);
    }

    public static int b(int n, byte[] arrby) {
        return pg.gz(n) + pg.s(arrby);
    }

    public static pg b(byte[] arrby, int n, int n2) {
        return new pg(arrby, n, n2);
    }

    public static int c(int n, float f) {
        return pg.gz(n) + pg.e(f);
    }

    public static int c(int n, pn pn) {
        return pg.gz(n) + pg.e(pn);
    }

    public static int c(int n, boolean bl) {
        return pg.gz(n) + pg.V(bl);
    }

    public static int d(int n, long l) {
        return pg.gz(n) + pg.D(l);
    }

    public static int d(pn pn) {
        return pn.qI();
    }

    public static int di(String object) {
        try {
            object = object.getBytes("UTF-8");
            int n = pg.gB(object.length);
            int n2 = object.length;
            return n2 + n;
        }
        catch (UnsupportedEncodingException var0_1) {
            throw new RuntimeException("UTF-8 not supported.");
        }
    }

    public static int e(float f) {
        return 4;
    }

    public static int e(int n, long l) {
        return pg.gz(n) + pg.E(l);
    }

    public static int e(pn pn) {
        int n = pn.qI();
        return n + pg.gB(n);
    }

    public static int f(double d) {
        return 8;
    }

    public static int gB(int n) {
        if ((n & -128) == 0) {
            return 1;
        }
        if ((n & -16384) == 0) {
            return 2;
        }
        if ((-2097152 & n) == 0) {
            return 3;
        }
        if ((-268435456 & n) == 0) {
            return 4;
        }
        return 5;
    }

    public static int gD(int n) {
        return n << 1 ^ n >> 31;
    }

    public static int gw(int n) {
        if (n >= 0) {
            return pg.gB(n);
        }
        return 10;
    }

    public static int gx(int n) {
        return pg.gB(pg.gD(n));
    }

    public static int gz(int n) {
        return pg.gB(pq.x(n, 0));
    }

    public static int j(int n, String string) {
        return pg.gz(n) + pg.di(string);
    }

    public static pg q(byte[] arrby) {
        return pg.b(arrby, 0, arrby.length);
    }

    public static int s(byte[] arrby) {
        return pg.gB(arrby.length) + arrby.length;
    }

    public static int u(int n, int n2) {
        return pg.gz(n) + pg.gw(n2);
    }

    public static int v(int n, int n2) {
        return pg.gz(n) + pg.gx(n2);
    }

    public void B(long l) throws IOException {
        this.F(l);
    }

    public void C(long l) throws IOException {
        this.F(pg.I(l));
    }

    public void F(long l) throws IOException {
        do {
            if ((-128 & l) == 0) {
                this.gy((int)l);
                return;
            }
            this.gy((int)l & 127 | 128);
            l>>>=7;
        } while (true);
    }

    public void H(long l) throws IOException {
        this.gy((int)l & 255);
        this.gy((int)(l >> 8) & 255);
        this.gy((int)(l >> 16) & 255);
        this.gy((int)(l >> 24) & 255);
        this.gy((int)(l >> 32) & 255);
        this.gy((int)(l >> 40) & 255);
        this.gy((int)(l >> 48) & 255);
        this.gy((int)(l >> 56) & 255);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void U(boolean bl) throws IOException {
        int n = bl ? 1 : 0;
        this.gy(n);
    }

    public void a(int n, double d) throws IOException {
        this.w(n, 1);
        this.e(d);
    }

    public void a(int n, pn pn) throws IOException {
        this.w(n, 2);
        this.c(pn);
    }

    public void a(int n, byte[] arrby) throws IOException {
        this.w(n, 2);
        this.r(arrby);
    }

    public void b(byte by) throws IOException {
        if (this.position == this.awI) {
            throw new a(this.position, this.awI);
        }
        byte[] arrby = this.buffer;
        int n = this.position;
        this.position = n + 1;
        arrby[n] = by;
    }

    public void b(int n, float f) throws IOException {
        this.w(n, 5);
        this.d(f);
    }

    public void b(int n, long l) throws IOException {
        this.w(n, 0);
        this.B(l);
    }

    public void b(int n, String string) throws IOException {
        this.w(n, 2);
        this.dh(string);
    }

    public void b(int n, boolean bl) throws IOException {
        this.w(n, 0);
        this.U(bl);
    }

    public void b(pn pn) throws IOException {
        pn.a(this);
    }

    public void c(int n, long l) throws IOException {
        this.w(n, 0);
        this.C(l);
    }

    public void c(pn pn) throws IOException {
        this.gA(pn.qH());
        pn.a(this);
    }

    public void c(byte[] arrby, int n, int n2) throws IOException {
        if (this.awI - this.position >= n2) {
            System.arraycopy(arrby, n, this.buffer, this.position, n2);
            this.position+=n2;
            return;
        }
        throw new a(this.position, this.awI);
    }

    public void d(float f) throws IOException {
        this.gC(Float.floatToIntBits(f));
    }

    public void dh(String object) throws IOException {
        object = object.getBytes("UTF-8");
        this.gA(object.length);
        this.t((byte[])object);
    }

    public void e(double d) throws IOException {
        this.H(Double.doubleToLongBits(d));
    }

    public void gA(int n) throws IOException {
        do {
            if ((n & -128) == 0) {
                this.gy(n);
                return;
            }
            this.gy(n & 127 | 128);
            n>>>=7;
        } while (true);
    }

    public void gC(int n) throws IOException {
        this.gy(n & 255);
        this.gy(n >> 8 & 255);
        this.gy(n >> 16 & 255);
        this.gy(n >> 24 & 255);
    }

    public void gu(int n) throws IOException {
        if (n >= 0) {
            this.gA(n);
            return;
        }
        this.F(n);
    }

    public void gv(int n) throws IOException {
        this.gA(pg.gD(n));
    }

    public void gy(int n) throws IOException {
        this.b((byte)n);
    }

    public int qx() {
        return this.awI - this.position;
    }

    public void qy() {
        if (this.qx() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public void r(byte[] arrby) throws IOException {
        this.gA(arrby.length);
        this.t(arrby);
    }

    public void s(int n, int n2) throws IOException {
        this.w(n, 0);
        this.gu(n2);
    }

    public void t(int n, int n2) throws IOException {
        this.w(n, 0);
        this.gv(n2);
    }

    public void t(byte[] arrby) throws IOException {
        this.c(arrby, 0, arrby.length);
    }

    public void w(int n, int n2) throws IOException {
        this.gA(pq.x(n, n2));
    }

    public static class a
    extends IOException {
        a(int n, int n2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + n + " limit " + n2 + ").");
        }
    }

}

