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
import com.google.android.gms.drive.query.internal.f;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FieldOnlyFilter
extends AbstractFilter {
    public static final Parcelable.Creator<FieldOnlyFilter> CREATOR;
    final int BR;
    final MetadataBundle QL;
    private final MetadataField<?> QM;

    static;

    FieldOnlyFilter(int var1, MetadataBundle var2);

    public FieldOnlyFilter(SearchableMetadataField<?> var1);

    @Override
    public <T> T a(f<T> var1);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

