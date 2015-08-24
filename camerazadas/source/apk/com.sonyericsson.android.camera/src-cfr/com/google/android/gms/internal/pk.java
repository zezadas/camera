/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pg;
import com.google.android.gms.internal.pi;
import com.google.android.gms.internal.pp;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class pk {
    private pi<?, ?> awQ;
    private Object awR;
    private List<pp> awS = new ArrayList<pp>();

    pk() {
    }

    private byte[] toByteArray() throws IOException {
        byte[] arrby = new byte[this.c()];
        this.a(pg.q(arrby));
        return arrby;
    }

    /*
     * Enabled aggressive block sorting
     */
    void a(pg pg) throws IOException {
        if (this.awR != null) {
            this.awQ.a(this.awR, pg);
            return;
        } else {
            Iterator<pp> iterator = this.awS.iterator();
            while (iterator.hasNext()) {
                iterator.next().a(pg);
            }
        }
    }

    void a(pp pp) {
        this.awS.add(pp);
    }

    <T> T b(pi<?, T> pi) {
        if (this.awR != null) {
            if (this.awQ != pi) {
                throw new IllegalStateException("Tried to getExtension with a differernt Extension.");
            }
        } else {
            this.awQ = pi;
            this.awR = pi.l(this.awS);
            this.awS = null;
        }
        return (T)this.awR;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    int c() {
        if (this.awR != null) {
            return this.awQ.A(this.awR);
        }
        Iterator<pp> iterator = this.awS.iterator();
        int n = 0;
        do {
            int n2 = n;
            if (!iterator.hasNext()) return n2;
            n = iterator.next().c() + n;
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
        if (!(object instanceof pk)) return bl2;
        object = (pk)object;
        if (this.awR != null && object.awR != null) {
            bl2 = bl;
            if (this.awQ != object.awQ) return bl2;
            if (!this.awQ.awK.isArray()) {
                return this.awR.equals(object.awR);
            }
            if (this.awR instanceof byte[]) {
                return Arrays.equals((byte[])this.awR, (byte[])object.awR);
            }
            if (this.awR instanceof int[]) {
                return Arrays.equals((int[])this.awR, (int[])object.awR);
            }
            if (this.awR instanceof long[]) {
                return Arrays.equals((long[])this.awR, (long[])object.awR);
            }
            if (this.awR instanceof float[]) {
                return Arrays.equals((float[])this.awR, (float[])object.awR);
            }
            if (this.awR instanceof double[]) {
                return Arrays.equals((double[])this.awR, (double[])object.awR);
            }
            if (!(this.awR instanceof boolean[])) return Arrays.deepEquals((Object[])this.awR, (Object[])object.awR);
            return Arrays.equals((boolean[])this.awR, (boolean[])object.awR);
        }
        if (this.awS != null && object.awS != null) {
            return this.awS.equals(object.awS);
        }
        try {
            return Arrays.equals(this.toByteArray(), super.toByteArray());
        }
        catch (IOException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    public int hashCode() {
        try {
            int n = Arrays.hashCode(this.toByteArray());
            return n + 527;
        }
        catch (IOException var2_2) {
            throw new IllegalStateException(var2_2);
        }
    }
}

