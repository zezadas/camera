/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import com.google.android.gms.internal.pf;
import com.google.android.gms.internal.pg;
import com.google.android.gms.internal.ph;
import com.google.android.gms.internal.pj;
import com.google.android.gms.internal.pm;
import com.google.android.gms.internal.pn;
import java.io.IOException;

public final class ah
extends ph<ah> {
    public String Pl;
    public long Pm;
    public long Pn;
    public int versionCode;

    public ah() {
        this.ic();
    }

    public static ah g(byte[] arrby) throws pm {
        return pn.a(new ah(), arrby);
    }

    @Override
    public void a(pg pg) throws IOException {
        pg.s(1, this.versionCode);
        pg.b(2, this.Pl);
        pg.c(3, this.Pm);
        pg.c(4, this.Pn);
        super.a(pg);
    }

    @Override
    public /* synthetic */ pn b(pf pf) throws IOException {
        return this.m(pf);
    }

    @Override
    protected int c() {
        return super.c() + pg.u(1, this.versionCode) + pg.j(2, this.Pl) + pg.e(3, this.Pm) + pg.e(4, this.Pn);
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
        if (!(object instanceof ah)) return bl2;
        object = (ah)object;
        bl2 = bl;
        if (this.versionCode != object.versionCode) return bl2;
        if (this.Pl == null) {
            bl2 = bl;
            if (object.Pl != null) return bl2;
        } else if (!this.Pl.equals(object.Pl)) {
            return false;
        }
        bl2 = bl;
        if (this.Pm != object.Pm) return bl2;
        bl2 = bl;
        if (this.Pn != object.Pn) return bl2;
        return this.a(object);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public int hashCode() {
        int n;
        int n2 = this.versionCode;
        if (this.Pl == null) {
            n = 0;
            do {
                return (((n + (n2 + 527) * 31) * 31 + (int)(this.Pm ^ this.Pm >>> 32)) * 31 + (int)(this.Pn ^ this.Pn >>> 32)) * 31 + this.qz();
                break;
            } while (true);
        }
        n = this.Pl.hashCode();
        return (((n + (n2 + 527) * 31) * 31 + (int)(this.Pm ^ this.Pm >>> 32)) * 31 + (int)(this.Pn ^ this.Pn >>> 32)) * 31 + this.qz();
    }

    public ah ic() {
        this.versionCode = 1;
        this.Pl = "";
        this.Pm = -1;
        this.Pn = -1;
        this.awJ = null;
        this.awU = -1;
        return this;
    }

    public ah m(pf pf) throws IOException {
        block7 : do {
            int n = pf.qi();
            switch (n) {
                default: {
                    if (this.a(pf, n)) continue block7;
                }
                case 0: {
                    return this;
                }
                case 8: {
                    this.versionCode = pf.ql();
                    continue block7;
                }
                case 18: {
                    this.Pl = pf.readString();
                    continue block7;
                }
                case 24: {
                    this.Pm = pf.qo();
                    continue block7;
                }
                case 32: 
            }
            this.Pn = pf.qo();
        } while (true);
    }
}

