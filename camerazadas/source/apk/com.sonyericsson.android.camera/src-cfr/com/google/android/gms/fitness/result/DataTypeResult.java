/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.result.d;

public class DataTypeResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<DataTypeResult> CREATOR = new d();
    private final int BR;
    private final Status CM;
    private final DataType Sp;

    DataTypeResult(int n, Status status, DataType dataType) {
        this.BR = n;
        this.CM = status;
        this.Sp = dataType;
    }

    public DataTypeResult(Status status, DataType dataType) {
        this.BR = 2;
        this.CM = status;
        this.Sp = dataType;
    }

    public static DataTypeResult F(Status status) {
        return new DataTypeResult(status, null);
    }

    private boolean b(DataTypeResult dataTypeResult) {
        if (this.CM.equals(dataTypeResult.CM) && n.equal(this.Sp, dataTypeResult.Sp)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof DataTypeResult && this.b((DataTypeResult)object)) {
            return true;
        }
        return false;
    }

    public DataType getDataType() {
        return this.Sp;
    }

    @Override
    public Status getStatus() {
        return this.CM;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.CM, this.Sp);
    }

    public String toString() {
        return n.h(this).a("status", this.CM).a("dataType", this.Sp).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        d.a(this, parcel, n);
    }
}

