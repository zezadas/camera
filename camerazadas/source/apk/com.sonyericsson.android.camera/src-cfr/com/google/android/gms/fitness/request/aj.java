/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.ak;

public class aj
implements SafeParcelable {
    public static final Parcelable.Creator<aj> CREATOR = new ak();
    private final int BR;
    private final DataType Sp;
    private final DataSource Sq;

    aj(int n, DataType dataType, DataSource dataSource) {
        this.BR = n;
        this.Sp = dataType;
        this.Sq = dataSource;
    }

    private aj(a a) {
        this.BR = 1;
        this.Sp = a.Sp;
        this.Sq = a.Sq;
    }

    private boolean a(aj aj) {
        if (n.equal(this.Sq, aj.Sq) && n.equal(this.Sp, aj.Sp)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof aj && this.a((aj)object)) {
            return true;
        }
        return false;
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
        return n.hashCode(this.Sq, this.Sp);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ak.a(this, parcel, n);
    }

    public static class a {
        private DataType Sp;
        private DataSource Sq;

        public a d(DataSource dataSource) {
            this.Sq = dataSource;
            return this;
        }

        public a d(DataType dataType) {
            this.Sp = dataType;
            return this;
        }

        public aj jG() {
            if (this.Sp != null && this.Sq != null) {
                throw new IllegalArgumentException("Cannot specify both dataType and dataSource");
            }
            return new aj(this);
        }
    }

}

