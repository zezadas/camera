/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.c;
import com.google.android.gms.internal.pf;
import com.google.android.gms.internal.pg;
import com.google.android.gms.internal.ph;
import com.google.android.gms.internal.pj;
import com.google.android.gms.internal.pm;
import com.google.android.gms.internal.pn;
import java.io.IOException;

public interface ol {

    public static final class a
    extends ph<a> {
        public long asr;
        public c.j ass;
        public c.f gs;

        public a() {
            this.pL();
        }

        public static a l(byte[] arrby) throws pm {
            return pn.a(new a(), arrby);
        }

        @Override
        public void a(pg pg) throws IOException {
            pg.b(1, this.asr);
            if (this.gs != null) {
                pg.a(2, this.gs);
            }
            if (this.ass != null) {
                pg.a(3, this.ass);
            }
            super.a(pg);
        }

        @Override
        public /* synthetic */ pn b(pf pf) throws IOException {
            return this.p(pf);
        }

        @Override
        protected int c() {
            int n;
            int n2 = n = super.c() + pg.d(1, this.asr);
            if (this.gs != null) {
                n2 = n + pg.c(2, this.gs);
            }
            n = n2;
            if (this.ass != null) {
                n = n2 + pg.c(3, this.ass);
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
            if (!(object instanceof a)) return bl2;
            object = (a)object;
            bl2 = bl;
            if (this.asr != object.asr) return bl2;
            if (this.gs == null) {
                bl2 = bl;
                if (object.gs != null) return bl2;
            } else if (!this.gs.equals(object.gs)) {
                return false;
            }
            if (this.ass == null) {
                bl2 = bl;
                if (object.ass == null) return this.a(object);
                return bl2;
            }
            if (!this.ass.equals(object.ass)) return false;
            return this.a(object);
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n = 0;
            int n2 = (int)(this.asr ^ this.asr >>> 32);
            int n3 = this.gs == null ? 0 : this.gs.hashCode();
            if (this.ass == null) {
                return ((n3 + (n2 + 527) * 31) * 31 + n) * 31 + this.qz();
            }
            n = this.ass.hashCode();
            return ((n3 + (n2 + 527) * 31) * 31 + n) * 31 + this.qz();
        }

        public a p(pf pf) throws IOException {
            block6 : do {
                int n = pf.qi();
                switch (n) {
                    default: {
                        if (this.a(pf, n)) continue block6;
                    }
                    case 0: {
                        return this;
                    }
                    case 8: {
                        this.asr = pf.qk();
                        continue block6;
                    }
                    case 18: {
                        if (this.gs == null) {
                            this.gs = new c.f();
                        }
                        pf.a(this.gs);
                        continue block6;
                    }
                    case 26: 
                }
                if (this.ass == null) {
                    this.ass = new c.j();
                }
                pf.a(this.ass);
            } while (true);
        }

        public a pL() {
            this.asr = 0;
            this.gs = null;
            this.ass = null;
            this.awJ = null;
            this.awU = -1;
            return this;
        }
    }

}

