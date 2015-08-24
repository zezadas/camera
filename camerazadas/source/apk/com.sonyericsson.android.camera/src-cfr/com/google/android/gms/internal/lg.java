/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.lh;
import java.util.Collections;
import java.util.List;

public class lg
implements SafeParcelable {
    public static final Parcelable.Creator<lg> CREATOR = new lh();
    private final int BR;
    private final List<DataType> SB;

    lg(int n, List<DataType> list) {
        this.BR = n;
        this.SB = list;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public List<DataType> getDataTypes() {
        return Collections.unmodifiableList(this.SB);
    }

    int getVersionCode() {
        return this.BR;
    }

    public String toString() {
        return n.h(this).a("dataTypes", this.SB).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        lh.a(this, parcel, n);
    }
}

