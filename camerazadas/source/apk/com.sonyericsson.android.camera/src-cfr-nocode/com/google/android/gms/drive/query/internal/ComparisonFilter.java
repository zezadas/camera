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
import com.google.android.gms.drive.query.internal.f;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ComparisonFilter<T>
extends AbstractFilter {
    public static final a CREATOR;
    final int BR;
    final Operator QK;
    final MetadataBundle QL;
    final MetadataField<T> QM;

    static;

    ComparisonFilter(int var1, Operator var2, MetadataBundle var3);

    public ComparisonFilter(Operator var1, SearchableMetadataField<T> var2, T var3);

    public <F> F a(f<F> var1);

    @Override
    public int describeContents();

    public T getValue();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

