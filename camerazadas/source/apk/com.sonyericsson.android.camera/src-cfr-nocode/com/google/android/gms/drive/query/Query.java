/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Filter;
import com.google.android.gms.drive.query.SortOrder;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Query
implements SafeParcelable {
    public static final Parcelable.Creator<Query> CREATOR;
    final int BR;
    final LogicalFilter QB;
    final String QC;
    final SortOrder QD;
    final List<String> QE;

    static;

    Query(int var1, LogicalFilter var2, String var3, SortOrder var4, List<String> var5);

    Query(LogicalFilter var1, String var2, SortOrder var3, List<String> var4);

    @Override
    public int describeContents();

    public Filter getFilter();

    public String getPageToken();

    public SortOrder getSortOrder();

    public List<String> iq();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private String QC;
        private SortOrder QD;
        private List<String> QE;
        private final List<Filter> QF;

        public Builder();

        public Builder(Query var1);

        public Builder addFilter(Filter var1);

        public Query build();

        public Builder setPageToken(String var1);

        public Builder setSortOrder(SortOrder var1);
    }

}

