/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.SortableMetadataField;
import com.google.android.gms.drive.query.b;
import com.google.android.gms.drive.query.internal.FieldWithSortOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class SortOrder
implements SafeParcelable {
    public static final Parcelable.Creator<SortOrder> CREATOR = new b();
    final int BR;
    final List<FieldWithSortOrder> QI;
    final boolean QJ;

    SortOrder(int n, List<FieldWithSortOrder> list, boolean bl) {
        this.BR = n;
        this.QI = list;
        this.QJ = bl;
    }

    private SortOrder(List<FieldWithSortOrder> list, boolean bl) {
        this(1, list, bl);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return String.format(Locale.US, "SortOrder[%s, %s]", TextUtils.join((CharSequence)",", this.QI), this.QJ);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        b.a(this, parcel, n);
    }

    public static class Builder {
        private final List<FieldWithSortOrder> QI = new ArrayList<FieldWithSortOrder>();
        private boolean QJ = false;

        public Builder addSortAscending(SortableMetadataField sortableMetadataField) {
            this.QI.add(new FieldWithSortOrder(sortableMetadataField.getName(), true));
            return this;
        }

        public Builder addSortDescending(SortableMetadataField sortableMetadataField) {
            this.QI.add(new FieldWithSortOrder(sortableMetadataField.getName(), false));
            return this;
        }

        public SortOrder build() {
            return new SortOrder(this.QI, this.QJ);
        }
    }

}

