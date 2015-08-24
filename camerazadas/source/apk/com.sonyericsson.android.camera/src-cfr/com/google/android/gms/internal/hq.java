/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hk;
import com.google.android.gms.internal.hr;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

public class hq
implements SafeParcelable {
    public static final hr CREATOR = new hr();
    final int BR;
    public final String Co;
    public final boolean Cp;
    public final boolean Cq;
    public final String Cr;
    public final hk[] Cs;
    final int[] Ct;
    public final String Cu;
    public final String name;
    public final int weight;

    hq(int n, String string, String string2, boolean bl, int n2, boolean bl2, String string3, hk[] arrhk, int[] arrn, String string4) {
        this.BR = n;
        this.name = string;
        this.Co = string2;
        this.Cp = bl;
        this.weight = n2;
        this.Cq = bl2;
        this.Cr = string3;
        this.Cs = arrhk;
        this.Ct = arrn;
        this.Cu = string4;
    }

    hq(String string, String string2, boolean bl, int n, boolean bl2, String string3, hk[] arrhk, int[] arrn, String string4) {
        this(2, string, string2, bl, n, bl2, string3, arrhk, arrn, string4);
    }

    @Override
    public int describeContents() {
        hr hr = CREATOR;
        return 0;
    }

    public boolean equals(Object object) {
        boolean bl;
        boolean bl2 = bl = false;
        if (object instanceof hq) {
            object = (hq)object;
            bl2 = bl;
            if (this.name.equals(object.name)) {
                bl2 = bl;
                if (this.Co.equals(object.Co)) {
                    bl2 = bl;
                    if (this.Cp == object.Cp) {
                        bl2 = true;
                    }
                }
            }
        }
        return bl2;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        hr hr = CREATOR;
        hr.a(this, parcel, n);
    }

    public static final class a {
        private final List<hk> CA;
        private BitSet CB;
        private String CC;
        private String Cv;
        private boolean Cw;
        private int Cx;
        private boolean Cy;
        private String Cz;
        private final String mName;

        public a(String string) {
            this.mName = string;
            this.Cx = 1;
            this.CA = new ArrayList<hk>();
        }

        public a E(boolean bl) {
            this.Cw = bl;
            return this;
        }

        public a F(boolean bl) {
            this.Cy = bl;
            return this;
        }

        public a P(int n) {
            if (this.CB == null) {
                this.CB = new BitSet();
            }
            this.CB.set(n);
            return this;
        }

        public a at(String string) {
            this.Cv = string;
            return this;
        }

        public a au(String string) {
            this.CC = string;
            return this;
        }

        public hq fm() {
            int n = 0;
            Object object = null;
            if (this.CB != null) {
                int[] arrn = new int[this.CB.cardinality()];
                int n2 = this.CB.nextSetBit(0);
                do {
                    object = arrn;
                    if (n2 < 0) break;
                    arrn[n] = n2;
                    n2 = this.CB.nextSetBit(n2 + 1);
                    ++n;
                } while (true);
            }
            return new hq(this.mName, this.Cv, this.Cw, this.Cx, this.Cy, this.Cz, this.CA.toArray(new hk[this.CA.size()]), (int[])object, this.CC);
        }
    }

}

