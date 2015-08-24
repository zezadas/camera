/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pf;
import com.google.android.gms.internal.pg;
import com.google.android.gms.internal.ph;
import com.google.android.gms.internal.pj;
import com.google.android.gms.internal.pl;
import com.google.android.gms.internal.pn;
import com.google.android.gms.internal.pq;
import java.io.IOException;

public interface d {

    public static final class a
    extends ph<a> {
        private static volatile a[] gu;
        public String gA;
        public long gB;
        public boolean gC;
        public a[] gD;
        public int[] gE;
        public boolean gF;
        public String gv;
        public a[] gw;
        public a[] gx;
        public a[] gy;
        public String gz;
        public int type;

        public a() {
            this.s();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public static a[] r() {
            if (gu == null) {
                Object object = pl.awT;
                synchronized (object) {
                    if (gu == null) {
                        gu = new a[0];
                    }
                }
            }
            return gu;
        }

        @Override
        public void a(pg pg) throws IOException {
            int n;
            a a;
            int n2 = 0;
            pg.s(1, this.type);
            if (!this.gv.equals("")) {
                pg.b(2, this.gv);
            }
            if (this.gw != null && this.gw.length > 0) {
                for (n = 0; n < this.gw.length; ++n) {
                    a = this.gw[n];
                    if (a == null) continue;
                    pg.a(3, a);
                }
            }
            if (this.gx != null && this.gx.length > 0) {
                for (n = 0; n < this.gx.length; ++n) {
                    a = this.gx[n];
                    if (a == null) continue;
                    pg.a(4, a);
                }
            }
            if (this.gy != null && this.gy.length > 0) {
                for (n = 0; n < this.gy.length; ++n) {
                    a = this.gy[n];
                    if (a == null) continue;
                    pg.a(5, a);
                }
            }
            if (!this.gz.equals("")) {
                pg.b(6, this.gz);
            }
            if (!this.gA.equals("")) {
                pg.b(7, this.gA);
            }
            if (this.gB != 0) {
                pg.b(8, this.gB);
            }
            if (this.gF) {
                pg.b(9, this.gF);
            }
            if (this.gE != null && this.gE.length > 0) {
                for (n = 0; n < this.gE.length; ++n) {
                    pg.s(10, this.gE[n]);
                }
            }
            if (this.gD != null && this.gD.length > 0) {
                for (n = n2; n < this.gD.length; ++n) {
                    a = this.gD[n];
                    if (a == null) continue;
                    pg.a(11, a);
                }
            }
            if (this.gC) {
                pg.b(12, this.gC);
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.l(pf);
        }

        @Override
        protected int c() {
            a a;
            int n;
            int n2;
            int n3 = 0;
            int n4 = n = super.c() + pg.u(1, this.type);
            if (!this.gv.equals("")) {
                n4 = n + pg.j(2, this.gv);
            }
            n = n4;
            if (this.gw != null) {
                n = n4;
                if (this.gw.length > 0) {
                    for (n = 0; n < this.gw.length; ++n) {
                        a = this.gw[n];
                        n2 = n4;
                        if (a != null) {
                            n2 = n4 + pg.c(3, a);
                        }
                        n4 = n2;
                    }
                    n = n4;
                }
            }
            n4 = n;
            if (this.gx != null) {
                n4 = n;
                if (this.gx.length > 0) {
                    n4 = n;
                    for (n = 0; n < this.gx.length; ++n) {
                        a = this.gx[n];
                        n2 = n4;
                        if (a != null) {
                            n2 = n4 + pg.c(4, a);
                        }
                        n4 = n2;
                    }
                }
            }
            n = n4;
            if (this.gy != null) {
                n = n4;
                if (this.gy.length > 0) {
                    for (n = 0; n < this.gy.length; ++n) {
                        a = this.gy[n];
                        n2 = n4;
                        if (a != null) {
                            n2 = n4 + pg.c(5, a);
                        }
                        n4 = n2;
                    }
                    n = n4;
                }
            }
            n4 = n;
            if (!this.gz.equals("")) {
                n4 = n + pg.j(6, this.gz);
            }
            n = n4;
            if (!this.gA.equals("")) {
                n = n4 + pg.j(7, this.gA);
            }
            n4 = n;
            if (this.gB != 0) {
                n4 = n + pg.d(8, this.gB);
            }
            n = n4;
            if (this.gF) {
                n = n4 + pg.c(9, this.gF);
            }
            n4 = n;
            if (this.gE != null) {
                n4 = n;
                if (this.gE.length > 0) {
                    n2 = 0;
                    for (n4 = 0; n4 < this.gE.length; ++n4) {
                        n2+=pg.gw(this.gE[n4]);
                    }
                    n4 = n + n2 + this.gE.length * 1;
                }
            }
            n = n4;
            if (this.gD != null) {
                n = n4;
                if (this.gD.length > 0) {
                    n2 = n3;
                    do {
                        n = n4;
                        if (n2 >= this.gD.length) break;
                        a = this.gD[n2];
                        n = n4;
                        if (a != null) {
                            n = n4 + pg.c(11, a);
                        }
                        ++n2;
                        n4 = n;
                    } while (true);
                }
            }
            n4 = n;
            if (this.gC) {
                n4 = n + pg.c(12, this.gC);
            }
            return n4;
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
            if (!(object instanceof a)) return bl2;
            object = (a)object;
            bl2 = bl;
            if (this.type != object.type) return bl2;
            if (this.gv == null) {
                bl2 = bl;
                if (object.gv != null) return bl2;
            } else if (!this.gv.equals(object.gv)) {
                return false;
            }
            bl2 = bl;
            if (!pl.equals(this.gw, object.gw)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.gx, object.gx)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.gy, object.gy)) return bl2;
            if (this.gz == null) {
                bl2 = bl;
                if (object.gz != null) return bl2;
            } else if (!this.gz.equals(object.gz)) {
                return false;
            }
            if (this.gA == null) {
                bl2 = bl;
                if (object.gA != null) return bl2;
            } else if (!this.gA.equals(object.gA)) {
                return false;
            }
            bl2 = bl;
            if (this.gB != object.gB) return bl2;
            bl2 = bl;
            if (this.gC != object.gC) return bl2;
            bl2 = bl;
            if (!pl.equals(this.gD, object.gD)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.gE, object.gE)) return bl2;
            bl2 = bl;
            if (this.gF != object.gF) return bl2;
            return this.a(object);
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n = 1231;
            int n2 = 0;
            int n3 = this.type;
            int n4 = this.gv == null ? 0 : this.gv.hashCode();
            int n5 = pl.hashCode(this.gw);
            int n6 = pl.hashCode(this.gx);
            int n7 = pl.hashCode(this.gy);
            int n8 = this.gz == null ? 0 : this.gz.hashCode();
            if (this.gA != null) {
                n2 = this.gA.hashCode();
            }
            int n9 = (int)(this.gB ^ this.gB >>> 32);
            int n10 = this.gC ? 1231 : 1237;
            int n11 = pl.hashCode(this.gD);
            int n12 = pl.hashCode(this.gE);
            if (this.gF) {
                return ((((n10 + (((n8 + ((((n4 + (n3 + 527) * 31) * 31 + n5) * 31 + n6) * 31 + n7) * 31) * 31 + n2) * 31 + n9) * 31) * 31 + n11) * 31 + n12) * 31 + n) * 31 + this.qz();
            }
            n = 1237;
            return ((((n10 + (((n8 + ((((n4 + (n3 + 527) * 31) * 31 + n5) * 31 + n6) * 31 + n7) * 31) * 31 + n2) * 31 + n9) * 31) * 31 + n11) * 31 + n12) * 31 + n) * 31 + this.qz();
        }

        /*
         * Enabled aggressive block sorting
         */
        public a l(pf pf) throws IOException {
            block28 : do {
                int n = pf.qi();
                switch (n) {
                    int n2;
                    Object object;
                    int n3;
                    default: {
                        if (this.a(pf, n)) continue block28;
                    }
                    case 0: {
                        return this;
                    }
                    case 8: {
                        n = pf.ql();
                        switch (n) {
                            default: {
                                continue block28;
                            }
                            case 1: 
                            case 2: 
                            case 3: 
                            case 4: 
                            case 5: 
                            case 6: 
                            case 7: 
                            case 8: 
                        }
                        this.type = n;
                        continue block28;
                    }
                    case 18: {
                        this.gv = pf.readString();
                        continue block28;
                    }
                    case 26: {
                        n3 = pq.b(pf, 26);
                        n = this.gw == null ? 0 : this.gw.length;
                        object = new a[n3 + n];
                        n3 = n;
                        if (n != 0) {
                            System.arraycopy(this.gw, 0, object, 0, n);
                            n3 = n;
                        }
                        for (; n3 < object.length - 1; ++n3) {
                            object[n3] = new a();
                            pf.a((pn)object[n3]);
                            pf.qi();
                        }
                        object[n3] = new a();
                        pf.a((pn)object[n3]);
                        this.gw = object;
                        continue block28;
                    }
                    case 34: {
                        n3 = pq.b(pf, 34);
                        n = this.gx == null ? 0 : this.gx.length;
                        object = new a[n3 + n];
                        n3 = n;
                        if (n != 0) {
                            System.arraycopy(this.gx, 0, object, 0, n);
                            n3 = n;
                        }
                        for (; n3 < object.length - 1; ++n3) {
                            object[n3] = new a();
                            pf.a((pn)object[n3]);
                            pf.qi();
                        }
                        object[n3] = new a();
                        pf.a((pn)object[n3]);
                        this.gx = object;
                        continue block28;
                    }
                    case 42: {
                        n3 = pq.b(pf, 42);
                        n = this.gy == null ? 0 : this.gy.length;
                        object = new a[n3 + n];
                        n3 = n;
                        if (n != 0) {
                            System.arraycopy(this.gy, 0, object, 0, n);
                            n3 = n;
                        }
                        for (; n3 < object.length - 1; ++n3) {
                            object[n3] = new a();
                            pf.a((pn)object[n3]);
                            pf.qi();
                        }
                        object[n3] = new a();
                        pf.a((pn)object[n3]);
                        this.gy = object;
                        continue block28;
                    }
                    case 50: {
                        this.gz = pf.readString();
                        continue block28;
                    }
                    case 58: {
                        this.gA = pf.readString();
                        continue block28;
                    }
                    case 64: {
                        this.gB = pf.qk();
                        continue block28;
                    }
                    case 72: {
                        this.gF = pf.qm();
                        continue block28;
                    }
                    case 80: {
                        int n4 = pq.b(pf, 80);
                        object = new int[n4];
                        n3 = 0;
                        n = 0;
                        do {
                            if (n3 >= n4) continue block28;
                            if (n3 != 0) {
                                pf.qi();
                            }
                            int n5 = pf.ql();
                            switch (n5) {
                                default: {
                                    break;
                                }
                                case 1: 
                                case 2: 
                                case 3: 
                                case 4: 
                                case 5: 
                                case 6: 
                                case 7: 
                                case 8: 
                                case 9: 
                                case 10: 
                                case 11: 
                                case 12: 
                                case 13: 
                                case 14: 
                                case 15: 
                                case 16: 
                                case 17: {
                                    n2 = n + 1;
                                    object[n] = (a)n5;
                                    n = n2;
                                }
                            }
                            ++n3;
                        } while (true);
                    }
                    case 82: {
                        n2 = pf.gp(pf.qp());
                        n = pf.getPosition();
                        n3 = 0;
                        block33 : while (pf.qu() > 0) {
                            switch (pf.ql()) {
                                default: {
                                    continue block33;
                                }
                                case 1: 
                                case 2: 
                                case 3: 
                                case 4: 
                                case 5: 
                                case 6: 
                                case 7: 
                                case 8: 
                                case 9: 
                                case 10: 
                                case 11: 
                                case 12: 
                                case 13: 
                                case 14: 
                                case 15: 
                                case 16: 
                                case 17: 
                            }
                            ++n3;
                        }
                        pf.gq(n2);
                        continue block28;
                    }
                    case 90: {
                        n3 = pq.b(pf, 90);
                        n = this.gD == null ? 0 : this.gD.length;
                        object = new a[n3 + n];
                        n3 = n;
                        if (n != 0) {
                            System.arraycopy(this.gD, 0, object, 0, n);
                            n3 = n;
                        }
                        for (; n3 < object.length - 1; ++n3) {
                            object[n3] = new a();
                            pf.a((pn)object[n3]);
                            pf.qi();
                        }
                        object[n3] = new a();
                        pf.a((pn)object[n3]);
                        this.gD = object;
                        continue block28;
                    }
                    case 96: 
                }
                this.gC = pf.qm();
            } while (true);
        }

        public a s() {
            this.type = 1;
            this.gv = "";
            this.gw = a.r();
            this.gx = a.r();
            this.gy = a.r();
            this.gz = "";
            this.gA = "";
            this.gB = 0;
            this.gC = false;
            this.gD = a.r();
            this.gE = pq.awW;
            this.gF = false;
            this.awJ = null;
            this.awU = -1;
            return this;
        }
    }

}

