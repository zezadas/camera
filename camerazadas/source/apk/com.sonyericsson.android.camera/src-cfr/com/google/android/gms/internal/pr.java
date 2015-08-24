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
import java.util.Arrays;

public interface pr {

    public static final class a
    extends ph<a> {
        public String[] axe;
        public String[] axf;
        public int[] axg;

        public a() {
            this.qJ();
        }

        @Override
        public void a(pg pg) throws IOException {
            String string;
            int n;
            int n2 = 0;
            if (this.axe != null && this.axe.length > 0) {
                for (n = 0; n < this.axe.length; ++n) {
                    string = this.axe[n];
                    if (string == null) continue;
                    pg.b(1, string);
                }
            }
            if (this.axf != null && this.axf.length > 0) {
                for (n = 0; n < this.axf.length; ++n) {
                    string = this.axf[n];
                    if (string == null) continue;
                    pg.b(2, string);
                }
            }
            if (this.axg != null && this.axg.length > 0) {
                for (n = n2; n < this.axg.length; ++n) {
                    pg.s(3, this.axg[n]);
                }
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.v(pf);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        protected int c() {
            int n;
            int n2;
            String string;
            int n3;
            int n4;
            int n5;
            int n6 = 0;
            int n7 = super.c();
            if (this.axe != null && this.axe.length > 0) {
                n4 = 0;
                n3 = 0;
                for (n = 0; n < this.axe.length; ++n) {
                    string = this.axe[n];
                    n5 = n4;
                    n2 = n3;
                    if (string != null) {
                        n2 = n3 + 1;
                        n5 = n4 + pg.di(string);
                    }
                    n4 = n5;
                    n3 = n2;
                }
                n = n7 + n4 + n3 * 1;
            } else {
                n = n7;
            }
            n4 = n;
            if (this.axf != null) {
                n4 = n;
                if (this.axf.length > 0) {
                    n3 = 0;
                    n2 = 0;
                    for (n4 = 0; n4 < this.axf.length; ++n4) {
                        string = this.axf[n4];
                        n7 = n3;
                        n5 = n2;
                        if (string != null) {
                            n5 = n2 + 1;
                            n7 = n3 + pg.di(string);
                        }
                        n3 = n7;
                        n2 = n5;
                    }
                    n4 = n + n3 + n2 * 1;
                }
            }
            n = n4;
            if (this.axg == null) return n;
            n = n4;
            if (this.axg.length <= 0) return n;
            n3 = 0;
            n = n6;
            for (; n < this.axg.length; n3+=pg.gw((int)this.axg[n]), ++n) {
            }
            return n4 + n3 + this.axg.length * 1;
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
            if (!pl.equals(this.axe, object.axe)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.axf, object.axf)) return bl2;
            bl2 = bl;
            if (!pl.equals(this.axg, object.axg)) return bl2;
            return this.a(object);
        }

        public int hashCode() {
            return (((pl.hashCode(this.axe) + 527) * 31 + pl.hashCode(this.axf)) * 31 + pl.hashCode(this.axg)) * 31 + this.qz();
        }

        public a qJ() {
            this.axe = pq.axb;
            this.axf = pq.axb;
            this.axg = pq.awW;
            this.awJ = null;
            this.awU = -1;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public a v(pf pf) throws IOException {
            block7 : do {
                Object object;
                int n;
                int n2 = pf.qi();
                switch (n2) {
                    default: {
                        if (this.a(pf, n2)) continue block7;
                    }
                    case 0: {
                        return this;
                    }
                    case 10: {
                        n = pq.b(pf, 10);
                        n2 = this.axe == null ? 0 : this.axe.length;
                        object = new String[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.axe, 0, object, 0, n2);
                            n = n2;
                        }
                        for (; n < object.length - 1; ++n) {
                            object[n] = pf.readString();
                            pf.qi();
                        }
                        object[n] = pf.readString();
                        this.axe = object;
                        continue block7;
                    }
                    case 18: {
                        n = pq.b(pf, 18);
                        n2 = this.axf == null ? 0 : this.axf.length;
                        object = new String[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.axf, 0, object, 0, n2);
                            n = n2;
                        }
                        for (; n < object.length - 1; ++n) {
                            object[n] = pf.readString();
                            pf.qi();
                        }
                        object[n] = pf.readString();
                        this.axf = object;
                        continue block7;
                    }
                    case 24: {
                        n = pq.b(pf, 24);
                        n2 = this.axg == null ? 0 : this.axg.length;
                        object = new int[n + n2];
                        n = n2;
                        if (n2 != 0) {
                            System.arraycopy(this.axg, 0, object, 0, n2);
                            n = n2;
                        }
                        for (; n < object.length - 1; ++n) {
                            object[n] = pf.ql();
                            pf.qi();
                        }
                        object[n] = pf.ql();
                        this.axg = object;
                        continue block7;
                    }
                    case 26: 
                }
                int n3 = pf.gp(pf.qp());
                n2 = pf.getPosition();
                n = 0;
                while (pf.qu() > 0) {
                    pf.ql();
                    ++n;
                }
                pf.gr(n2);
                n2 = this.axg == null ? 0 : this.axg.length;
                object = new int[n + n2];
                n = n2;
                if (n2 != 0) {
                    System.arraycopy(this.axg, 0, object, 0, n2);
                    n = n2;
                }
                for (; n < object.length; ++n) {
                    object[n] = pf.ql();
                }
                this.axg = object;
                pf.gq(n3);
            } while (true);
        }
    }

    public static final class b
    extends ph<b> {
        public int axh;
        public String axi;
        public String version;

        public b() {
            this.qK();
        }

        @Override
        public void a(pg pg) throws IOException {
            if (this.axh != 0) {
                pg.s(1, this.axh);
            }
            if (!this.axi.equals("")) {
                pg.b(2, this.axi);
            }
            if (!this.version.equals("")) {
                pg.b(3, this.version);
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.w(pf);
        }

        @Override
        protected int c() {
            int n;
            int n2 = n = super.c();
            if (this.axh != 0) {
                n2 = n + pg.u(1, this.axh);
            }
            n = n2;
            if (!this.axi.equals("")) {
                n = n2 + pg.j(2, this.axi);
            }
            n2 = n;
            if (!this.version.equals("")) {
                n2 = n + pg.j(3, this.version);
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
            if (!(object instanceof b)) return bl2;
            object = (b)object;
            bl2 = bl;
            if (this.axh != object.axh) return bl2;
            if (this.axi == null) {
                bl2 = bl;
                if (object.axi != null) return bl2;
            } else if (!this.axi.equals(object.axi)) {
                return false;
            }
            if (this.version == null) {
                bl2 = bl;
                if (object.version == null) return this.a(object);
                return bl2;
            }
            if (!this.version.equals(object.version)) return false;
            return this.a(object);
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n = 0;
            int n2 = this.axh;
            int n3 = this.axi == null ? 0 : this.axi.hashCode();
            if (this.version == null) {
                return ((n3 + (n2 + 527) * 31) * 31 + n) * 31 + this.qz();
            }
            n = this.version.hashCode();
            return ((n3 + (n2 + 527) * 31) * 31 + n) * 31 + this.qz();
        }

        public b qK() {
            this.axh = 0;
            this.axi = "";
            this.version = "";
            this.awJ = null;
            this.awU = -1;
            return this;
        }

        public b w(pf pf) throws IOException {
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
                            case 0: 
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
                            case 18: 
                            case 19: 
                            case 20: 
                            case 21: 
                            case 22: 
                        }
                        this.axh = n;
                        continue block9;
                    }
                    case 18: {
                        this.axi = pf.readString();
                        continue block9;
                    }
                    case 26: 
                }
                this.version = pf.readString();
            } while (true);
        }
    }

    public static final class c
    extends ph<c> {
        public long axj;
        public int axk;
        public int axl;
        public boolean axm;
        public d[] axn;
        public b axo;
        public byte[] axp;
        public byte[] axq;
        public byte[] axr;
        public a axs;
        public String axt;
        public String tag;

        public c() {
            this.qL();
        }

        @Override
        public void a(pg pg) throws IOException {
            if (this.axj != 0) {
                pg.b(1, this.axj);
            }
            if (!this.tag.equals("")) {
                pg.b(2, this.tag);
            }
            if (this.axn != null && this.axn.length > 0) {
                for (int i = 0; i < this.axn.length; ++i) {
                    d d = this.axn[i];
                    if (d == null) continue;
                    pg.a(3, d);
                }
            }
            if (!Arrays.equals(this.axp, pq.axd)) {
                pg.a(6, this.axp);
            }
            if (this.axs != null) {
                pg.a(7, this.axs);
            }
            if (!Arrays.equals(this.axq, pq.axd)) {
                pg.a(8, this.axq);
            }
            if (this.axo != null) {
                pg.a(9, this.axo);
            }
            if (this.axm) {
                pg.b(10, this.axm);
            }
            if (this.axk != 0) {
                pg.s(11, this.axk);
            }
            if (this.axl != 0) {
                pg.s(12, this.axl);
            }
            if (!Arrays.equals(this.axr, pq.axd)) {
                pg.a(13, this.axr);
            }
            if (!this.axt.equals("")) {
                pg.b(14, this.axt);
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.x(pf);
        }

        @Override
        protected int c() {
            int n;
            int n2 = n = super.c();
            if (this.axj != 0) {
                n2 = n + pg.d(1, this.axj);
            }
            n = n2;
            if (!this.tag.equals("")) {
                n = n2 + pg.j(2, this.tag);
            }
            n2 = n;
            if (this.axn != null) {
                n2 = n;
                if (this.axn.length > 0) {
                    for (n2 = 0; n2 < this.axn.length; ++n2) {
                        d d = this.axn[n2];
                        int n3 = n;
                        if (d != null) {
                            n3 = n + pg.c(3, d);
                        }
                        n = n3;
                    }
                    n2 = n;
                }
            }
            n = n2;
            if (!Arrays.equals(this.axp, pq.axd)) {
                n = n2 + pg.b(6, this.axp);
            }
            n2 = n;
            if (this.axs != null) {
                n2 = n + pg.c(7, this.axs);
            }
            n = n2;
            if (!Arrays.equals(this.axq, pq.axd)) {
                n = n2 + pg.b(8, this.axq);
            }
            n2 = n;
            if (this.axo != null) {
                n2 = n + pg.c(9, this.axo);
            }
            n = n2;
            if (this.axm) {
                n = n2 + pg.c(10, this.axm);
            }
            n2 = n;
            if (this.axk != 0) {
                n2 = n + pg.u(11, this.axk);
            }
            n = n2;
            if (this.axl != 0) {
                n = n2 + pg.u(12, this.axl);
            }
            n2 = n;
            if (!Arrays.equals(this.axr, pq.axd)) {
                n2 = n + pg.b(13, this.axr);
            }
            n = n2;
            if (!this.axt.equals("")) {
                n = n2 + pg.j(14, this.axt);
            }
            return n;
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
            bl2 = bl;
            if (this.axj != object.axj) return bl2;
            if (this.tag == null) {
                bl2 = bl;
                if (object.tag != null) return bl2;
            } else if (!this.tag.equals(object.tag)) {
                return false;
            }
            bl2 = bl;
            if (this.axk != object.axk) return bl2;
            bl2 = bl;
            if (this.axl != object.axl) return bl2;
            bl2 = bl;
            if (this.axm != object.axm) return bl2;
            bl2 = bl;
            if (!pl.equals(this.axn, object.axn)) return bl2;
            if (this.axo == null) {
                bl2 = bl;
                if (object.axo != null) return bl2;
            } else if (!this.axo.equals(object.axo)) {
                return false;
            }
            bl2 = bl;
            if (!Arrays.equals(this.axp, object.axp)) return bl2;
            bl2 = bl;
            if (!Arrays.equals(this.axq, object.axq)) return bl2;
            bl2 = bl;
            if (!Arrays.equals(this.axr, object.axr)) return bl2;
            if (this.axs == null) {
                bl2 = bl;
                if (object.axs != null) return bl2;
            } else if (!this.axs.equals(object.axs)) {
                return false;
            }
            if (this.axt == null) {
                bl2 = bl;
                if (object.axt == null) return this.a(object);
                return bl2;
            }
            if (!this.axt.equals(object.axt)) return false;
            return this.a(object);
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n = 0;
            int n2 = (int)(this.axj ^ this.axj >>> 32);
            int n3 = this.tag == null ? 0 : this.tag.hashCode();
            int n4 = this.axk;
            int n5 = this.axl;
            int n6 = this.axm ? 1231 : 1237;
            int n7 = pl.hashCode(this.axn);
            int n8 = this.axo == null ? 0 : this.axo.hashCode();
            int n9 = Arrays.hashCode(this.axp);
            int n10 = Arrays.hashCode(this.axq);
            int n11 = Arrays.hashCode(this.axr);
            int n12 = this.axs == null ? 0 : this.axs.hashCode();
            if (this.axt == null) {
                return ((n12 + ((((n8 + ((n6 + (((n3 + (n2 + 527) * 31) * 31 + n4) * 31 + n5) * 31) * 31 + n7) * 31) * 31 + n9) * 31 + n10) * 31 + n11) * 31) * 31 + n) * 31 + this.qz();
            }
            n = this.axt.hashCode();
            return ((n12 + ((((n8 + ((n6 + (((n3 + (n2 + 527) * 31) * 31 + n4) * 31 + n5) * 31) * 31 + n7) * 31) * 31 + n9) * 31 + n10) * 31 + n11) * 31) * 31 + n) * 31 + this.qz();
        }

        public c qL() {
            this.axj = 0;
            this.tag = "";
            this.axk = 0;
            this.axl = 0;
            this.axm = false;
            this.axn = d.qM();
            this.axo = null;
            this.axp = pq.axd;
            this.axq = pq.axd;
            this.axr = pq.axd;
            this.axs = null;
            this.axt = "";
            this.awJ = null;
            this.awU = -1;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public c x(pf pf) throws IOException {
            block15 : do {
                int n = pf.qi();
                switch (n) {
                    default: {
                        if (this.a(pf, n)) continue block15;
                    }
                    case 0: {
                        return this;
                    }
                    case 8: {
                        this.axj = pf.qk();
                        continue block15;
                    }
                    case 18: {
                        this.tag = pf.readString();
                        continue block15;
                    }
                    case 26: {
                        int n2 = pq.b(pf, 26);
                        n = this.axn == null ? 0 : this.axn.length;
                        d[] arrd = new d[n2 + n];
                        n2 = n;
                        if (n != 0) {
                            System.arraycopy(this.axn, 0, arrd, 0, n);
                            n2 = n;
                        }
                        for (; n2 < arrd.length - 1; ++n2) {
                            arrd[n2] = new d();
                            pf.a(arrd[n2]);
                            pf.qi();
                        }
                        arrd[n2] = new d();
                        pf.a(arrd[n2]);
                        this.axn = arrd;
                        continue block15;
                    }
                    case 50: {
                        this.axp = pf.readBytes();
                        continue block15;
                    }
                    case 58: {
                        if (this.axs == null) {
                            this.axs = new a();
                        }
                        pf.a(this.axs);
                        continue block15;
                    }
                    case 66: {
                        this.axq = pf.readBytes();
                        continue block15;
                    }
                    case 74: {
                        if (this.axo == null) {
                            this.axo = new b();
                        }
                        pf.a(this.axo);
                        continue block15;
                    }
                    case 80: {
                        this.axm = pf.qm();
                        continue block15;
                    }
                    case 88: {
                        this.axk = pf.ql();
                        continue block15;
                    }
                    case 96: {
                        this.axl = pf.ql();
                        continue block15;
                    }
                    case 106: {
                        this.axr = pf.readBytes();
                        continue block15;
                    }
                    case 114: 
                }
                this.axt = pf.readString();
            } while (true);
        }
    }

    public static final class d
    extends ph<d> {
        private static volatile d[] axu;
        public String fv;
        public String value;

        public d() {
            this.qN();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public static d[] qM() {
            if (axu == null) {
                Object object = pl.awT;
                synchronized (object) {
                    if (axu == null) {
                        axu = new d[0];
                    }
                }
            }
            return axu;
        }

        @Override
        public void a(pg pg) throws IOException {
            if (!this.fv.equals("")) {
                pg.b(1, this.fv);
            }
            if (!this.value.equals("")) {
                pg.b(2, this.value);
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.y(pf);
        }

        @Override
        protected int c() {
            int n;
            int n2 = n = super.c();
            if (!this.fv.equals("")) {
                n2 = n + pg.j(1, this.fv);
            }
            n = n2;
            if (!this.value.equals("")) {
                n = n2 + pg.j(2, this.value);
            }
            return n;
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
            if (!(object instanceof d)) return bl2;
            object = (d)object;
            if (this.fv == null) {
                bl2 = bl;
                if (object.fv != null) return bl2;
            } else if (!this.fv.equals(object.fv)) {
                return false;
            }
            if (this.value == null) {
                bl2 = bl;
                if (object.value == null) return this.a(object);
                return bl2;
            }
            if (!this.value.equals(object.value)) return false;
            return this.a(object);
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n = 0;
            int n2 = this.fv == null ? 0 : this.fv.hashCode();
            if (this.value == null) {
                return ((n2 + 527) * 31 + n) * 31 + this.qz();
            }
            n = this.value.hashCode();
            return ((n2 + 527) * 31 + n) * 31 + this.qz();
        }

        public d qN() {
            this.fv = "";
            this.value = "";
            this.awJ = null;
            this.awU = -1;
            return this;
        }

        public d y(pf pf) throws IOException {
            block5 : do {
                int n = pf.qi();
                switch (n) {
                    default: {
                        if (this.a(pf, n)) continue block5;
                    }
                    case 0: {
                        return this;
                    }
                    case 10: {
                        this.fv = pf.readString();
                        continue block5;
                    }
                    case 18: 
                }
                this.value = pf.readString();
            } while (true);
        }
    }

}

