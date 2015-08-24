/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hf;
import com.google.android.gms.internal.hi;
import com.google.android.gms.internal.hp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

public class he
implements SafeParcelable {
    public static final hf CREATOR = new hf();
    final int BR;
    final hi[] BS;
    public final String BT;
    public final boolean BU;
    public final Account account;

    he(int n, hi[] arrhi, String string, boolean bl, Account account) {
        this.BR = n;
        this.BS = arrhi;
        this.BT = string;
        this.BU = bl;
        this.account = account;
    }

    /* varargs */ he(String object, boolean bl, Account account, hi ... arrhi) {
        this(1, arrhi, (String)object, bl, account);
        object = new BitSet(hp.fl());
        for (int i = 0; i < arrhi.length; ++i) {
            int n = arrhi[i].Cg;
            if (n == -1) continue;
            if (object.get(n)) {
                throw new IllegalArgumentException("Duplicate global search section type " + hp.O(n));
            }
            object.set(n);
        }
    }

    @Override
    public int describeContents() {
        hf hf = CREATOR;
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        hf hf = CREATOR;
        hf.a(this, parcel, n);
    }

    public static class a {
        private List<hi> BV;
        private String BW;
        private boolean BX;
        private Account BY;

        public a D(boolean bl) {
            this.BX = bl;
            return this;
        }

        public a a(hi hi) {
            if (this.BV == null) {
                this.BV = new ArrayList<hi>();
            }
            this.BV.add(hi);
            return this;
        }

        public a ar(String string) {
            this.BW = string;
            return this;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public he fj() {
            hi[] arrhi;
            String string = this.BW;
            boolean bl = this.BX;
            Account account = this.BY;
            if (this.BV != null) {
                arrhi = this.BV.toArray(new hi[this.BV.size()]);
                do {
                    return new he(string, bl, account, arrhi);
                    break;
                } while (true);
            }
            arrhi = null;
            return new he(string, bl, account, arrhi);
        }
    }

}

