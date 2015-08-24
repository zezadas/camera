/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pm;
import com.google.android.gms.internal.pn;
import com.google.android.gms.internal.pq;
import java.io.IOException;

public final class pf {
    private int awA;
    private int awB;
    private int awC;
    private int awD;
    private int awE = Integer.MAX_VALUE;
    private int awF;
    private int awG = 64;
    private int awH = 67108864;
    private int awz;
    private final byte[] buffer;

    private pf(byte[] arrby, int n, int n2) {
        this.buffer = arrby;
        this.awz = n;
        this.awA = n + n2;
        this.awC = n;
    }

    public static long A(long l) {
        return l >>> true ^ - (1 & l);
    }

    public static pf a(byte[] arrby, int n, int n2) {
        return new pf(arrby, n, n2);
    }

    public static int go(int n) {
        return n >>> 1 ^ - (n & 1);
    }

    public static pf p(byte[] arrby) {
        return pf.a(arrby, 0, arrby.length);
    }

    private void qt() {
        this.awA+=this.awB;
        int n = this.awA;
        if (n > this.awE) {
            this.awB = n - this.awE;
            this.awA-=this.awB;
            return;
        }
        this.awB = 0;
    }

    public void a(pn pn) throws IOException {
        int n = this.qp();
        if (this.awF >= this.awG) {
            throw pm.qG();
        }
        n = this.gp(n);
        ++this.awF;
        pn.b(this);
        this.gm(0);
        --this.awF;
        this.gq(n);
    }

    public void a(pn pn, int n) throws IOException {
        if (this.awF >= this.awG) {
            throw pm.qG();
        }
        ++this.awF;
        pn.b(this);
        this.gm(pq.x(n, 4));
        --this.awF;
    }

    public int getPosition() {
        return this.awC - this.awz;
    }

    public void gm(int n) throws pm {
        if (this.awD != n) {
            throw pm.qE();
        }
    }

    public boolean gn(int n) throws IOException {
        switch (pq.gH(n)) {
            default: {
                throw pm.qF();
            }
            case 0: {
                this.ql();
                return true;
            }
            case 1: {
                this.qs();
                return true;
            }
            case 2: {
                this.gt(this.qp());
                return true;
            }
            case 3: {
                this.qj();
                this.gm(pq.x(pq.gI(n), 4));
                return true;
            }
            case 4: {
                return false;
            }
            case 5: 
        }
        this.qr();
        return true;
    }

    public int gp(int n) throws pm {
        if (n < 0) {
            throw pm.qB();
        }
        int n2 = this.awE;
        if ((n = this.awC + n) > n2) {
            throw pm.qA();
        }
        this.awE = n;
        this.qt();
        return n2;
    }

    public void gq(int n) {
        this.awE = n;
        this.qt();
    }

    public void gr(int n) {
        if (n > this.awC - this.awz) {
            throw new IllegalArgumentException("Position " + n + " is beyond current " + (this.awC - this.awz));
        }
        if (n < 0) {
            throw new IllegalArgumentException("Bad position " + n);
        }
        this.awC = this.awz + n;
    }

    public byte[] gs(int n) throws IOException {
        if (n < 0) {
            throw pm.qB();
        }
        if (this.awC + n > this.awE) {
            this.gt(this.awE - this.awC);
            throw pm.qA();
        }
        if (n <= this.awA - this.awC) {
            byte[] arrby = new byte[n];
            System.arraycopy(this.buffer, this.awC, arrby, 0, n);
            this.awC+=n;
            return arrby;
        }
        throw pm.qA();
    }

    public void gt(int n) throws IOException {
        if (n < 0) {
            throw pm.qB();
        }
        if (this.awC + n > this.awE) {
            this.gt(this.awE - this.awC);
            throw pm.qA();
        }
        if (n <= this.awA - this.awC) {
            this.awC+=n;
            return;
        }
        throw pm.qA();
    }

    public int qi() throws IOException {
        if (this.qv()) {
            this.awD = 0;
            return 0;
        }
        this.awD = this.qp();
        if (this.awD == 0) {
            throw pm.qD();
        }
        return this.awD;
    }

    public void qj() throws IOException {
        int n;
        while ((n = this.qi()) != 0 && this.gn(n)) {
        }
    }

    public long qk() throws IOException {
        return this.qq();
    }

    public int ql() throws IOException {
        return this.qp();
    }

    public boolean qm() throws IOException {
        if (this.qp() != 0) {
            return true;
        }
        return false;
    }

    public int qn() throws IOException {
        return pf.go(this.qp());
    }

    public long qo() throws IOException {
        return pf.A(this.qq());
    }

    /*
     * Enabled aggressive block sorting
     */
    public int qp() throws IOException {
        int n = this.qw();
        if (n < 0) {
            n&=127;
            int n2 = this.qw();
            if (n2 >= 0) {
                return n | n2 << 7;
            }
            n|=(n2 & 127) << 7;
            n2 = this.qw();
            if (n2 >= 0) {
                return n | n2 << 14;
            }
            n|=(n2 & 127) << 14;
            int n3 = this.qw();
            if (n3 >= 0) {
                return n | n3 << 21;
            }
            n2 = this.qw();
            n = n3 = n | (n3 & 127) << 21 | n2 << 28;
            if (n2 < 0) {
                n2 = 0;
                do {
                    if (n2 >= 5) {
                        throw pm.qC();
                    }
                    n = n3;
                    if (this.qw() >= 0) break;
                    ++n2;
                } while (true);
            }
        }
        return n;
    }

    public long qq() throws IOException {
        long l = 0;
        for (int i = 0; i < 64; i+=7) {
            byte by = this.qw();
            l|=(long)(by & 127) << i;
            if ((by & 128) != 0) continue;
            return l;
        }
        throw pm.qC();
    }

    public int qr() throws IOException {
        return this.qw() & 255 | (this.qw() & 255) << 8 | (this.qw() & 255) << 16 | (this.qw() & 255) << 24;
    }

    public long qs() throws IOException {
        byte by = this.qw();
        byte by2 = this.qw();
        byte by3 = this.qw();
        byte by4 = this.qw();
        byte by5 = this.qw();
        byte by6 = this.qw();
        byte by7 = this.qw();
        byte by8 = this.qw();
        long l = by;
        return ((long)by2 & 255) << 8 | l & 255 | ((long)by3 & 255) << 16 | ((long)by4 & 255) << 24 | ((long)by5 & 255) << 32 | ((long)by6 & 255) << 40 | ((long)by7 & 255) << 48 | ((long)by8 & 255) << 56;
    }

    public int qu() {
        if (this.awE == Integer.MAX_VALUE) {
            return -1;
        }
        int n = this.awC;
        return this.awE - n;
    }

    public boolean qv() {
        if (this.awC == this.awA) {
            return true;
        }
        return false;
    }

    public byte qw() throws IOException {
        if (this.awC == this.awA) {
            throw pm.qA();
        }
        byte[] arrby = this.buffer;
        int n = this.awC;
        this.awC = n + 1;
        return arrby[n];
    }

    public byte[] r(int n, int n2) {
        if (n2 == 0) {
            return pq.axd;
        }
        byte[] arrby = new byte[n2];
        int n3 = this.awz;
        System.arraycopy(this.buffer, n3 + n, arrby, 0, n2);
        return arrby;
    }

    public byte[] readBytes() throws IOException {
        int n = this.qp();
        if (n <= this.awA - this.awC && n > 0) {
            byte[] arrby = new byte[n];
            System.arraycopy(this.buffer, this.awC, arrby, 0, n);
            this.awC = n + this.awC;
            return arrby;
        }
        return this.gs(n);
    }

    public double readDouble() throws IOException {
        return Double.longBitsToDouble(this.qs());
    }

    public float readFloat() throws IOException {
        return Float.intBitsToFloat(this.qr());
    }

    public String readString() throws IOException {
        int n = this.qp();
        if (n <= this.awA - this.awC && n > 0) {
            String string = new String(this.buffer, this.awC, n, "UTF-8");
            this.awC = n + this.awC;
            return string;
        }
        return new String(this.gs(n), "UTF-8");
    }
}

