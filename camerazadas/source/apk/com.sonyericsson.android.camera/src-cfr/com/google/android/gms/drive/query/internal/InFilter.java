/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.b;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.internal.AbstractFilter;
import com.google.android.gms.drive.query.internal.e;
import com.google.android.gms.drive.query.internal.f;
import com.google.android.gms.drive.query.internal.h;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

public class InFilter<T>
extends AbstractFilter {
    public static final h CREATOR = new h();
    final int BR;
    final MetadataBundle QL;
    private final b<T> QW;

    InFilter(int n, MetadataBundle metadataBundle) {
        this.BR = n;
        this.QL = metadataBundle;
        this.QW = (b)e.b(metadataBundle);
    }

    public InFilter(SearchableCollectionMetadataField<T> searchableCollectionMetadataField, T t) {
        this(1, MetadataBundle.a(searchableCollectionMetadataField, Collections.singleton(t)));
    }

    public <F> F a(f<F> f) {
        return f.b(this.QW, this.getValue());
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public T getValue() {
        return (T)((Collection)this.QL.a(this.QW)).iterator().next();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        h.a(this, parcel, n);
    }
}

