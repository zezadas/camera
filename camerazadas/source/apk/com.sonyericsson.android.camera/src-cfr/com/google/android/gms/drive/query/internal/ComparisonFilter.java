/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.internal.AbstractFilter;
import com.google.android.gms.drive.query.internal.Operator;
import com.google.android.gms.drive.query.internal.a;
import com.google.android.gms.drive.query.internal.e;
import com.google.android.gms.drive.query.internal.f;

public class ComparisonFilter<T>
extends AbstractFilter {
    public static final a CREATOR = new a();
    final int BR;
    final Operator QK;
    final MetadataBundle QL;
    final MetadataField<T> QM;

    ComparisonFilter(int n, Operator operator, MetadataBundle metadataBundle) {
        this.BR = n;
        this.QK = operator;
        this.QL = metadataBundle;
        this.QM = e.b(metadataBundle);
    }

    public ComparisonFilter(Operator operator, SearchableMetadataField<T> searchableMetadataField, T t) {
        this(1, operator, MetadataBundle.a(searchableMetadataField, t));
    }

    public <F> F a(f<F> f) {
        return f.b(this.QK, this.QM, this.getValue());
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
        a.a(this, parcel, n);
    }
}

