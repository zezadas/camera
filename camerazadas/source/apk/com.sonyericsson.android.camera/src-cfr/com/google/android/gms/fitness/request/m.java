/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.n;

public class m
implements SafeParcelable {
    public static final Parcelable.Creator<m> CREATOR = new n();
    private final int BR;
    private final DataType Sp;

    m(int n, DataType dataType) {
        this.BR = n;
        this.Sp = dataType;
    }

    private m(a a) {
        this.BR = 1;
        this.Sp = a.Sp;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public DataType getDataType() {
        return this.Sp;
    }

    int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        n.a(this, parcel, n);
    }

    public static class a {
        private DataType Sp;

        public a c(DataType dataType) {
            this.Sp = dataType;
            return this;
        }

        public m jq() {
            return new m(this);
        }
    }

}

