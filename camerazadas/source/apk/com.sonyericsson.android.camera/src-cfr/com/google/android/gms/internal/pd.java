/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pf;
import com.google.android.gms.internal.pg;
import com.google.android.gms.internal.ph;
import com.google.android.gms.internal.pj;
import com.google.android.gms.internal.pl;
import com.google.android.gms.internal.pm;
import com.google.android.gms.internal.pn;
import com.google.android.gms.internal.pq;
import java.io.IOException;
import java.util.Arrays;

public final class pd
extends ph<pd> {
    public a[] awd;

    public pd() {
        this.qc();
    }

    public static pd n(byte[] arrby) throws pm {
        return pn.a(new pd(), arrby);
    }

    @Override
    public void a(pg pg) throws IOException {
        if (this.awd != null && this.awd.length > 0) {
            for (int i = 0; i < this.awd.length; ++i) {
                a a = this.awd[i];
                if (a == null) continue;
                pg.a(1, a);
            }
        }
        super.a(pg);
    }

    @Override
    public /* synthetic */ pn b(pf pf) throws IOException {
        return this.q(pf);
    }

    @Override
    protected int c() {
        int n;
        int n2 = n = super.c();
        if (this.awd != null) {
            n2 = n;
            if (this.awd.length > 0) {
                int n3 = 0;
                do {
                    n2 = n;
                    if (n3 >= this.awd.length) break;
                    a a = this.awd[n3];
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
        if (!(object instanceof pd)) return bl2;
        object = (pd)object;
        bl2 = bl;
        if (!pl.equals(this.awd, object.awd)) return bl2;
        return this.a(object);
    }

    public int hashCode() {
        return (pl.hashCode(this.awd) + 527) * 31 + this.qz();
    }

    /*
     * Enabled aggressive block sorting
     */
    public pd q(pf pf) throws IOException {
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
            n = this.awd == null ? 0 : this.awd.length;
            a[] arra = new a[n2 + n];
            n2 = n;
            if (n != 0) {
                System.arraycopy(this.awd, 0, arra, 0, n);
                n2 = n;
            }
            for (; n2 < arra.length - 1; ++n2) {
                arra[n2] = new a();
                pf.a(arra[n2]);
                pf.qi();
            }
            arra[n2] = new a();
            pf.a(arra[n2]);
            this.awd = arra;
        } while (true);
    }

    public pd qc() {
        this.awd = a.qd();
        this.awJ = null;
        this.awU = -1;
        return this;
    }

    public static final class com.google.android.gms.internal.pd$a
    extends ph<com.google.android.gms.internal.pd$a> {
        private static volatile com.google.android.gms.internal.pd$a[] awe;
        public a awf;
        public String name;

        public com.google.android.gms.internal.pd$a() {
            this.qe();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public static com.google.android.gms.internal.pd$a[] qd() {
            if (awe == null) {
                Object object = pl.awT;
                synchronized (object) {
                    if (awe == null) {
                        awe = new com.google.android.gms.internal.pd$a[0];
                    }
                }
            }
            return awe;
        }

        @Override
        public void a(pg pg) throws IOException {
            pg.b(1, this.name);
            if (this.awf != null) {
                pg.a(2, this.awf);
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.r(pf);
        }

        @Override
        protected int c() {
            int n;
            int n2 = n = super.c() + pg.j(1, this.name);
            if (this.awf != null) {
                n2 = n + pg.c(2, this.awf);
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
            if (!(object instanceof com.google.android.gms.internal.pd$a)) return bl2;
            object = (com.google.android.gms.internal.pd$a)object;
            if (this.name == null) {
                bl2 = bl;
                if (object.name != null) return bl2;
            } else if (!this.name.equals(object.name)) {
                return false;
            }
            if (this.awf == null) {
                bl2 = bl;
                if (object.awf == null) return this.a(object);
                return bl2;
            }
            if (!this.awf.equals(object.awf)) return false;
            return this.a(object);
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n = 0;
            int n2 = this.name == null ? 0 : this.name.hashCode();
            if (this.awf == null) {
                return ((n2 + 527) * 31 + n) * 31 + this.qz();
            }
            n = this.awf.hashCode();
            return ((n2 + 527) * 31 + n) * 31 + this.qz();
        }

        public com.google.android.gms.internal.pd$a qe() {
            this.name = "";
            this.awf = null;
            this.awJ = null;
            this.awU = -1;
            return this;
        }

        public com.google.android.gms.internal.pd$a r(pf pf) throws IOException {
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
                        this.name = pf.readString();
                        continue block5;
                    }
                    case 18: 
                }
                if (this.awf == null) {
                    this.awf = new a();
                }
                pf.a(this.awf);
            } while (true);
        }

        public static final class com.google.android.gms.internal.pd$a$a
        extends ph<com.google.android.gms.internal.pd$a$a> {
            private static volatile com.google.android.gms.internal.pd$a$a[] awg;
            public a awh;
            public int type;

            public com.google.android.gms.internal.pd$a$a() {
                this.qg();
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            public static com.google.android.gms.internal.pd$a$a[] qf() {
                if (awg == null) {
                    Object object = pl.awT;
                    synchronized (object) {
                        if (awg == null) {
                            awg = new com.google.android.gms.internal.pd$a$a[0];
                        }
                    }
                }
                return awg;
            }

            @Override
            public void a(pg pg) throws IOException {
                pg.s(1, this.type);
                if (this.awh != null) {
                    pg.a(2, this.awh);
                }
                super.a(pg);
            }

            @Override
            public /* synthetic */ pn b(pf pf) throws IOException {
                return this.s(pf);
            }

            @Override
            protected int c() {
                int n;
                int n2 = n = super.c() + pg.u(1, this.type);
                if (this.awh != null) {
                    n2 = n + pg.c(2, this.awh);
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
                if (!(object instanceof com.google.android.gms.internal.pd$a$a)) return bl2;
                object = (com.google.android.gms.internal.pd$a$a)object;
                bl2 = bl;
                if (this.type != object.type) return bl2;
                if (this.awh == null) {
                    bl2 = bl;
                    if (object.awh != null) return bl2;
                    return this.a(object);
                }
                if (this.awh.equals(object.awh)) return this.a(object);
                return false;
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            public int hashCode() {
                int n;
                int n2 = this.type;
                if (this.awh == null) {
                    n = 0;
                    do {
                        return (n + (n2 + 527) * 31) * 31 + this.qz();
                        break;
                    } while (true);
                }
                n = this.awh.hashCode();
                return (n + (n2 + 527) * 31) * 31 + this.qz();
            }

            public com.google.android.gms.internal.pd$a$a qg() {
                this.type = 1;
                this.awh = null;
                this.awJ = null;
                this.awU = -1;
                return this;
            }

            public com.google.android.gms.internal.pd$a$a s(pf pf) throws IOException {
                block8 : do {
                    int n = pf.qi();
                    switch (n) {
                        default: {
                            if (this.a(pf, n)) continue block8;
                        }
                        case 0: {
                            return this;
                        }
                        case 8: {
                            n = pf.ql();
                            switch (n) {
                                default: {
                                    continue block8;
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
                            }
                            this.type = n;
                            continue block8;
                        }
                        case 18: 
                    }
                    if (this.awh == null) {
                        this.awh = new a();
                    }
                    pf.a(this.awh);
                } while (true);
            }

            public static final class a
            extends ph<a> {
                public byte[] awi;
                public String awj;
                public double awk;
                public float awl;
                public long awm;
                public int awn;
                public int awo;
                public boolean awp;
                public com.google.android.gms.internal.pd$a[] awq;
                public com.google.android.gms.internal.pd$a$a[] awr;
                public String[] aws;
                public long[] awt;
                public float[] awu;
                public long awv;

                public a() {
                    this.qh();
                }

                @Override
                public void a(pg pg) throws IOException {
                    Object object;
                    int n;
                    int n2 = 0;
                    if (!Arrays.equals(this.awi, pq.axd)) {
                        pg.a(1, this.awi);
                    }
                    if (!this.awj.equals("")) {
                        pg.b(2, this.awj);
                    }
                    if (Double.doubleToLongBits(this.awk) != Double.doubleToLongBits(0.0)) {
                        pg.a(3, this.awk);
                    }
                    if (Float.floatToIntBits(this.awl) != Float.floatToIntBits(0.0f)) {
                        pg.b(4, this.awl);
                    }
                    if (this.awm != 0) {
                        pg.b(5, this.awm);
                    }
                    if (this.awn != 0) {
                        pg.s(6, this.awn);
                    }
                    if (this.awo != 0) {
                        pg.t(7, this.awo);
                    }
                    if (this.awp) {
                        pg.b(8, this.awp);
                    }
                    if (this.awq != null && this.awq.length > 0) {
                        for (n = 0; n < this.awq.length; ++n) {
                            object = this.awq[n];
                            if (object == null) continue;
                            pg.a(9, (pn)object);
                        }
                    }
                    if (this.awr != null && this.awr.length > 0) {
                        for (n = 0; n < this.awr.length; ++n) {
                            object = this.awr[n];
                            if (object == null) continue;
                            pg.a(10, (pn)object);
                        }
                    }
                    if (this.aws != null && this.aws.length > 0) {
                        for (n = 0; n < this.aws.length; ++n) {
                            object = this.aws[n];
                            if (object == null) continue;
                            pg.b(11, (String)object);
                        }
                    }
                    if (this.awt != null && this.awt.length > 0) {
                        for (n = 0; n < this.awt.length; ++n) {
                            pg.b(12, this.awt[n]);
                        }
                    }
                    if (this.awv != 0) {
                        pg.b(13, this.awv);
                    }
                    if (this.awu != null && this.awu.length > 0) {
                        for (n = n2; n < this.awu.length; ++n) {
                            pg.b(14, this.awu[n]);
                        }
                    }
                    super.a(pg);
                }

                @Override
                public /* synthetic */ pn b(pf pf) throws IOException {
                    return this.t(pf);
                }

                @Override
                protected int c() {
                    Object object;
                    int n;
                    int n2 = 0;
                    int n3 = n = super.c();
                    if (!Arrays.equals(this.awi, pq.axd)) {
                        n3 = n + pg.b(1, this.awi);
                    }
                    n = n3;
                    if (!this.awj.equals("")) {
                        n = n3 + pg.j(2, this.awj);
                    }
                    n3 = n;
                    if (Double.doubleToLongBits(this.awk) != Double.doubleToLongBits(0.0)) {
                        n3 = n + pg.b(3, this.awk);
                    }
                    n = n3;
                    if (Float.floatToIntBits(this.awl) != Float.floatToIntBits(0.0f)) {
                        n = n3 + pg.c(4, this.awl);
                    }
                    n3 = n;
                    if (this.awm != 0) {
                        n3 = n + pg.d(5, this.awm);
                    }
                    n = n3;
                    if (this.awn != 0) {
                        n = n3 + pg.u(6, this.awn);
                    }
                    int n4 = n;
                    if (this.awo != 0) {
                        n4 = n + pg.v(7, this.awo);
                    }
                    n3 = n4;
                    if (this.awp) {
                        n3 = n4 + pg.c(8, this.awp);
                    }
                    n = n3;
                    if (this.awq != null) {
                        n = n3;
                        if (this.awq.length > 0) {
                            for (n = 0; n < this.awq.length; ++n) {
                                object = this.awq[n];
                                n4 = n3;
                                if (object != null) {
                                    n4 = n3 + pg.c(9, (pn)object);
                                }
                                n3 = n4;
                            }
                            n = n3;
                        }
                    }
                    n3 = n;
                    if (this.awr != null) {
                        n3 = n;
                        if (this.awr.length > 0) {
                            n3 = n;
                            for (n = 0; n < this.awr.length; ++n) {
                                object = this.awr[n];
                                n4 = n3;
                                if (object != null) {
                                    n4 = n3 + pg.c(10, (pn)object);
                                }
                                n3 = n4;
                            }
                        }
                    }
                    n = n3;
                    if (this.aws != null) {
                        n = n3;
                        if (this.aws.length > 0) {
                            n4 = 0;
                            int n5 = 0;
                            for (n = 0; n < this.aws.length; ++n) {
                                object = this.aws[n];
                                int n6 = n4;
                                int n7 = n5;
                                if (object != null) {
                                    n7 = n5 + 1;
                                    n6 = n4 + pg.di((String)object);
                                }
                                n4 = n6;
                                n5 = n7;
                            }
                            n = n3 + n4 + n5 * 1;
                        }
                    }
                    n3 = n;
                    if (this.awt != null) {
                        n3 = n;
                        if (this.awt.length > 0) {
                            n4 = 0;
                            for (n3 = n2; n3 < this.awt.length; ++n3) {
                                n4+=pg.D(this.awt[n3]);
                            }
                            n3 = n + n4 + this.awt.length * 1;
                        }
                    }
                    n = n3;
                    if (this.awv != 0) {
                        n = n3 + pg.d(13, this.awv);
                    }
                    n3 = n;
                    if (this.awu != null) {
                        n3 = n;
                        if (this.awu.length > 0) {
                            n3 = n + this.awu.length * 4 + this.awu.length * 1;
                        }
                    }
                    return n3;
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
                    if (!Arrays.equals(this.awi, object.awi)) return bl2;
                    if (this.awj == null) {
                        bl2 = bl;
                        if (object.awj != null) return bl2;
                    } else if (!this.awj.equals(object.awj)) {
                        return false;
                    }
                    bl2 = bl;
                    if (Double.doubleToLongBits(this.awk) != Double.doubleToLongBits(object.awk)) return bl2;
                    bl2 = bl;
                    if (Float.floatToIntBits(this.awl) != Float.floatToIntBits(object.awl)) return bl2;
                    bl2 = bl;
                    if (this.awm != object.awm) return bl2;
                    bl2 = bl;
                    if (this.awn != object.awn) return bl2;
                    bl2 = bl;
                    if (this.awo != object.awo) return bl2;
                    bl2 = bl;
                    if (this.awp != object.awp) return bl2;
                    bl2 = bl;
                    if (!pl.equals(this.awq, object.awq)) return bl2;
                    bl2 = bl;
                    if (!pl.equals(this.awr, object.awr)) return bl2;
                    bl2 = bl;
                    if (!pl.equals(this.aws, object.aws)) return bl2;
                    bl2 = bl;
                    if (!pl.equals(this.awt, object.awt)) return bl2;
                    bl2 = bl;
                    if (!pl.equals(this.awu, object.awu)) return bl2;
                    bl2 = bl;
                    if (this.awv != object.awv) return bl2;
                    return this.a(object);
                }

                /*
                 * Enabled aggressive block sorting
                 */
                public int hashCode() {
                    int n;
                    int n2 = Arrays.hashCode(this.awi);
                    int n3 = this.awj == null ? 0 : this.awj.hashCode();
                    long l = Double.doubleToLongBits(this.awk);
                    int n4 = (int)(l ^ l >>> 32);
                    int n5 = Float.floatToIntBits(this.awl);
                    int n6 = (int)(this.awm ^ this.awm >>> 32);
                    int n7 = this.awn;
                    int n8 = this.awo;
                    if (this.awp) {
                        n = 1231;
                        return (((((((n + ((((((n3 + (n2 + 527) * 31) * 31 + n4) * 31 + n5) * 31 + n6) * 31 + n7) * 31 + n8) * 31) * 31 + pl.hashCode(this.awq)) * 31 + pl.hashCode(this.awr)) * 31 + pl.hashCode(this.aws)) * 31 + pl.hashCode(this.awt)) * 31 + pl.hashCode(this.awu)) * 31 + (int)(this.awv ^ this.awv >>> 32)) * 31 + this.qz();
                    }
                    n = 1237;
                    return (((((((n + ((((((n3 + (n2 + 527) * 31) * 31 + n4) * 31 + n5) * 31 + n6) * 31 + n7) * 31 + n8) * 31) * 31 + pl.hashCode(this.awq)) * 31 + pl.hashCode(this.awr)) * 31 + pl.hashCode(this.aws)) * 31 + pl.hashCode(this.awt)) * 31 + pl.hashCode(this.awu)) * 31 + (int)(this.awv ^ this.awv >>> 32)) * 31 + this.qz();
                }

                public a qh() {
                    this.awi = pq.axd;
                    this.awj = "";
                    this.awk = 0.0;
                    this.awl = 0.0f;
                    this.awm = 0;
                    this.awn = 0;
                    this.awo = 0;
                    this.awp = false;
                    this.awq = com.google.android.gms.internal.pd$a.qd();
                    this.awr = com.google.android.gms.internal.pd$a$a.qf();
                    this.aws = pq.axb;
                    this.awt = pq.awX;
                    this.awu = pq.awY;
                    this.awv = 0;
                    this.awJ = null;
                    this.awU = -1;
                    return this;
                }

                /*
                 * Enabled aggressive block sorting
                 */
                public a t(pf pf) throws IOException {
                    block19 : do {
                        int n;
                        Object object;
                        int n2;
                        int n3 = pf.qi();
                        switch (n3) {
                            default: {
                                if (this.a(pf, n3)) continue block19;
                            }
                            case 0: {
                                return this;
                            }
                            case 10: {
                                this.awi = pf.readBytes();
                                continue block19;
                            }
                            case 18: {
                                this.awj = pf.readString();
                                continue block19;
                            }
                            case 25: {
                                this.awk = pf.readDouble();
                                continue block19;
                            }
                            case 37: {
                                this.awl = pf.readFloat();
                                continue block19;
                            }
                            case 40: {
                                this.awm = pf.qk();
                                continue block19;
                            }
                            case 48: {
                                this.awn = pf.ql();
                                continue block19;
                            }
                            case 56: {
                                this.awo = pf.qn();
                                continue block19;
                            }
                            case 64: {
                                this.awp = pf.qm();
                                continue block19;
                            }
                            case 74: {
                                n2 = pq.b(pf, 74);
                                n3 = this.awq == null ? 0 : this.awq.length;
                                object = new com.google.android.gms.internal.pd$a[n2 + n3];
                                n2 = n3;
                                if (n3 != 0) {
                                    System.arraycopy(this.awq, 0, object, 0, n3);
                                    n2 = n3;
                                }
                                for (; n2 < object.length - 1; ++n2) {
                                    object[n2] = new com.google.android.gms.internal.pd$a();
                                    pf.a((pn)object[n2]);
                                    pf.qi();
                                }
                                object[n2] = new com.google.android.gms.internal.pd$a();
                                pf.a((pn)object[n2]);
                                this.awq = object;
                                continue block19;
                            }
                            case 82: {
                                n2 = pq.b(pf, 82);
                                n3 = this.awr == null ? 0 : this.awr.length;
                                object = new com.google.android.gms.internal.pd$a$a[n2 + n3];
                                n2 = n3;
                                if (n3 != 0) {
                                    System.arraycopy(this.awr, 0, object, 0, n3);
                                    n2 = n3;
                                }
                                for (; n2 < object.length - 1; ++n2) {
                                    object[n2] = new com.google.android.gms.internal.pd$a$a();
                                    pf.a((pn)object[n2]);
                                    pf.qi();
                                }
                                object[n2] = new com.google.android.gms.internal.pd$a$a();
                                pf.a((pn)object[n2]);
                                this.awr = object;
                                continue block19;
                            }
                            case 90: {
                                n2 = pq.b(pf, 90);
                                n3 = this.aws == null ? 0 : this.aws.length;
                                object = new String[n2 + n3];
                                n2 = n3;
                                if (n3 != 0) {
                                    System.arraycopy(this.aws, 0, object, 0, n3);
                                    n2 = n3;
                                }
                                for (; n2 < object.length - 1; ++n2) {
                                    object[n2] = pf.readString();
                                    pf.qi();
                                }
                                object[n2] = pf.readString();
                                this.aws = object;
                                continue block19;
                            }
                            case 96: {
                                n2 = pq.b(pf, 96);
                                n3 = this.awt == null ? 0 : this.awt.length;
                                object = new long[n2 + n3];
                                n2 = n3;
                                if (n3 != 0) {
                                    System.arraycopy(this.awt, 0, object, 0, n3);
                                    n2 = n3;
                                }
                                for (; n2 < object.length - 1; ++n2) {
                                    object[n2] = pf.qk();
                                    pf.qi();
                                }
                                object[n2] = pf.qk();
                                this.awt = object;
                                continue block19;
                            }
                            case 98: {
                                n = pf.gp(pf.qp());
                                n3 = pf.getPosition();
                                n2 = 0;
                                while (pf.qu() > 0) {
                                    pf.qk();
                                    ++n2;
                                }
                                pf.gr(n3);
                                n3 = this.awt == null ? 0 : this.awt.length;
                                object = new long[n2 + n3];
                                n2 = n3;
                                if (n3 != 0) {
                                    System.arraycopy(this.awt, 0, object, 0, n3);
                                    n2 = n3;
                                }
                                for (; n2 < object.length; ++n2) {
                                    object[n2] = pf.qk();
                                }
                                this.awt = object;
                                pf.gq(n);
                                continue block19;
                            }
                            case 104: {
                                this.awv = pf.qk();
                                continue block19;
                            }
                            case 117: {
                                n2 = pq.b(pf, 117);
                                n3 = this.awu == null ? 0 : this.awu.length;
                                object = new float[n2 + n3];
                                n2 = n3;
                                if (n3 != 0) {
                                    System.arraycopy(this.awu, 0, object, 0, n3);
                                    n2 = n3;
                                }
                                for (; n2 < object.length - 1; ++n2) {
                                    object[n2] = pf.readFloat();
                                    pf.qi();
                                }
                                object[n2] = pf.readFloat();
                                this.awu = object;
                                continue block19;
                            }
                            case 114: 
                        }
                        n3 = pf.qp();
                        n = pf.gp(n3);
                        n2 = n3 / 4;
                        n3 = this.awu == null ? 0 : this.awu.length;
                        object = new float[n2 + n3];
                        n2 = n3;
                        if (n3 != 0) {
                            System.arraycopy(this.awu, 0, object, 0, n3);
                            n2 = n3;
                        }
                        for (; n2 < object.length; ++n2) {
                            object[n2] = pf.readFloat();
                        }
                        this.awu = object;
                        pf.gq(n);
                    } while (true);
                }
            }

        }

    }

}

