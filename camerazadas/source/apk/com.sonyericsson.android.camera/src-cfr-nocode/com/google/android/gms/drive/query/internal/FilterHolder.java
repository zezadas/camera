/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Filter;
import com.google.android.gms.drive.query.internal.ComparisonFilter;
import com.google.android.gms.drive.query.internal.FieldOnlyFilter;
import com.google.android.gms.drive.query.internal.HasFilter;
import com.google.android.gms.drive.query.internal.InFilter;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.drive.query.internal.MatchAllFilter;
import com.google.android.gms.drive.query.internal.NotFilter;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FilterHolder
implements SafeParcelable {
    public static final Parcelable.Creator<FilterHolder> CREATOR;
    final int BR;
    final ComparisonFilter<?> QO;
    final FieldOnlyFilter QP;
    final LogicalFilter QQ;
    final NotFilter QR;
    final InFilter<?> QS;
    final MatchAllFilter QT;
    final HasFilter QU;
    private final Filter QV;

    static;

    FilterHolder(int var1, ComparisonFilter<?> var2, FieldOnlyFilter var3, LogicalFilter var4, NotFilter var5, InFilter<?> var6, MatchAllFilter var7, HasFilter<?> var8);

    public FilterHolder(Filter var1);

    @Override
    public int describeContents();

    public Filter getFilter();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

