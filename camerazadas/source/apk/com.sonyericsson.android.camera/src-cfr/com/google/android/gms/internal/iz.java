/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ja;

public final class iz
extends ja<a, Drawable> {
    public iz() {
        super(10);
    }

    public static final class a {
        public final int Lp;
        public final int Lq;

        public a(int n, int n2) {
            this.Lp = n;
            this.Lq = n2;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            boolean bl = true;
            if (!(object instanceof a)) {
                return false;
            }
            boolean bl2 = bl;
            if (this == object) return bl2;
            object = (a)object;
            if (object.Lp != this.Lp) return false;
            bl2 = bl;
            if (object.Lq == this.Lq) return bl2;
            return false;
        }

        public int hashCode() {
            return n.hashCode(this.Lp, this.Lq);
        }
    }

}

