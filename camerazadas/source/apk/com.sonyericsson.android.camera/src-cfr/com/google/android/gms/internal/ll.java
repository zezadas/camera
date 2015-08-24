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

public interface ll {

    public static final class com.google.android.gms.internal.ll$a
    extends ph<com.google.android.gms.internal.ll$a> {
        public a[] adE;

        public com.google.android.gms.internal.ll$a() {
            this.lP();
        }

        @Override
        public void a(pg pg) throws IOException {
            if (this.adE != null && this.adE.length > 0) {
                for (int i = 0; i < this.adE.length; ++i) {
                    a a = this.adE[i];
                    if (a == null) continue;
                    pg.a(1, a);
                }
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.n(pf);
        }

        @Override
        protected int c() {
            int n;
            int n2 = n = super.c();
            if (this.adE != null) {
                n2 = n;
                if (this.adE.length > 0) {
                    int n3 = 0;
                    do {
                        n2 = n;
                        if (n3 >= this.adE.length) break;
                        a a = this.adE[n3];
                        n2 = n;
                        if (a != null) {
                            n2 = n + pg.c(1, a);
                        }
                        ++n3;
                        n = n2;
                    } while (true);
                }
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
            if (!(object instanceof com.google.android.gms.internal.ll$a)) return bl2;
            object = (com.google.android.gms.internal.ll$a)object;
            bl2 = bl;
            if (!pl.equals(this.adE, object.adE)) return bl2;
            return this.a(object);
        }

        public int hashCode() {
            return (pl.hashCode(this.adE) + 527) * 31 + this.qz();
        }

        public com.google.android.gms.internal.ll$a lP() {
            this.adE = a.lQ();
            this.awJ = null;
            this.awU = -1;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public com.google.android.gms.internal.ll$a n(pf pf) throws IOException {
            block4 : do {
                int n = pf.qi();
                switch (n) {
                    default: {
                        if (this.a(pf, n)) continue block4;
                    }
                    case 0: {
                        return this;
                    }
                    case 10: 
                }
                int n2 = pq.b(pf, 10);
                n = this.adE == null ? 0 : this.adE.length;
                a[] arra = new a[n2 + n];
                n2 = n;
                if (n != 0) {
                    System.arraycopy(this.adE, 0, arra, 0, n);
                    n2 = n;
                }
                for (; n2 < arra.length - 1; ++n2) {
                    arra[n2] = new a();
                    pf.a(arra[n2]);
                    pf.qi();
                }
                arra[n2] = new a();
                pf.a(arra[n2]);
                this.adE = arra;
            } while (true);
        }

        public static final class a
        extends ph<a> {
            private static volatile a[] adF;
            public String adG;
            public String adH;
            public int viewId;

            public a() {
                this.lR();
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            public static a[] lQ() {
                if (adF == null) {
                    Object object = pl.awT;
                    synchronized (object) {
                        if (adF == null) {
                            adF = new a[0];
                        }
                    }
                }
                return adF;
            }

            @Override
            public void a(pg pg) throws IOException {
                if (!this.adG.equals("")) {
                    pg.b(1, this.adG);
                }
                if (!this.adH.equals("")) {
                    pg.b(2, this.adH);
                }
                if (this.viewId != 0) {
                    pg.s(3, this.viewId);
                }
                super.a(pg);
            }

            @Override
            public /* synthetic */ pn b(pf pf) throws IOException {
                return this.o(pf);
            }

            @Override
            protected int c() {
                int n;
                int n2 = n = super.c();
                if (!this.adG.equals("")) {
                    n2 = n + pg.j(1, this.adG);
                }
                n = n2;
                if (!this.adH.equals("")) {
                    n = n2 + pg.j(2, this.adH);
                }
                n2 = n;
                if (this.viewId != 0) {
                    n2 = n + pg.u(3, this.viewId);
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
                if (!(object instanceof a)) return bl2;
                object = (a)object;
                if (this.adG == null) {
                    bl2 = bl;
                    if (object.adG != null) return bl2;
                } else if (!this.adG.equals(object.adG)) {
                    return false;
                }
                if (this.adH == null) {
                    bl2 = bl;
                    if (object.adH != null) return bl2;
                } else if (!this.adH.equals(object.adH)) {
                    return false;
                }
                bl2 = bl;
                if (this.viewId != object.viewId) return bl2;
                return this.a(object);
            }

            /*
             * Enabled aggressive block sorting
             */
            public int hashCode() {
                int n = 0;
                int n2 = this.adG == null ? 0 : this.adG.hashCode();
                if (this.adH == null) {
                    return (((n2 + 527) * 31 + n) * 31 + this.viewId) * 31 + this.qz();
                }
                n = this.adH.hashCode();
                return (((n2 + 527) * 31 + n) * 31 + this.viewId) * 31 + this.qz();
            }

            public a lR() {
                this.adG = "";
                this.adH = "";
                this.viewId = 0;
                this.awJ = null;
                this.awU = -1;
                return this;
            }

            public a o(pf pf) throws IOException {
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
                            this.adG = pf.readString();
                            continue block6;
                        }
                        case 18: {
                            this.adH = pf.readString();
                            continue block6;
                        }
                        case 24: 
                    }
                    this.viewId = pf.ql();
                } while (true);
            }
        }

    }

}

