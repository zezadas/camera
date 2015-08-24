/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pg;
import java.io.IOException;
import java.util.Arrays;

final class pp {
    final byte[] awV;
    final int tag;

    pp(int n, byte[] arrby) {
        this.tag = n;
        this.awV = arrby;
    }

    void a(pg pg) throws IOException {
        pg.gA(this.tag);
        pg.t(this.awV);
    }

    int c() {
        return 0 + pg.gB(this.tag) + this.awV.length;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof pp)) {
            return false;
        }
        object = (pp)object;
        if (this.tag != object.tag) return false;
        if (Arrays.equals(this.awV, object.awV)) return true;
        return false;
    }

    public int hashCode() {
        return (this.tag + 527) * 31 + Arrays.hashCode(this.awV);
    }
}

