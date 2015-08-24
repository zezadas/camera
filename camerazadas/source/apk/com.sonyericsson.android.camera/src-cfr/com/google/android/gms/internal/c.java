/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.d;
import com.google.android.gms.internal.pf;
import com.google.android.gms.internal.pg;
import com.google.android.gms.internal.ph;
import com.google.android.gms.internal.pi;
import com.google.android.gms.internal.pj;
import com.google.android.gms.internal.pl;
import com.google.android.gms.internal.pm;
import com.google.android.gms.internal.pn;
import com.google.android.gms.internal.pq;
import java.io.IOException;

public interface c {

    public static final class a
    extends ph<a> {
        public int fn;
        public int fo;
        public int level;

        public a() {
            this.b();
        }

        public a a(pf pf) throws IOException {
            block9 : do {
                int n = pf.qi();
                switch (n) {
                    default: {
                        if (this.a(pf, n)) continue block9;
                    }
                    case 0: {
                        return this;
                    }
                    case 8: {
                        n = pf.ql();
                        switch (n) {
                            default: {
                                continue block9;
                            }
                            case 1: 
                            case 2: 
                            case 3: 
                        }
                        this.level = n;
                        continue block9;
                    }
                    case 16: {
                        this.fn = pf.ql();
                        continue block9;
                    }
                    case 24: 
                }
                this.fo = pf.ql();
            } while (true);
        }

        @Override
        public void a(pg pg) throws IOException {
            if (this.level != 1) {
                pg.s(1, this.level);
            }
            if (this.fn != 0) {
                pg.s(2, this.fn);
            }
            if (this.fo != 0) {
                pg.s(3, this.fo);
            }
            super.a(pg);
        }

        public a b() {
            this.level = 1;
            this.fn = 0;
            this.fo = 0;
            this.awJ = null;
            this.awU = -1;
            return this;
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.a(pf);
        }

        @Override
        protected int c() {
            int n;
            int n2 = n = super.c();
            if (this.level != 1) {
                n2 = n + pg.u(1, this.level);
            }
            n = n2;
            if (this.fn != 0) {
                n = n2 + pg.u(2, this.fn);
            }
            n2 = n;
            if (this.fo != 0) {
                n2 = n + pg.u(3, this.fo);
            }
            return n2;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            boolean bl = false;
            if (object == this) {
                return true;
            }
            boolean bl2 = bl;
            if (!(object instanceof a)) return bl2;
            object = (a)object;
            bl2 = bl;
            if (this.level != object.level) return bl2;
            bl2 = bl;
            if (this.fn != object.fn) return bl2;
            bl2 = bl;
            if (this.fo != object.fo) return bl2;
            return this.a(object);
        }

        public int hashCode() {
            return (((this.level + 527) * 31 + this.fn) * 31 + this.fo) * 31 + this.qz();
        }
    }

    public static final class b
    extends ph<b> {
        private static volatile b[] fp;
        public int[] fq;
        public int fr;
        public boolean fs;
        public boolean ft;
        public int name;

        public b() {
            this.e();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public static b[] d() {
            if (fp == null) {
                Object object = pl.awT;
                synchronized (object) {
                    if (fp == null) {
                        fp = new b[0];
                    }
                }
            }
            return fp;
        }

        @Override
        public void a(pg pg) throws IOException {
            if (this.ft) {
                pg.b(1, this.ft);
            }
            pg.s(2, this.fr);
            if (this.fq != null && this.fq.length > 0) {
                for (int i = 0; i < this.fq.length; ++i) {
                    pg.s(3, this.fq[i]);
                }
            }
            if (this.name != 0) {
                pg.s(4, this.name);
            }
            if (this.fs) {
                pg.b(6, this.fs);
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.c(pf);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        protected int c() {
            int n;
            int n2 = 0;
            int n3 = n = super.c();
            if (this.ft) {
                n3 = n + pg.c(1, this.ft);
            }
            n = pg.u(2, this.fr) + n3;
            if (this.fq != null && this.fq.length > 0) {
                for (n3 = 0; n3 < this.fq.length; n2+=pg.gw((int)this.fq[n3]), ++n3) {
                }
                n2 = n + n2 + this.fq.length * 1;
            } else {
                n2 = n;
            }
            n3 = n2;
            if (this.name != 0) {
                n3 = n2 + pg.u(4, this.name);
            }
            n2 = n3;
            if (!this.fs) return n2;
            return n3 + pg.c(6, this.fs);
        }

        /*
         * Enabled aggressive block sorting
         */
        public b c(pf pf) throws IOException {
            block9 : do {
                int n = pf.qi();
                switch (n) {
                    int[] arrn;
                    int n2;
                    default: {
                        if (this.a(pf, n)) continue block9;
                    }
                    case 0: {
                        return this;
                    }
                    case 8: {
                        this.ft = pf.qm();
                        continue block9;
                    }
                    case 16: {
                        this.fr = pf.ql();
                        continue block9;
                    }
                    case 24: {
                        n2 = pq.b(pf, 24);
                        n = this.fq == null ? 0 : this.fq.length;
                        arrn = new int[n2 + n];
                        n2 = n;
                        if (n != 0) {
                            System.arraycopy(this.fq, 0, arrn, 0, n);
                            n2 = n;
                        }
                        for (; n2 < arrn.length - 1; ++n2) {
                            arrn[n2] = pf.ql();
                            pf.qi();
                        }
                        arrn[n2] = pf.ql();
                        this.fq = arrn;
                        continue block9;
                    }
                    case 26: {
                        int n3 = pf.gp(pf.qp());
                        n = pf.getPosition();
                        n2 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n2;
                        }
                        pf.gr(n);
                        n = this.fq == null ? 0 : this.fq.length;
                        arrn = new int[n2 + n];
                        n2 = n;
                        if (n != 0) {
                            System.arraycopy(this.fq, 0, arrn, 0, n);
                            n2 = n;
                        }
                        for (; n2 < arrn.length; ++n2) {
                            arrn[n2] = pf.ql();
                        }
                        this.fq = arrn;
                        pf.gq(n3);
                        continue block9;
                    }
                    case 32: {
                        this.name = pf.ql();
                        continue block9;
                    }
                    case 48: 
                }
                this.fs = pf.qm();
            } while (true);
        }

        public b e() {
            this.fq = pq.awW;
            this.fr = 0;
            this.name = 0;
            this.fs = false;
            this.ft = false;
            this.awJ = null;
            this.awU = -1;
            return this;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            boolean bl = false;
            if (object == this) {
                return true;
            }
            boolean bl2 = bl;
            if (!(object instanceof b)) return bl2;
            object = (b)object;
            bl2 = bl;
            if (!pl.equals(this.fq, object.fq)) return bl2;
            bl2 = bl;
            if (this.fr != object.fr) return bl2;
            bl2 = bl;
            if (this.name != object.name) return bl2;
            bl2 = bl;
            if (this.fs != object.fs) return bl2;
            bl2 = bl;
            if (this.ft != object.ft) return bl2;
            return this.a(object);
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n = 1231;
            int n2 = pl.hashCode(this.fq);
            int n3 = this.fr;
            int n4 = this.name;
            int n5 = this.fs ? 1231 : 1237;
            if (this.ft) {
                return ((n5 + (((n2 + 527) * 31 + n3) * 31 + n4) * 31) * 31 + n) * 31 + this.qz();
            }
            n = 1237;
            return ((n5 + (((n2 + 527) * 31 + n3) * 31 + n4) * 31) * 31 + n) * 31 + this.qz();
        }
    }

    public static final class c
    extends ph<c> {
        private static volatile c[] fu;
        public String fv;
        public long fw;
        public long fx;
        public boolean fy;
        public long fz;

        public c() {
            this.g();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public static c[] f() {
            if (fu == null) {
                Object object = pl.awT;
                synchronized (object) {
                    if (fu == null) {
                        fu = new c[0];
                    }
                }
            }
            return fu;
        }

        @Override
        public void a(pg pg) throws IOException {
            if (!this.fv.equals("")) {
                pg.b(1, this.fv);
            }
            if (this.fw != 0) {
                pg.b(2, this.fw);
            }
            if (this.fx != Integer.MAX_VALUE) {
                pg.b(3, this.fx);
            }
            if (this.fy) {
                pg.b(4, this.fy);
            }
            if (this.fz != 0) {
                pg.b(5, this.fz);
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.d(pf);
        }

        @Override
        protected int c() {
            int n;
            int n2 = n = super.c();
            if (!this.fv.equals("")) {
                n2 = n + pg.j(1, this.fv);
            }
            n = n2;
            if (this.fw != 0) {
                n = n2 + pg.d(2, this.fw);
            }
            n2 = n;
            if (this.fx != Integer.MAX_VALUE) {
                n2 = n + pg.d(3, this.fx);
            }
            n = n2;
            if (this.fy) {
                n = n2 + pg.c(4, this.fy);
            }
            n2 = n;
            if (this.fz != 0) {
                n2 = n + pg.d(5, this.fz);
            }
            return n2;
        }

        public c d(pf pf) throws IOException {
            block8 : do {
                int n = pf.qi();
                switch (n) {
                    default: {
                        if (this.a(pf, n)) continue block8;
                    }
                    case 0: {
                        return this;
                    }
                    case 10: {
                        this.fv = pf.readString();
                        continue block8;
                    }
                    case 16: {
                        this.fw = pf.qk();
                        continue block8;
                    }
                    case 24: {
                        this.fx = pf.qk();
                        continue block8;
                    }
                    case 32: {
                        this.fy = pf.qm();
                        continue block8;
                    }
                    case 40: 
                }
                this.fz = pf.qk();
            } while (true);
        }

        /*
         * Enabled aggressive block sorting
         */
        public boolean equals(Object object) {
            boolean bl = false;
            if (object == this) {
                return true;
            }
            boolean bl2 = bl;
            if (!(object instanceof c)) return bl2;
            object = (c)object;
            if (this.fv == null) {
                bl2 = bl;
                if (object.fv != null) return bl2;
            } else if (!this.fv.equals(object.fv)) {
                return false;
            }
            bl2 = bl;
            if (this.fw != object.fw) return bl2;
            bl2 = bl;
            if (this.fx != object.fx) return bl2;
            bl2 = bl;
            if (this.fy != object.fy) return bl2;
            bl2 = bl;
            if (this.fz != object.fz) return bl2;
            return this.a(object);
        }

        public c g() {
            this.fv = "";
            this.fw = 0;
            this.fx = Integer.MAX_VALUE;
            this.fy = false;
            this.fz = 0;
            this.awJ = null;
            this.awU = -1;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n;
            int n2 = this.fv == null ? 0 : this.fv.hashCode();
            int n3 = (int)(this.fw ^ this.fw >>> 32);
            int n4 = (int)(this.fx ^ this.fx >>> 32);
            if (this.fy) {
                n = 1231;
                return ((n + (((n2 + 527) * 31 + n3) * 31 + n4) * 31) * 31 + (int)(this.fz ^ this.fz >>> 32)) * 31 + this.qz();
            }
            n = 1237;
            return ((n + (((n2 + 527) * 31 + n3) * 31 + n4) * 31) * 31 + (int)(this.fz ^ this.fz >>> 32)) * 31 + this.qz();
        }
    }

    public static final class d
    extends ph<d> {
        public d.a[] fA;
        public d.a[] fB;
        public c[] fC;

        public d() {
            this.h();
        }

        @Override
        public void a(pg pg) throws IOException {
            int n;
            int n2 = 0;
            if (this.fA != null && this.fA.length > 0) {
                for (n = 0; n < this.fA.length; ++n) {
                    d.a a = this.fA[n];
                    if (a == null) continue;
                    pg.a(1, a);
                }
            }
            if (this.fB != null && this.fB.length > 0) {
                for (n = 0; n < this.fB.length; ++n) {
                    d.a a = this.fB[n];
                    if (a == null) continue;
                    pg.a(2, a);
                }
            }
            if (this.fC != null && this.fC.length > 0) {
                for (n = n2; n < this.fC.length; ++n) {
                    c c = this.fC[n];
                    if (c == null) continue;
                    pg.a(3, c);
                }
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.e(pf);
        }

        @Override
        protected int c() {
            int n;
            int n2;
            int n3 = 0;
            int n4 = n = super.c();
            if (this.fA != null) {
                n4 = n;
                if (this.fA.length > 0) {
                    for (n4 = 0; n4 < this.fA.length; ++n4) {
                        d.a a = this.fA[n4];
                        n2 = n;
                        if (a != null) {
                            n2 = n + pg.c(1, a);
                        }
                        n = n2;
                    }
                    n4 = n;
                }
            }
            n = n4;
            if (this.fB != null) {
                n = n4;
                if (this.fB.length > 0) {
                    n = n4;
                    for (n4 = 0; n4 < this.fB.length; ++n4) {
                        d.a a = this.fB[n4];
                        n2 = n;
                        if (a != null) {
                            n2 = n + pg.c(2, a);
                        }
                        n = n2;
                    }
                }
            }
            n2 = n;
            if (this.fC != null) {
                n2 = n;
                if (this.fC.length > 0) {
                    n4 = n3;
                    do {
                        n2 = n;
                        if (n4 >= this.fC.length) break;
                        c c = this.fC[n4];
                        n2 = n;
                        if (c != null) {
                            n2 = n + pg.c(3, c);
                        }
                        ++n4;
                        n = n2;
                    } while (true);
                }
            }
            return n2;
        }

        /*
         * Enabled aggressive block sorting
         */
        public d e(pf pf) throws IOException {
            block6 : do {
                int n;
                d.a[] arra;
                int n2 = pf.qi();
                switch (n2) {
                    default: {
                        if (this.a(pf, n2)) continue block6;
                    }
                    case 0: {
                        return this;
                    }
                    case 10: {
                        n = pq.b(pf, 10);
                        n2 = this.fA == null ? 0 : this.fA.length;
                        arra = new d.a[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.fA, 0, arra, 0, n2);
                            n = n2;
                        }
                        for (; n < arra.length - 1; ++n) {
                            arra[n] = new d.a();
                            pf.a(arra[n]);
                            pf.qi();
                        }
                        arra[n] = new d.a();
                        pf.a(arra[n]);
                        this.fA = arra;
                        continue block6;
                    }
                    case 18: {
                        n = pq.b(pf, 18);
                        n2 = this.fB == null ? 0 : this.fB.length;
                        arra = new d.a[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.fB, 0, arra, 0, n2);
                            n = n2;
                        }
                        for (; n < arra.length - 1; ++n) {
                            arra[n] = new d.a();
                            pf.a(arra[n]);
                            pf.qi();
                        }
                        arra[n] = new d.a();
                        pf.a(arra[n]);
                        this.fB = arra;
                        continue block6;
                    }
                    case 26: 
                }
                n = pq.b(pf, 26);
                n2 = this.fC == null ? 0 : this.fC.length;
                arra = new c[n + n2];
                n = n2;
                if (n2 != 0) {
                    System.arraycopy(this.fC, 0, arra, 0, n2);
                    n = n2;
                }
                for (; n < arra.length - 1; ++n) {
                    arra[n] = new c();
                    pf.a(arra[n]);
                    pf.qi();
                }
                arra[n] = new c();
                pf.a(arra[n]);
                this.fC = arra;
            } while (true);
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            boolean bl = false;
            if (object == this) {
                return true;
            }
            boolean bl2 = bl;
            if (!(object instanceof d)) return bl2;
            object = (d)object;
            bl2 = bl;
            if (!pl.equals(this.fA, object.fA)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fB, object.fB)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fC, object.fC)) return bl2;
            return this.a(object);
        }

        public d h() {
            this.fA = d.a.r();
            this.fB = d.a.r();
            this.fC = c.f();
            this.awJ = null;
            this.awU = -1;
            return this;
        }

        public int hashCode() {
            return (((pl.hashCode(this.fA) + 527) * 31 + pl.hashCode(this.fB)) * 31 + pl.hashCode(this.fC)) * 31 + this.qz();
        }
    }

    public static final class e
    extends ph<e> {
        private static volatile e[] fD;
        public int key;
        public int value;

        public e() {
            this.j();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public static e[] i() {
            if (fD == null) {
                Object object = pl.awT;
                synchronized (object) {
                    if (fD == null) {
                        fD = new e[0];
                    }
                }
            }
            return fD;
        }

        @Override
        public void a(pg pg) throws IOException {
            pg.s(1, this.key);
            pg.s(2, this.value);
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.f(pf);
        }

        @Override
        protected int c() {
            return super.c() + pg.u(1, this.key) + pg.u(2, this.value);
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            boolean bl = false;
            if (object == this) {
                return true;
            }
            boolean bl2 = bl;
            if (!(object instanceof e)) return bl2;
            object = (e)object;
            bl2 = bl;
            if (this.key != object.key) return bl2;
            bl2 = bl;
            if (this.value != object.value) return bl2;
            return this.a(object);
        }

        public e f(pf pf) throws IOException {
            block5 : do {
                int n = pf.qi();
                switch (n) {
                    default: {
                        if (this.a(pf, n)) continue block5;
                    }
                    case 0: {
                        return this;
                    }
                    case 8: {
                        this.key = pf.ql();
                        continue block5;
                    }
                    case 16: 
                }
                this.value = pf.ql();
            } while (true);
        }

        public int hashCode() {
            return ((this.key + 527) * 31 + this.value) * 31 + this.qz();
        }

        public e j() {
            this.key = 0;
            this.value = 0;
            this.awJ = null;
            this.awU = -1;
            return this;
        }
    }

    public static final class f
    extends ph<f> {
        public String[] fE;
        public String[] fF;
        public d.a[] fG;
        public e[] fH;
        public b[] fI;
        public b[] fJ;
        public b[] fK;
        public g[] fL;
        public String fM;
        public String fN;
        public String fO;
        public a fP;
        public float fQ;
        public boolean fR;
        public String[] fS;
        public int fT;
        public String version;

        public f() {
            this.k();
        }

        public static f a(byte[] arrby) throws pm {
            return pn.a(new f(), arrby);
        }

        @Override
        public void a(pg pg) throws IOException {
            Object object;
            int n;
            int n2 = 0;
            if (this.fF != null && this.fF.length > 0) {
                for (n = 0; n < this.fF.length; ++n) {
                    object = this.fF[n];
                    if (object == null) continue;
                    pg.b(1, (String)object);
                }
            }
            if (this.fG != null && this.fG.length > 0) {
                for (n = 0; n < this.fG.length; ++n) {
                    object = this.fG[n];
                    if (object == null) continue;
                    pg.a(2, (pn)object);
                }
            }
            if (this.fH != null && this.fH.length > 0) {
                for (n = 0; n < this.fH.length; ++n) {
                    object = this.fH[n];
                    if (object == null) continue;
                    pg.a(3, (pn)object);
                }
            }
            if (this.fI != null && this.fI.length > 0) {
                for (n = 0; n < this.fI.length; ++n) {
                    object = this.fI[n];
                    if (object == null) continue;
                    pg.a(4, (pn)object);
                }
            }
            if (this.fJ != null && this.fJ.length > 0) {
                for (n = 0; n < this.fJ.length; ++n) {
                    object = this.fJ[n];
                    if (object == null) continue;
                    pg.a(5, (pn)object);
                }
            }
            if (this.fK != null && this.fK.length > 0) {
                for (n = 0; n < this.fK.length; ++n) {
                    object = this.fK[n];
                    if (object == null) continue;
                    pg.a(6, (pn)object);
                }
            }
            if (this.fL != null && this.fL.length > 0) {
                for (n = 0; n < this.fL.length; ++n) {
                    object = this.fL[n];
                    if (object == null) continue;
                    pg.a(7, (pn)object);
                }
            }
            if (!this.fM.equals("")) {
                pg.b(9, this.fM);
            }
            if (!this.fN.equals("")) {
                pg.b(10, this.fN);
            }
            if (!this.fO.equals("0")) {
                pg.b(12, this.fO);
            }
            if (!this.version.equals("")) {
                pg.b(13, this.version);
            }
            if (this.fP != null) {
                pg.a(14, this.fP);
            }
            if (Float.floatToIntBits(this.fQ) != Float.floatToIntBits(0.0f)) {
                pg.b(15, this.fQ);
            }
            if (this.fS != null && this.fS.length > 0) {
                for (n = 0; n < this.fS.length; ++n) {
                    object = this.fS[n];
                    if (object == null) continue;
                    pg.b(16, (String)object);
                }
            }
            if (this.fT != 0) {
                pg.s(17, this.fT);
            }
            if (this.fR) {
                pg.b(18, this.fR);
            }
            if (this.fE != null && this.fE.length > 0) {
                for (n = n2; n < this.fE.length; ++n) {
                    object = this.fE[n];
                    if (object == null) continue;
                    pg.b(19, (String)object);
                }
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.g(pf);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        protected int c() {
            int n;
            int n2;
            int n3;
            int n4;
            int n5;
            Object object;
            int n6 = 0;
            int n7 = super.c();
            if (this.fF != null && this.fF.length > 0) {
                n4 = 0;
                n3 = 0;
                for (n = 0; n < this.fF.length; ++n) {
                    object = this.fF[n];
                    n5 = n4;
                    n2 = n3;
                    if (object != null) {
                        n2 = n3 + 1;
                        n5 = n4 + pg.di((String)object);
                    }
                    n4 = n5;
                    n3 = n2;
                }
                n4 = n7 + n4 + n3 * 1;
            } else {
                n4 = n7;
            }
            n = n4;
            if (this.fG != null) {
                n = n4;
                if (this.fG.length > 0) {
                    n = n4;
                    for (n4 = 0; n4 < this.fG.length; ++n4) {
                        object = this.fG[n4];
                        n3 = n;
                        if (object != null) {
                            n3 = n + pg.c(2, (pn)object);
                        }
                        n = n3;
                    }
                }
            }
            n4 = n;
            if (this.fH != null) {
                n4 = n;
                if (this.fH.length > 0) {
                    for (n4 = 0; n4 < this.fH.length; ++n4) {
                        object = this.fH[n4];
                        n3 = n;
                        if (object != null) {
                            n3 = n + pg.c(3, (pn)object);
                        }
                        n = n3;
                    }
                    n4 = n;
                }
            }
            n = n4;
            if (this.fI != null) {
                n = n4;
                if (this.fI.length > 0) {
                    n = n4;
                    for (n4 = 0; n4 < this.fI.length; ++n4) {
                        object = this.fI[n4];
                        n3 = n;
                        if (object != null) {
                            n3 = n + pg.c(4, (pn)object);
                        }
                        n = n3;
                    }
                }
            }
            n4 = n;
            if (this.fJ != null) {
                n4 = n;
                if (this.fJ.length > 0) {
                    for (n4 = 0; n4 < this.fJ.length; ++n4) {
                        object = this.fJ[n4];
                        n3 = n;
                        if (object != null) {
                            n3 = n + pg.c(5, (pn)object);
                        }
                        n = n3;
                    }
                    n4 = n;
                }
            }
            n = n4;
            if (this.fK != null) {
                n = n4;
                if (this.fK.length > 0) {
                    n = n4;
                    for (n4 = 0; n4 < this.fK.length; ++n4) {
                        object = this.fK[n4];
                        n3 = n;
                        if (object != null) {
                            n3 = n + pg.c(6, (pn)object);
                        }
                        n = n3;
                    }
                }
            }
            n4 = n;
            if (this.fL != null) {
                n4 = n;
                if (this.fL.length > 0) {
                    for (n4 = 0; n4 < this.fL.length; ++n4) {
                        object = this.fL[n4];
                        n3 = n;
                        if (object != null) {
                            n3 = n + pg.c(7, (pn)object);
                        }
                        n = n3;
                    }
                    n4 = n;
                }
            }
            n = n4;
            if (!this.fM.equals("")) {
                n = n4 + pg.j(9, this.fM);
            }
            n4 = n;
            if (!this.fN.equals("")) {
                n4 = n + pg.j(10, this.fN);
            }
            n = n4;
            if (!this.fO.equals("0")) {
                n = n4 + pg.j(12, this.fO);
            }
            n4 = n;
            if (!this.version.equals("")) {
                n4 = n + pg.j(13, this.version);
            }
            n3 = n4;
            if (this.fP != null) {
                n3 = n4 + pg.c(14, this.fP);
            }
            n = n3;
            if (Float.floatToIntBits(this.fQ) != Float.floatToIntBits(0.0f)) {
                n = n3 + pg.c(15, this.fQ);
            }
            n4 = n;
            if (this.fS != null) {
                n4 = n;
                if (this.fS.length > 0) {
                    n3 = 0;
                    n2 = 0;
                    for (n4 = 0; n4 < this.fS.length; ++n4) {
                        object = this.fS[n4];
                        n7 = n3;
                        n5 = n2;
                        if (object != null) {
                            n5 = n2 + 1;
                            n7 = n3 + pg.di((String)object);
                        }
                        n3 = n7;
                        n2 = n5;
                    }
                    n4 = n + n3 + n2 * 2;
                }
            }
            n3 = n4;
            if (this.fT != 0) {
                n3 = n4 + pg.u(17, this.fT);
            }
            n = n3;
            if (this.fR) {
                n = n3 + pg.c(18, this.fR);
            }
            n4 = n;
            if (this.fE == null) return n4;
            n4 = n;
            if (this.fE.length <= 0) return n4;
            n3 = 0;
            n2 = 0;
            n4 = n6;
            for (; n4 < this.fE.length; ++n4) {
                object = this.fE[n4];
                n7 = n3;
                n5 = n2;
                if (object != null) {
                    n5 = n2 + 1;
                    n7 = n3 + pg.di((String)object);
                }
                n3 = n7;
                n2 = n5;
            }
            return n + n3 + n2 * 2;
        }

        /*
         * Enabled aggressive block sorting
         */
        public boolean equals(Object object) {
            boolean bl = false;
            if (object == this) {
                return true;
            }
            boolean bl2 = bl;
            if (!(object instanceof f)) return bl2;
            object = (f)object;
            bl2 = bl;
            if (!pl.equals(this.fE, object.fE)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fF, object.fF)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fG, object.fG)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fH, object.fH)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fI, object.fI)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fJ, object.fJ)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fK, object.fK)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fL, object.fL)) return bl2;
            if (this.fM == null) {
                bl2 = bl;
                if (object.fM != null) return bl2;
            } else if (!this.fM.equals(object.fM)) {
                return false;
            }
            if (this.fN == null) {
                bl2 = bl;
                if (object.fN != null) return bl2;
            } else if (!this.fN.equals(object.fN)) {
                return false;
            }
            if (this.fO == null) {
                bl2 = bl;
                if (object.fO != null) return bl2;
            } else if (!this.fO.equals(object.fO)) {
                return false;
            }
            if (this.version == null) {
                bl2 = bl;
                if (object.version != null) return bl2;
            } else if (!this.version.equals(object.version)) {
                return false;
            }
            if (this.fP == null) {
                bl2 = bl;
                if (object.fP != null) return bl2;
            } else if (!this.fP.equals(object.fP)) {
                return false;
            }
            bl2 = bl;
            if (Float.floatToIntBits(this.fQ) != Float.floatToIntBits(object.fQ)) return bl2;
            bl2 = bl;
            if (this.fR != object.fR) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fS, object.fS)) return bl2;
            bl2 = bl;
            if (this.fT != object.fT) return bl2;
            return this.a(object);
        }

        /*
         * Enabled aggressive block sorting
         */
        public f g(pf pf) throws IOException {
            block20 : do {
                String[] arrstring;
                int n;
                int n2 = pf.qi();
                switch (n2) {
                    default: {
                        if (this.a(pf, n2)) continue block20;
                    }
                    case 0: {
                        return this;
                    }
                    case 10: {
                        n = pq.b(pf, 10);
                        n2 = this.fF == null ? 0 : this.fF.length;
                        arrstring = new String[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.fF, 0, arrstring, 0, n2);
                            n = n2;
                        }
                        for (; n < arrstring.length - 1; ++n) {
                            arrstring[n] = pf.readString();
                            pf.qi();
                        }
                        arrstring[n] = pf.readString();
                        this.fF = arrstring;
                        continue block20;
                    }
                    case 18: {
                        n = pq.b(pf, 18);
                        n2 = this.fG == null ? 0 : this.fG.length;
                        arrstring = new d.a[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.fG, 0, arrstring, 0, n2);
                            n = n2;
                        }
                        for (; n < arrstring.length - 1; ++n) {
                            arrstring[n] = new d.a();
                            pf.a((pn)arrstring[n]);
                            pf.qi();
                        }
                        arrstring[n] = new d.a();
                        pf.a((pn)arrstring[n]);
                        this.fG = arrstring;
                        continue block20;
                    }
                    case 26: {
                        n = pq.b(pf, 26);
                        n2 = this.fH == null ? 0 : this.fH.length;
                        arrstring = new e[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.fH, 0, arrstring, 0, n2);
                            n = n2;
                        }
                        for (; n < arrstring.length - 1; ++n) {
                            arrstring[n] = new e();
                            pf.a((pn)arrstring[n]);
                            pf.qi();
                        }
                        arrstring[n] = new e();
                        pf.a((pn)arrstring[n]);
                        this.fH = arrstring;
                        continue block20;
                    }
                    case 34: {
                        n = pq.b(pf, 34);
                        n2 = this.fI == null ? 0 : this.fI.length;
                        arrstring = new b[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.fI, 0, arrstring, 0, n2);
                            n = n2;
                        }
                        for (; n < arrstring.length - 1; ++n) {
                            arrstring[n] = new b();
                            pf.a((pn)arrstring[n]);
                            pf.qi();
                        }
                        arrstring[n] = new b();
                        pf.a((pn)arrstring[n]);
                        this.fI = arrstring;
                        continue block20;
                    }
                    case 42: {
                        n = pq.b(pf, 42);
                        n2 = this.fJ == null ? 0 : this.fJ.length;
                        arrstring = new b[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.fJ, 0, arrstring, 0, n2);
                            n = n2;
                        }
                        for (; n < arrstring.length - 1; ++n) {
                            arrstring[n] = new b();
                            pf.a((pn)arrstring[n]);
                            pf.qi();
                        }
                        arrstring[n] = new b();
                        pf.a((pn)arrstring[n]);
                        this.fJ = arrstring;
                        continue block20;
                    }
                    case 50: {
                        n = pq.b(pf, 50);
                        n2 = this.fK == null ? 0 : this.fK.length;
                        arrstring = new b[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.fK, 0, arrstring, 0, n2);
                            n = n2;
                        }
                        for (; n < arrstring.length - 1; ++n) {
                            arrstring[n] = new b();
                            pf.a((pn)arrstring[n]);
                            pf.qi();
                        }
                        arrstring[n] = new b();
                        pf.a((pn)arrstring[n]);
                        this.fK = arrstring;
                        continue block20;
                    }
                    case 58: {
                        n = pq.b(pf, 58);
                        n2 = this.fL == null ? 0 : this.fL.length;
                        arrstring = new g[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.fL, 0, arrstring, 0, n2);
                            n = n2;
                        }
                        for (; n < arrstring.length - 1; ++n) {
                            arrstring[n] = new g();
                            pf.a((pn)arrstring[n]);
                            pf.qi();
                        }
                        arrstring[n] = new g();
                        pf.a((pn)arrstring[n]);
                        this.fL = arrstring;
                        continue block20;
                    }
                    case 74: {
                        this.fM = pf.readString();
                        continue block20;
                    }
                    case 82: {
                        this.fN = pf.readString();
                        continue block20;
                    }
                    case 98: {
                        this.fO = pf.readString();
                        continue block20;
                    }
                    case 106: {
                        this.version = pf.readString();
                        continue block20;
                    }
                    case 114: {
                        if (this.fP == null) {
                            this.fP = new a();
                        }
                        pf.a(this.fP);
                        continue block20;
                    }
                    case 125: {
                        this.fQ = pf.readFloat();
                        continue block20;
                    }
                    case 130: {
                        n = pq.b(pf, 130);
                        n2 = this.fS == null ? 0 : this.fS.length;
                        arrstring = new String[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.fS, 0, arrstring, 0, n2);
                            n = n2;
                        }
                        for (; n < arrstring.length - 1; ++n) {
                            arrstring[n] = pf.readString();
                            pf.qi();
                        }
                        arrstring[n] = pf.readString();
                        this.fS = arrstring;
                        continue block20;
                    }
                    case 136: {
                        this.fT = pf.ql();
                        continue block20;
                    }
                    case 144: {
                        this.fR = pf.qm();
                        continue block20;
                    }
                    case 154: 
                }
                n = pq.b(pf, 154);
                n2 = this.fE == null ? 0 : this.fE.length;
                arrstring = new String[n + n2];
                n = n2;
                if (n2 != 0) {
                    System.arraycopy(this.fE, 0, arrstring, 0, n2);
                    n = n2;
                }
                for (; n < arrstring.length - 1; ++n) {
                    arrstring[n] = pf.readString();
                    pf.qi();
                }
                arrstring[n] = pf.readString();
                this.fE = arrstring;
            } while (true);
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n;
            int n2 = 0;
            int n3 = pl.hashCode(this.fE);
            int n4 = pl.hashCode(this.fF);
            int n5 = pl.hashCode(this.fG);
            int n6 = pl.hashCode(this.fH);
            int n7 = pl.hashCode(this.fI);
            int n8 = pl.hashCode(this.fJ);
            int n9 = pl.hashCode(this.fK);
            int n10 = pl.hashCode(this.fL);
            int n11 = this.fM == null ? 0 : this.fM.hashCode();
            int n12 = this.fN == null ? 0 : this.fN.hashCode();
            int n13 = this.fO == null ? 0 : this.fO.hashCode();
            int n14 = this.version == null ? 0 : this.version.hashCode();
            if (this.fP != null) {
                n2 = this.fP.hashCode();
            }
            int n15 = Float.floatToIntBits(this.fQ);
            if (this.fR) {
                n = 1231;
                return (((n + (((n14 + (n13 + (n12 + (n11 + ((((((((n3 + 527) * 31 + n4) * 31 + n5) * 31 + n6) * 31 + n7) * 31 + n8) * 31 + n9) * 31 + n10) * 31) * 31) * 31) * 31) * 31 + n2) * 31 + n15) * 31) * 31 + pl.hashCode(this.fS)) * 31 + this.fT) * 31 + this.qz();
            }
            n = 1237;
            return (((n + (((n14 + (n13 + (n12 + (n11 + ((((((((n3 + 527) * 31 + n4) * 31 + n5) * 31 + n6) * 31 + n7) * 31 + n8) * 31 + n9) * 31 + n10) * 31) * 31) * 31) * 31) * 31 + n2) * 31 + n15) * 31) * 31 + pl.hashCode(this.fS)) * 31 + this.fT) * 31 + this.qz();
        }

        public f k() {
            this.fE = pq.axb;
            this.fF = pq.axb;
            this.fG = d.a.r();
            this.fH = e.i();
            this.fI = b.d();
            this.fJ = b.d();
            this.fK = b.d();
            this.fL = g.l();
            this.fM = "";
            this.fN = "";
            this.fO = "0";
            this.version = "";
            this.fP = null;
            this.fQ = 0.0f;
            this.fR = false;
            this.fS = pq.axb;
            this.fT = 0;
            this.awJ = null;
            this.awU = -1;
            return this;
        }
    }

    public static final class g
    extends ph<g> {
        private static volatile g[] fU;
        public int[] fV;
        public int[] fW;
        public int[] fX;
        public int[] fY;
        public int[] fZ;
        public int[] ga;
        public int[] gb;
        public int[] gc;
        public int[] gd;
        public int[] ge;

        public g() {
            this.m();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public static g[] l() {
            if (fU == null) {
                Object object = pl.awT;
                synchronized (object) {
                    if (fU == null) {
                        fU = new g[0];
                    }
                }
            }
            return fU;
        }

        @Override
        public void a(pg pg) throws IOException {
            int n;
            int n2 = 0;
            if (this.fV != null && this.fV.length > 0) {
                for (n = 0; n < this.fV.length; ++n) {
                    pg.s(1, this.fV[n]);
                }
            }
            if (this.fW != null && this.fW.length > 0) {
                for (n = 0; n < this.fW.length; ++n) {
                    pg.s(2, this.fW[n]);
                }
            }
            if (this.fX != null && this.fX.length > 0) {
                for (n = 0; n < this.fX.length; ++n) {
                    pg.s(3, this.fX[n]);
                }
            }
            if (this.fY != null && this.fY.length > 0) {
                for (n = 0; n < this.fY.length; ++n) {
                    pg.s(4, this.fY[n]);
                }
            }
            if (this.fZ != null && this.fZ.length > 0) {
                for (n = 0; n < this.fZ.length; ++n) {
                    pg.s(5, this.fZ[n]);
                }
            }
            if (this.ga != null && this.ga.length > 0) {
                for (n = 0; n < this.ga.length; ++n) {
                    pg.s(6, this.ga[n]);
                }
            }
            if (this.gb != null && this.gb.length > 0) {
                for (n = 0; n < this.gb.length; ++n) {
                    pg.s(7, this.gb[n]);
                }
            }
            if (this.gc != null && this.gc.length > 0) {
                for (n = 0; n < this.gc.length; ++n) {
                    pg.s(8, this.gc[n]);
                }
            }
            if (this.gd != null && this.gd.length > 0) {
                for (n = 0; n < this.gd.length; ++n) {
                    pg.s(9, this.gd[n]);
                }
            }
            if (this.ge != null && this.ge.length > 0) {
                for (n = n2; n < this.ge.length; ++n) {
                    pg.s(10, this.ge[n]);
                }
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.h(pf);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        protected int c() {
            int n;
            int n2;
            int n3 = 0;
            int n4 = super.c();
            if (this.fV != null && this.fV.length > 0) {
                n2 = 0;
                for (n = 0; n < this.fV.length; n2+=pg.gw((int)this.fV[n]), ++n) {
                }
                n2 = n4 + n2 + this.fV.length * 1;
            } else {
                n2 = n4;
            }
            n = n2;
            if (this.fW != null) {
                n = n2;
                if (this.fW.length > 0) {
                    n4 = 0;
                    for (n = 0; n < this.fW.length; n4+=pg.gw((int)this.fW[n]), ++n) {
                    }
                    n = n2 + n4 + this.fW.length * 1;
                }
            }
            n2 = n;
            if (this.fX != null) {
                n2 = n;
                if (this.fX.length > 0) {
                    n4 = 0;
                    for (n2 = 0; n2 < this.fX.length; n4+=pg.gw((int)this.fX[n2]), ++n2) {
                    }
                    n2 = n + n4 + this.fX.length * 1;
                }
            }
            n = n2;
            if (this.fY != null) {
                n = n2;
                if (this.fY.length > 0) {
                    n4 = 0;
                    for (n = 0; n < this.fY.length; n4+=pg.gw((int)this.fY[n]), ++n) {
                    }
                    n = n2 + n4 + this.fY.length * 1;
                }
            }
            n2 = n;
            if (this.fZ != null) {
                n2 = n;
                if (this.fZ.length > 0) {
                    n4 = 0;
                    for (n2 = 0; n2 < this.fZ.length; n4+=pg.gw((int)this.fZ[n2]), ++n2) {
                    }
                    n2 = n + n4 + this.fZ.length * 1;
                }
            }
            n = n2;
            if (this.ga != null) {
                n = n2;
                if (this.ga.length > 0) {
                    n4 = 0;
                    for (n = 0; n < this.ga.length; n4+=pg.gw((int)this.ga[n]), ++n) {
                    }
                    n = n2 + n4 + this.ga.length * 1;
                }
            }
            n2 = n;
            if (this.gb != null) {
                n2 = n;
                if (this.gb.length > 0) {
                    n4 = 0;
                    for (n2 = 0; n2 < this.gb.length; n4+=pg.gw((int)this.gb[n2]), ++n2) {
                    }
                    n2 = n + n4 + this.gb.length * 1;
                }
            }
            n = n2;
            if (this.gc != null) {
                n = n2;
                if (this.gc.length > 0) {
                    n4 = 0;
                    for (n = 0; n < this.gc.length; n4+=pg.gw((int)this.gc[n]), ++n) {
                    }
                    n = n2 + n4 + this.gc.length * 1;
                }
            }
            n2 = n;
            if (this.gd != null) {
                n2 = n;
                if (this.gd.length > 0) {
                    n4 = 0;
                    for (n2 = 0; n2 < this.gd.length; n4+=pg.gw((int)this.gd[n2]), ++n2) {
                    }
                    n2 = n + n4 + this.gd.length * 1;
                }
            }
            n = n2;
            if (this.ge == null) return n;
            n = n2;
            if (this.ge.length <= 0) return n;
            n4 = 0;
            n = n3;
            for (; n < this.ge.length; n4+=pg.gw((int)this.ge[n]), ++n) {
            }
            return n2 + n4 + this.ge.length * 1;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            boolean bl = false;
            if (object == this) {
                return true;
            }
            boolean bl2 = bl;
            if (!(object instanceof g)) return bl2;
            object = (g)object;
            bl2 = bl;
            if (!pl.equals(this.fV, object.fV)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fW, object.fW)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fX, object.fX)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fY, object.fY)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.fZ, object.fZ)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.ga, object.ga)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.gb, object.gb)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.gc, object.gc)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.gd, object.gd)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.ge, object.ge)) return bl2;
            return this.a(object);
        }

        /*
         * Enabled aggressive block sorting
         */
        public g h(pf pf) throws IOException {
            block23 : do {
                int n;
                int[] arrn;
                int n2;
                int n3 = pf.qi();
                switch (n3) {
                    default: {
                        if (this.a(pf, n3)) continue block23;
                    }
                    case 0: {
                        return this;
                    }
                    case 8: {
                        n2 = pq.b(pf, 8);
                        n3 = this.fV == null ? 0 : this.fV.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.fV, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length - 1; ++n2) {
                            arrn[n2] = pf.ql();
                            pf.qi();
                        }
                        arrn[n2] = pf.ql();
                        this.fV = arrn;
                        continue block23;
                    }
                    case 10: {
                        n = pf.gp(pf.qp());
                        n3 = pf.getPosition();
                        n2 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n2;
                        }
                        pf.gr(n3);
                        n3 = this.fV == null ? 0 : this.fV.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.fV, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length; ++n2) {
                            arrn[n2] = pf.ql();
                        }
                        this.fV = arrn;
                        pf.gq(n);
                        continue block23;
                    }
                    case 16: {
                        n2 = pq.b(pf, 16);
                        n3 = this.fW == null ? 0 : this.fW.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.fW, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length - 1; ++n2) {
                            arrn[n2] = pf.ql();
                            pf.qi();
                        }
                        arrn[n2] = pf.ql();
                        this.fW = arrn;
                        continue block23;
                    }
                    case 18: {
                        n = pf.gp(pf.qp());
                        n3 = pf.getPosition();
                        n2 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n2;
                        }
                        pf.gr(n3);
                        n3 = this.fW == null ? 0 : this.fW.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.fW, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length; ++n2) {
                            arrn[n2] = pf.ql();
                        }
                        this.fW = arrn;
                        pf.gq(n);
                        continue block23;
                    }
                    case 24: {
                        n2 = pq.b(pf, 24);
                        n3 = this.fX == null ? 0 : this.fX.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.fX, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length - 1; ++n2) {
                            arrn[n2] = pf.ql();
                            pf.qi();
                        }
                        arrn[n2] = pf.ql();
                        this.fX = arrn;
                        continue block23;
                    }
                    case 26: {
                        n = pf.gp(pf.qp());
                        n3 = pf.getPosition();
                        n2 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n2;
                        }
                        pf.gr(n3);
                        n3 = this.fX == null ? 0 : this.fX.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.fX, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length; ++n2) {
                            arrn[n2] = pf.ql();
                        }
                        this.fX = arrn;
                        pf.gq(n);
                        continue block23;
                    }
                    case 32: {
                        n2 = pq.b(pf, 32);
                        n3 = this.fY == null ? 0 : this.fY.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.fY, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length - 1; ++n2) {
                            arrn[n2] = pf.ql();
                            pf.qi();
                        }
                        arrn[n2] = pf.ql();
                        this.fY = arrn;
                        continue block23;
                    }
                    case 34: {
                        n = pf.gp(pf.qp());
                        n3 = pf.getPosition();
                        n2 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n2;
                        }
                        pf.gr(n3);
                        n3 = this.fY == null ? 0 : this.fY.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.fY, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length; ++n2) {
                            arrn[n2] = pf.ql();
                        }
                        this.fY = arrn;
                        pf.gq(n);
                        continue block23;
                    }
                    case 40: {
                        n2 = pq.b(pf, 40);
                        n3 = this.fZ == null ? 0 : this.fZ.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.fZ, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length - 1; ++n2) {
                            arrn[n2] = pf.ql();
                            pf.qi();
                        }
                        arrn[n2] = pf.ql();
                        this.fZ = arrn;
                        continue block23;
                    }
                    case 42: {
                        n = pf.gp(pf.qp());
                        n3 = pf.getPosition();
                        n2 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n2;
                        }
                        pf.gr(n3);
                        n3 = this.fZ == null ? 0 : this.fZ.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.fZ, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length; ++n2) {
                            arrn[n2] = pf.ql();
                        }
                        this.fZ = arrn;
                        pf.gq(n);
                        continue block23;
                    }
                    case 48: {
                        n2 = pq.b(pf, 48);
                        n3 = this.ga == null ? 0 : this.ga.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.ga, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length - 1; ++n2) {
                            arrn[n2] = pf.ql();
                            pf.qi();
                        }
                        arrn[n2] = pf.ql();
                        this.ga = arrn;
                        continue block23;
                    }
                    case 50: {
                        n = pf.gp(pf.qp());
                        n3 = pf.getPosition();
                        n2 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n2;
                        }
                        pf.gr(n3);
                        n3 = this.ga == null ? 0 : this.ga.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.ga, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length; ++n2) {
                            arrn[n2] = pf.ql();
                        }
                        this.ga = arrn;
                        pf.gq(n);
                        continue block23;
                    }
                    case 56: {
                        n2 = pq.b(pf, 56);
                        n3 = this.gb == null ? 0 : this.gb.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.gb, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length - 1; ++n2) {
                            arrn[n2] = pf.ql();
                            pf.qi();
                        }
                        arrn[n2] = pf.ql();
                        this.gb = arrn;
                        continue block23;
                    }
                    case 58: {
                        n = pf.gp(pf.qp());
                        n3 = pf.getPosition();
                        n2 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n2;
                        }
                        pf.gr(n3);
                        n3 = this.gb == null ? 0 : this.gb.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.gb, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length; ++n2) {
                            arrn[n2] = pf.ql();
                        }
                        this.gb = arrn;
                        pf.gq(n);
                        continue block23;
                    }
                    case 64: {
                        n2 = pq.b(pf, 64);
                        n3 = this.gc == null ? 0 : this.gc.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.gc, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length - 1; ++n2) {
                            arrn[n2] = pf.ql();
                            pf.qi();
                        }
                        arrn[n2] = pf.ql();
                        this.gc = arrn;
                        continue block23;
                    }
                    case 66: {
                        n = pf.gp(pf.qp());
                        n3 = pf.getPosition();
                        n2 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n2;
                        }
                        pf.gr(n3);
                        n3 = this.gc == null ? 0 : this.gc.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.gc, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length; ++n2) {
                            arrn[n2] = pf.ql();
                        }
                        this.gc = arrn;
                        pf.gq(n);
                        continue block23;
                    }
                    case 72: {
                        n2 = pq.b(pf, 72);
                        n3 = this.gd == null ? 0 : this.gd.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.gd, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length - 1; ++n2) {
                            arrn[n2] = pf.ql();
                            pf.qi();
                        }
                        arrn[n2] = pf.ql();
                        this.gd = arrn;
                        continue block23;
                    }
                    case 74: {
                        n = pf.gp(pf.qp());
                        n3 = pf.getPosition();
                        n2 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n2;
                        }
                        pf.gr(n3);
                        n3 = this.gd == null ? 0 : this.gd.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.gd, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length; ++n2) {
                            arrn[n2] = pf.ql();
                        }
                        this.gd = arrn;
                        pf.gq(n);
                        continue block23;
                    }
                    case 80: {
                        n2 = pq.b(pf, 80);
                        n3 = this.ge == null ? 0 : this.ge.length;
                        arrn = new int[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.ge, 0, arrn, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < arrn.length - 1; ++n2) {
                            arrn[n2] = pf.ql();
                            pf.qi();
                        }
                        arrn[n2] = pf.ql();
                        this.ge = arrn;
                        continue block23;
                    }
                    case 82: 
                }
                n = pf.gp(pf.qp());
                n3 = pf.getPosition();
                n2 = 0;
                while (pf.qu() > 0) {
                    pf.ql();
                    ++n2;
                }
                pf.gr(n3);
                n3 = this.ge == null ? 0 : this.ge.length;
                arrn = new int[n2 + n3];
                n2 = n3;
                if (n3 != 0) {
                    System.arraycopy(this.ge, 0, arrn, 0, n3);
                    n2 = n3;
                }
                for (; n2 < arrn.length; ++n2) {
                    arrn[n2] = pf.ql();
                }
                this.ge = arrn;
                pf.gq(n);
            } while (true);
        }

        public int hashCode() {
            return ((((((((((pl.hashCode(this.fV) + 527) * 31 + pl.hashCode(this.fW)) * 31 + pl.hashCode(this.fX)) * 31 + pl.hashCode(this.fY)) * 31 + pl.hashCode(this.fZ)) * 31 + pl.hashCode(this.ga)) * 31 + pl.hashCode(this.gb)) * 31 + pl.hashCode(this.gc)) * 31 + pl.hashCode(this.gd)) * 31 + pl.hashCode(this.ge)) * 31 + this.qz();
        }

        public g m() {
            this.fV = pq.awW;
            this.fW = pq.awW;
            this.fX = pq.awW;
            this.fY = pq.awW;
            this.fZ = pq.awW;
            this.ga = pq.awW;
            this.gb = pq.awW;
            this.gc = pq.awW;
            this.gd = pq.awW;
            this.ge = pq.awW;
            this.awJ = null;
            this.awU = -1;
            return this;
        }
    }

    public static final class h
    extends ph<h> {
        public static final pi<d.a, h> gf = pi.a(11, h.class, 810);
        private static final h[] gg = new h[0];
        public int[] gh;
        public int[] gi;
        public int[] gj;
        public int gk;
        public int[] gl;
        public int gm;
        public int gn;

        public h() {
            this.n();
        }

        @Override
        public void a(pg pg) throws IOException {
            int n;
            int n2 = 0;
            if (this.gh != null && this.gh.length > 0) {
                for (n = 0; n < this.gh.length; ++n) {
                    pg.s(1, this.gh[n]);
                }
            }
            if (this.gi != null && this.gi.length > 0) {
                for (n = 0; n < this.gi.length; ++n) {
                    pg.s(2, this.gi[n]);
                }
            }
            if (this.gj != null && this.gj.length > 0) {
                for (n = 0; n < this.gj.length; ++n) {
                    pg.s(3, this.gj[n]);
                }
            }
            if (this.gk != 0) {
                pg.s(4, this.gk);
            }
            if (this.gl != null && this.gl.length > 0) {
                for (n = n2; n < this.gl.length; ++n) {
                    pg.s(5, this.gl[n]);
                }
            }
            if (this.gm != 0) {
                pg.s(6, this.gm);
            }
            if (this.gn != 0) {
                pg.s(7, this.gn);
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.i(pf);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        protected int c() {
            int n;
            int n2;
            int n3 = 0;
            int n4 = super.c();
            if (this.gh != null && this.gh.length > 0) {
                n2 = 0;
                for (n = 0; n < this.gh.length; n2+=pg.gw((int)this.gh[n]), ++n) {
                }
                n2 = n4 + n2 + this.gh.length * 1;
            } else {
                n2 = n4;
            }
            n = n2;
            if (this.gi != null) {
                n = n2;
                if (this.gi.length > 0) {
                    n4 = 0;
                    for (n = 0; n < this.gi.length; n4+=pg.gw((int)this.gi[n]), ++n) {
                    }
                    n = n2 + n4 + this.gi.length * 1;
                }
            }
            n2 = n;
            if (this.gj != null) {
                n2 = n;
                if (this.gj.length > 0) {
                    n4 = 0;
                    for (n2 = 0; n2 < this.gj.length; n4+=pg.gw((int)this.gj[n2]), ++n2) {
                    }
                    n2 = n + n4 + this.gj.length * 1;
                }
            }
            n = n2;
            if (this.gk != 0) {
                n = n2 + pg.u(4, this.gk);
            }
            n2 = n;
            if (this.gl != null) {
                n2 = n;
                if (this.gl.length > 0) {
                    n4 = 0;
                    for (n2 = n3; n2 < this.gl.length; n4+=pg.gw((int)this.gl[n2]), ++n2) {
                    }
                    n2 = n + n4 + this.gl.length * 1;
                }
            }
            n = n2;
            if (this.gm != 0) {
                n = n2 + pg.u(6, this.gm);
            }
            n2 = n;
            if (this.gn == 0) return n2;
            return n + pg.u(7, this.gn);
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            boolean bl = false;
            if (object == this) {
                return true;
            }
            boolean bl2 = bl;
            if (!(object instanceof h)) return bl2;
            object = (h)object;
            bl2 = bl;
            if (!pl.equals(this.gh, object.gh)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.gi, object.gi)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.gj, object.gj)) return bl2;
            bl2 = bl;
            if (this.gk != object.gk) return bl2;
            bl2 = bl;
            if (!pl.equals(this.gl, object.gl)) return bl2;
            bl2 = bl;
            if (this.gm != object.gm) return bl2;
            bl2 = bl;
            if (this.gn != object.gn) return bl2;
            return this.a(object);
        }

        public int hashCode() {
            return (((((((pl.hashCode(this.gh) + 527) * 31 + pl.hashCode(this.gi)) * 31 + pl.hashCode(this.gj)) * 31 + this.gk) * 31 + pl.hashCode(this.gl)) * 31 + this.gm) * 31 + this.gn) * 31 + this.qz();
        }

        /*
         * Enabled aggressive block sorting
         */
        public h i(pf pf) throws IOException {
            block14 : do {
                int n = pf.qi();
                switch (n) {
                    int n2;
                    int[] arrn;
                    int n3;
                    default: {
                        if (this.a(pf, n)) continue block14;
                    }
                    case 0: {
                        return this;
                    }
                    case 8: {
                        n3 = pq.b(pf, 8);
                        n = this.gh == null ? 0 : this.gh.length;
                        arrn = new int[n3 + n];
                        n3 = n;
                        if (n != 0) {
                            System.arraycopy(this.gh, 0, arrn, 0, n);
                            n3 = n;
                        }
                        for (; n3 < arrn.length - 1; ++n3) {
                            arrn[n3] = pf.ql();
                            pf.qi();
                        }
                        arrn[n3] = pf.ql();
                        this.gh = arrn;
                        continue block14;
                    }
                    case 10: {
                        n2 = pf.gp(pf.qp());
                        n = pf.getPosition();
                        n3 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n3;
                        }
                        pf.gr(n);
                        n = this.gh == null ? 0 : this.gh.length;
                        arrn = new int[n3 + n];
                        n3 = n;
                        if (n != 0) {
                            System.arraycopy(this.gh, 0, arrn, 0, n);
                            n3 = n;
                        }
                        for (; n3 < arrn.length; ++n3) {
                            arrn[n3] = pf.ql();
                        }
                        this.gh = arrn;
                        pf.gq(n2);
                        continue block14;
                    }
                    case 16: {
                        n3 = pq.b(pf, 16);
                        n = this.gi == null ? 0 : this.gi.length;
                        arrn = new int[n3 + n];
                        n3 = n;
                        if (n != 0) {
                            System.arraycopy(this.gi, 0, arrn, 0, n);
                            n3 = n;
                        }
                        for (; n3 < arrn.length - 1; ++n3) {
                            arrn[n3] = pf.ql();
                            pf.qi();
                        }
                        arrn[n3] = pf.ql();
                        this.gi = arrn;
                        continue block14;
                    }
                    case 18: {
                        n2 = pf.gp(pf.qp());
                        n = pf.getPosition();
                        n3 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n3;
                        }
                        pf.gr(n);
                        n = this.gi == null ? 0 : this.gi.length;
                        arrn = new int[n3 + n];
                        n3 = n;
                        if (n != 0) {
                            System.arraycopy(this.gi, 0, arrn, 0, n);
                            n3 = n;
                        }
                        for (; n3 < arrn.length; ++n3) {
                            arrn[n3] = pf.ql();
                        }
                        this.gi = arrn;
                        pf.gq(n2);
                        continue block14;
                    }
                    case 24: {
                        n3 = pq.b(pf, 24);
                        n = this.gj == null ? 0 : this.gj.length;
                        arrn = new int[n3 + n];
                        n3 = n;
                        if (n != 0) {
                            System.arraycopy(this.gj, 0, arrn, 0, n);
                            n3 = n;
                        }
                        for (; n3 < arrn.length - 1; ++n3) {
                            arrn[n3] = pf.ql();
                            pf.qi();
                        }
                        arrn[n3] = pf.ql();
                        this.gj = arrn;
                        continue block14;
                    }
                    case 26: {
                        n2 = pf.gp(pf.qp());
                        n = pf.getPosition();
                        n3 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n3;
                        }
                        pf.gr(n);
                        n = this.gj == null ? 0 : this.gj.length;
                        arrn = new int[n3 + n];
                        n3 = n;
                        if (n != 0) {
                            System.arraycopy(this.gj, 0, arrn, 0, n);
                            n3 = n;
                        }
                        for (; n3 < arrn.length; ++n3) {
                            arrn[n3] = pf.ql();
                        }
                        this.gj = arrn;
                        pf.gq(n2);
                        continue block14;
                    }
                    case 32: {
                        this.gk = pf.ql();
                        continue block14;
                    }
                    case 40: {
                        n3 = pq.b(pf, 40);
                        n = this.gl == null ? 0 : this.gl.length;
                        arrn = new int[n3 + n];
                        n3 = n;
                        if (n != 0) {
                            System.arraycopy(this.gl, 0, arrn, 0, n);
                            n3 = n;
                        }
                        for (; n3 < arrn.length - 1; ++n3) {
                            arrn[n3] = pf.ql();
                            pf.qi();
                        }
                        arrn[n3] = pf.ql();
                        this.gl = arrn;
                        continue block14;
                    }
                    case 42: {
                        n2 = pf.gp(pf.qp());
                        n = pf.getPosition();
                        n3 = 0;
                        while (pf.qu() > 0) {
                            pf.ql();
                            ++n3;
                        }
                        pf.gr(n);
                        n = this.gl == null ? 0 : this.gl.length;
                        arrn = new int[n3 + n];
                        n3 = n;
                        if (n != 0) {
                            System.arraycopy(this.gl, 0, arrn, 0, n);
                            n3 = n;
                        }
                        for (; n3 < arrn.length; ++n3) {
                            arrn[n3] = pf.ql();
                        }
                        this.gl = arrn;
                        pf.gq(n2);
                        continue block14;
                    }
                    case 48: {
                        this.gm = pf.ql();
                        continue block14;
                    }
                    case 56: 
                }
                this.gn = pf.ql();
            } while (true);
        }

        public h n() {
            this.gh = pq.awW;
            this.gi = pq.awW;
            this.gj = pq.awW;
            this.gk = 0;
            this.gl = pq.awW;
            this.gm = 0;
            this.gn = 0;
            this.awJ = null;
            this.awU = -1;
            return this;
        }
    }

    public static final class i
    extends ph<i> {
        private static volatile i[] go;
        public d.a gp;
        public d gq;
        public String name;

        public i() {
            this.p();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public static i[] o() {
            if (go == null) {
                Object object = pl.awT;
                synchronized (object) {
                    if (go == null) {
                        go = new i[0];
                    }
                }
            }
            return go;
        }

        @Override
        public void a(pg pg) throws IOException {
            if (!this.name.equals("")) {
                pg.b(1, this.name);
            }
            if (this.gp != null) {
                pg.a(2, this.gp);
            }
            if (this.gq != null) {
                pg.a(3, this.gq);
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.j(pf);
        }

        @Override
        protected int c() {
            int n;
            int n2 = n = super.c();
            if (!this.name.equals("")) {
                n2 = n + pg.j(1, this.name);
            }
            n = n2;
            if (this.gp != null) {
                n = n2 + pg.c(2, this.gp);
            }
            n2 = n;
            if (this.gq != null) {
                n2 = n + pg.c(3, this.gq);
            }
            return n2;
        }

        /*
         * Enabled aggressive block sorting
         */
        public boolean equals(Object object) {
            boolean bl = false;
            if (object == this) {
                return true;
            }
            boolean bl2 = bl;
            if (!(object instanceof i)) return bl2;
            object = (i)object;
            if (this.name == null) {
                bl2 = bl;
                if (object.name != null) return bl2;
            } else if (!this.name.equals(object.name)) {
                return false;
            }
            if (this.gp == null) {
                bl2 = bl;
                if (object.gp != null) return bl2;
            } else if (!this.gp.equals(object.gp)) {
                return false;
            }
            if (this.gq == null) {
                bl2 = bl;
                if (object.gq == null) return this.a(object);
                return bl2;
            }
            if (!this.gq.equals(object.gq)) return false;
            return this.a(object);
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n = 0;
            int n2 = this.name == null ? 0 : this.name.hashCode();
            int n3 = this.gp == null ? 0 : this.gp.hashCode();
            if (this.gq == null) {
                return ((n3 + (n2 + 527) * 31) * 31 + n) * 31 + this.qz();
            }
            n = this.gq.hashCode();
            return ((n3 + (n2 + 527) * 31) * 31 + n) * 31 + this.qz();
        }

        public i j(pf pf) throws IOException {
            block6 : do {
                int n = pf.qi();
                switch (n) {
                    default: {
                        if (this.a(pf, n)) continue block6;
                    }
                    case 0: {
                        return this;
                    }
                    case 10: {
                        this.name = pf.readString();
                        continue block6;
                    }
                    case 18: {
                        if (this.gp == null) {
                            this.gp = new d.a();
                        }
                        pf.a(this.gp);
                        continue block6;
                    }
                    case 26: 
                }
                if (this.gq == null) {
                    this.gq = new d();
                }
                pf.a(this.gq);
            } while (true);
        }

        public i p() {
            this.name = "";
            this.gp = null;
            this.gq = null;
            this.awJ = null;
            this.awU = -1;
            return this;
        }
    }

    public static final class j
    extends ph<j> {
        public i[] gr;
        public f gs;
        public String gt;

        public j() {
            this.q();
        }

        public static j b(byte[] arrby) throws pm {
            return pn.a(new j(), arrby);
        }

        @Override
        public void a(pg pg) throws IOException {
            if (this.gr != null && this.gr.length > 0) {
                for (int i = 0; i < this.gr.length; ++i) {
                    i i2 = this.gr[i];
                    if (i2 == null) continue;
                    pg.a(1, i2);
                }
            }
            if (this.gs != null) {
                pg.a(2, this.gs);
            }
            if (!this.gt.equals("")) {
                pg.b(3, this.gt);
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.k(pf);
        }

        @Override
        protected int c() {
            int n;
            int n2 = n = super.c();
            if (this.gr != null) {
                n2 = n;
                if (this.gr.length > 0) {
                    int n3 = 0;
                    do {
                        n2 = n;
                        if (n3 >= this.gr.length) break;
                        i i = this.gr[n3];
                        n2 = n;
                        if (i != null) {
                            n2 = n + pg.c(1, i);
                        }
                        ++n3;
                        n = n2;
                    } while (true);
                }
            }
            n = n2;
            if (this.gs != null) {
                n = n2 + pg.c(2, this.gs);
            }
            n2 = n;
            if (!this.gt.equals("")) {
                n2 = n + pg.j(3, this.gt);
            }
            return n2;
        }

        /*
         * Enabled aggressive block sorting
         */
        public boolean equals(Object object) {
            boolean bl = false;
            if (object == this) {
                return true;
            }
            boolean bl2 = bl;
            if (!(object instanceof j)) return bl2;
            object = (j)object;
            bl2 = bl;
            if (!pl.equals(this.gr, object.gr)) return bl2;
            if (this.gs == null) {
                bl2 = bl;
                if (object.gs != null) return bl2;
            } else if (!this.gs.equals(object.gs)) {
                return false;
            }
            if (this.gt == null) {
                bl2 = bl;
                if (object.gt == null) return this.a(object);
                return bl2;
            }
            if (!this.gt.equals(object.gt)) return false;
            return this.a(object);
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n = 0;
            int n2 = pl.hashCode(this.gr);
            int n3 = this.gs == null ? 0 : this.gs.hashCode();
            if (this.gt == null) {
                return ((n3 + (n2 + 527) * 31) * 31 + n) * 31 + this.qz();
            }
            n = this.gt.hashCode();
            return ((n3 + (n2 + 527) * 31) * 31 + n) * 31 + this.qz();
        }

        /*
         * Enabled aggressive block sorting
         */
        public j k(pf pf) throws IOException {
            block6 : do {
                int n = pf.qi();
                switch (n) {
                    default: {
                        if (this.a(pf, n)) continue block6;
                    }
                    case 0: {
                        return this;
                    }
                    case 10: {
                        int n2 = pq.b(pf, 10);
                        n = this.gr == null ? 0 : this.gr.length;
                        i[] arri = new i[n2 + n];
                        n2 = n;
                        if (n != 0) {
                            System.arraycopy(this.gr, 0, arri, 0, n);
                            n2 = n;
                        }
                        for (; n2 < arri.length - 1; ++n2) {
                            arri[n2] = new i();
                            pf.a(arri[n2]);
                            pf.qi();
                        }
                        arri[n2] = new i();
                        pf.a(arri[n2]);
                        this.gr = arri;
                        continue block6;
                    }
                    case 18: {
                        if (this.gs == null) {
                            this.gs = new f();
                        }
                        pf.a(this.gs);
                        continue block6;
                    }
                    case 26: 
                }
                this.gt = pf.readString();
            } while (true);
        }

        public j q() {
            this.gr = i.o();
            this.gs = null;
            this.gt = "";
            this.awJ = null;
            this.awU = -1;
            return this;
        }
    }

}

