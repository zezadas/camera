/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.SortableMetadataField;
import com.google.android.gms.drive.query.internal.FieldWithSortOrder;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SortOrder
implements SafeParcelable {
    public static final Parcelable.Creator<SortOrder> CREATOR;
    final int BR;
    final List<FieldWithSortOrder> QI;
    final boolean QJ;

    static;

    SortOrder(int var1, List<FieldWithSortOrder> var2, boolean var3);

    private SortOrder(List<FieldWithSortOrder> var1, boolean var2);

    /* synthetic */ SortOrder(List var1, boolean var2,  var3);

    @Override
    public int describeContents();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private final List<FieldWithSortOrder> QI;
        private boolean QJ;

        public Builder();

        public Builder addSortAscending(SortableMetadataField var1);

        public Builder addSortDescending(SortableMetadataField var1);

        public SortOrder build();
    }

}

