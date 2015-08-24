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
import com.google.android.gms.drive.query.internal.d;

public class FilterHolder
implements SafeParcelable {
    public static final Parcelable.Creator<FilterHolder> CREATOR = new d();
    final int BR;
    final ComparisonFilter<?> QO;
    final FieldOnlyFilter QP;
    final LogicalFilter QQ;
    final NotFilter QR;
    final InFilter<?> QS;
    final MatchAllFilter QT;
    final HasFilter QU;
    private final Filter QV;

    FilterHolder(int n, ComparisonFilter<?> comparisonFilter, FieldOnlyFilter fieldOnlyFilter, LogicalFilter logicalFilter, NotFilter notFilter, InFilter<?> inFilter, MatchAllFilter matchAllFilter, HasFilter<?> hasFilter) {
        this.BR = n;
        this.QO = comparisonFilter;
        this.QP = fieldOnlyFilter;
        this.QQ = logicalFilter;
        this.QR = notFilter;
        this.QS = inFilter;
        this.QT = matchAllFilter;
        this.QU = hasFilter;
        if (this.QO != null) {
            this.QV = this.QO;
            return;
        }
        if (this.QP != null) {
            this.QV = this.QP;
            return;
        }
        if (this.QQ != null) {
            this.QV = this.QQ;
            return;
        }
        if (this.QR != null) {
            this.QV = this.QR;
            return;
        }
        if (this.QS != null) {
            this.QV = this.QS;
            return;
        }
        if (this.QT != null) {
            this.QV = this.QT;
            return;
        }
        if (this.QU != null) {
            this.QV = this.QU;
            return;
        }
        throw new IllegalArgumentException("At least one filter must be set.");
    }

    /*
     * Enabled aggressive block sorting
     */
    public FilterHolder(Filter filter) {
        void var2_11;
        void var2_15;
        void var2_3;
        void var2_13;
        void var2_5;
        void var2_9;
        void var2_7;
        this.BR = 2;
        if (filter instanceof ComparisonFilter) {
            ComparisonFilter comparisonFilter = (ComparisonFilter)filter;
        } else {
            Object var2_16 = null;
        }
        this.QO = var2_3;
        if (filter instanceof FieldOnlyFilter) {
            FieldOnlyFilter fieldOnlyFilter = (FieldOnlyFilter)filter;
        } else {
            Object var2_17 = null;
        }
        this.QP = var2_5;
        if (filter instanceof LogicalFilter) {
            LogicalFilter logicalFilter = (LogicalFilter)filter;
        } else {
            Object var2_18 = null;
        }
        this.QQ = var2_7;
        if (filter instanceof NotFilter) {
            NotFilter notFilter = (NotFilter)filter;
        } else {
            Object var2_19 = null;
        }
        this.QR = var2_9;
        if (filter instanceof InFilter) {
            InFilter inFilter = (InFilter)filter;
        } else {
            Object var2_20 = null;
        }
        this.QS = var2_11;
        if (filter instanceof MatchAllFilter) {
            MatchAllFilter matchAllFilter = (MatchAllFilter)filter;
        } else {
            Object var2_21 = null;
        }
        this.QT = var2_13;
        if (filter instanceof HasFilter) {
            HasFilter hasFilter = (HasFilter)filter;
        } else {
            Object var2_22 = null;
        }
        this.QU = var2_15;
        if (this.QO == null && this.QP == null && this.QQ == null && this.QR == null && this.QS == null && this.QT == null && this.QU == null) {
            throw new IllegalArgumentException("Invalid filter type or null filter.");
        }
        this.QV = filter;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Filter getFilter() {
        return this.QV;
    }

    public String toString() {
        return String.format("FilterHolder[%s]", this.QV);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        d.a(this, parcel, n);
    }
}

