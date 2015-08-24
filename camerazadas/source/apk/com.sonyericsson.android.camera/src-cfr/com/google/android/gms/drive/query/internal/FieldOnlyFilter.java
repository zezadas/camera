/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.internal.AbstractFilter;
import com.google.android.gms.drive.query.internal.b;
import com.google.android.gms.drive.query.internal.e;
import com.google.android.gms.drive.query.internal.f;

public class FieldOnlyFilter
extends AbstractFilter {
    public static final Parcelable.Creator<FieldOnlyFilter> CREATOR = new b();
    final int BR;
    final MetadataBundle QL;
    private final MetadataField<?> QM;

    FieldOnlyFilter(int n, MetadataBundle metadataBundle) {
        this.BR = n;
        this.QL = metadataBundle;
        this.QM = e.b(metadataBundle);
    }

    public FieldOnlyFilter(SearchableMetadataField<?> searchableMetadataField) {
        this(1, MetadataBundle.a(searchableMetadataField, null));
    }

    @Override
    public <T> T a(f<T> f) {
        return f.d(this.QM);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        b.a(this, parcel, n);
    }
}

