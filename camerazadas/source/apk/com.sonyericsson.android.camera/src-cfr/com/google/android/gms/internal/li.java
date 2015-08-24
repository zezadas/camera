/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.internal.lj;

public class li
implements SafeParcelable {
    public static final Parcelable.Creator<li> CREATOR = new lj();
    private final int BR;
    private final DataSource Sq;

    li(int n, DataSource dataSource) {
        this.BR = n;
        this.Sq = dataSource;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public DataSource getDataSource() {
        return this.Sq;
    }

    int getVersionCode() {
        return this.BR;
    }

    public String toString() {
        return String.format("ApplicationUnregistrationRequest{%s}", this.Sq);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        lj.a(this, parcel, n);
    }
}

