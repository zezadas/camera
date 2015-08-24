/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Filter;
import com.google.android.gms.drive.query.SortOrder;
import com.google.android.gms.drive.query.a;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.drive.query.internal.MatchAllFilter;
import com.google.android.gms.drive.query.internal.Operator;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class Query
implements SafeParcelable {
    public static final Parcelable.Creator<Query> CREATOR = new a();
    final int BR;
    final LogicalFilter QB;
    final String QC;
    final SortOrder QD;
    final List<String> QE;

    Query(int n, LogicalFilter logicalFilter, String string, SortOrder sortOrder, List<String> list) {
        this.BR = n;
        this.QB = logicalFilter;
        this.QC = string;
        this.QD = sortOrder;
        this.QE = list;
    }

    Query(LogicalFilter logicalFilter, String string, SortOrder sortOrder, List<String> list) {
        this(1, logicalFilter, string, sortOrder, list);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Filter getFilter() {
        return this.QB;
    }

    public String getPageToken() {
        return this.QC;
    }

    public SortOrder getSortOrder() {
        return this.QD;
    }

    public List<String> iq() {
        return this.QE;
    }

    public String toString() {
        return String.format(Locale.US, "Query[%s,%s,PageToken=%s]", this.QB, this.QD, this.QC);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n);
    }

    public static class Builder {
        private String QC;
        private SortOrder QD;
        private List<String> QE;
        private final List<Filter> QF = new ArrayList<Filter>();

        public Builder() {
        }

        public Builder(Query query) {
            this.QF.add(query.getFilter());
            this.QC = query.getPageToken();
            this.QD = query.getSortOrder();
            this.QE = query.iq();
        }

        public Builder addFilter(Filter filter) {
            if (!(filter instanceof MatchAllFilter)) {
                this.QF.add(filter);
            }
            return this;
        }

        public Query build() {
            return new Query(new LogicalFilter(Operator.Re, this.QF), this.QC, this.QD, this.QE);
        }

        public Builder setPageToken(String string) {
            this.QC = string;
            return this;
        }

        public Builder setSortOrder(SortOrder sortOrder) {
            this.QD = sortOrder;
            return this;
        }
    }

}

