/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.internal.AbstractFilter;
import com.google.android.gms.drive.query.internal.e;
import com.google.android.gms.drive.query.internal.f;
import com.google.android.gms.drive.query.internal.g;

public class HasFilter<T>
extends AbstractFilter {
    public static final g CREATOR = new g();
    final int BR;
    final MetadataBundle QL;
    final MetadataField<T> QM;

    HasFilter(int n, MetadataBundle metadataBundle) {
        this.BR = n;
        this.QL = metadataBundle;
        this.QM = e.b(metadataBundle);
    }

    public <F> F a(f<F> f) {
        return f.d(this.QM, this.getValue());
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public T getValue() {
        return this.QL.a(this.QM);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        g.a(this, parcel, n);
    }
}

