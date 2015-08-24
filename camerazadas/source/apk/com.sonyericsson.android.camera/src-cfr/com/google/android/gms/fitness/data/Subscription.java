/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.s;

public class Subscription
implements SafeParcelable {
    public static final Parcelable.Creator<Subscription> CREATOR = new s();
    private final int BR;
    private final DataType Sp;
    private final DataSource Sq;
    private final long Tt;
    private final int Tu;

    Subscription(int n, DataSource dataSource, DataType dataType, long l, int n2) {
        this.BR = n;
        this.Sq = dataSource;
        this.Sp = dataType;
        this.Tt = l;
        this.Tu = n2;
    }

    private Subscription(a a) {
        this.BR = 1;
        this.Sp = a.Sp;
        this.Sq = a.Sq;
        this.Tt = a.Tt;
        this.Tu = a.Tu;
    }

    private boolean a(Subscription subscription) {
        if (n.equal(this.Sq, subscription.Sq) && n.equal(this.Sp, subscription.Sp) && this.Tt == subscription.Tt && this.Tu == subscription.Tu) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof Subscription && this.a((Subscription)object)) {
            return true;
        }
        return false;
    }

    public int getAccuracyMode() {
        return this.Tu;
    }

    public DataSource getDataSource() {
        return this.Sq;
    }

    public DataType getDataType() {
        return this.Sp;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.Sq, this.Sq, this.Tt, this.Tu);
    }

    public long iX() {
        return this.Tt;
    }

    public DataType iY() {
        if (this.Sp == null) {
            return this.Sq.getDataType();
        }
        return this.Sp;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String toDebugString() {
        String string;
        if (this.Sq == null) {
            string = this.Sp.getName();
            do {
                return String.format("Subscription{%s}", string);
                break;
            } while (true);
        }
        string = this.Sq.toDebugString();
        return String.format("Subscription{%s}", string);
    }

    public String toString() {
        return n.h(this).a("dataSource", this.Sq).a("dataType", this.Sp).a("samplingIntervalMicros", this.Tt).a("accuracyMode", this.Tu).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        s.a(this, parcel, n);
    }

    public static class a {
        private DataType Sp;
        private DataSource Sq;
        private long Tt = -1;
        private int Tu = 2;

        public a b(DataSource dataSource) {
            this.Sq = dataSource;
            return this;
        }

        public a b(DataType dataType) {
            this.Sp = dataType;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Subscription iZ() {
            boolean bl;
            block2 : {
                boolean bl2 = false;
                bl = this.Sq != null || this.Sp != null;
                o.a(bl, "Must call setDataSource() or setDataType()");
                if (this.Sp != null && this.Sq != null) {
                    bl = bl2;
                    if (!this.Sp.equals(this.Sq.getDataType())) break block2;
                }
                bl = true;
            }
            o.a(bl, "Specified data type is incompatible with specified data source");
            return new Subscription(this);
        }
    }

}

