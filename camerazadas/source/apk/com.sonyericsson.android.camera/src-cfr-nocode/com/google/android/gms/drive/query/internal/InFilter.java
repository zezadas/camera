/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.b;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.internal.AbstractFilter;
import com.google.android.gms.drive.query.internal.f;
import com.google.android.gms.drive.query.internal.h;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class InFilter<T>
extends AbstractFilter {
    public static final h CREATOR;
    final int BR;
    final MetadataBundle QL;
    private final b<T> QW;

    static;

    InFilter(int var1, MetadataBundle var2);

    public InFilter(SearchableCollectionMetadataField<T> var1, T var2);

    public <F> F a(f<F> var1);

    @Override
    public int describeContents();

    public T getValue();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

