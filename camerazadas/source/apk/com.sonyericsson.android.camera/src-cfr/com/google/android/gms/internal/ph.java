/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pf;
import com.google.android.gms.internal.pg;
import com.google.android.gms.internal.pi;
import com.google.android.gms.internal.pj;
import com.google.android.gms.internal.pk;
import com.google.android.gms.internal.pn;
import com.google.android.gms.internal.pp;
import com.google.android.gms.internal.pq;
import java.io.IOException;

public abstract class ph<M extends ph<M>>
extends pn {
    protected pj awJ;

    /*
     * Enabled aggressive block sorting
     */
    public final <T> T a(pi<M, T> pi) {
        pk pk;
        if (this.awJ == null || (pk = this.awJ.gE(pq.gI(pi.tag))) == null) {
            return null;
        }
        return pk.b(pi);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void a(pg pg) throws IOException {
        if (this.awJ == null) {
            return;
        }
        for (int i = 0; i < this.awJ.size(); ++i) {
            this.awJ.gF(i).a(pg);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected final boolean a(pf object, int n) throws IOException {
        int n2 = object.getPosition();
        if (!object.gn(n)) {
            return false;
        }
        int n3 = pq.gI(n);
        pp pp = new pp(n, object.r(n2, object.getPosition() - n2));
        object = null;
        if (this.awJ == null) {
            this.awJ = new pj();
        } else {
            object = this.awJ.gE(n3);
        }
        Object object2 = object;
        if (object == null) {
            object2 = new pk();
            this.awJ.a(n3, (pk)object2);
        }
        object2.a(pp);
        return true;
    }

    protected final boolean a(M m) {
        if (this.awJ == null || this.awJ.isEmpty()) {
            if (m.awJ == null || m.awJ.isEmpty()) {
                return true;
            }
            return false;
        }
        return this.awJ.equals(m.awJ);
    }

    @Override
    protected int c() {
        int n;
        int n2 = 0;
        if (this.awJ != null) {
            int n3 = 0;
            do {
                n = n3;
                if (n2 < this.awJ.size()) {
                    n3+=this.awJ.gF(n2).c();
                    ++n2;
                    continue;
                } else {
                    break;
                }
                break;
            } while (true);
        } else {
            n = 0;
        }
        return n;
    }

    protected final int qz() {
        if (this.awJ == null || this.awJ.isEmpty()) {
            return 0;
        }
        return this.awJ.hashCode();
    }
}

