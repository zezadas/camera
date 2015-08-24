/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.query.Filter;
import com.google.android.gms.drive.query.internal.AbstractFilter;
import com.google.android.gms.drive.query.internal.FilterHolder;
import com.google.android.gms.drive.query.internal.f;
import com.google.android.gms.drive.query.internal.k;

public class NotFilter
extends AbstractFilter {
    public static final Parcelable.Creator<NotFilter> CREATOR = new k();
    final int BR;
    final FilterHolder QY;

    NotFilter(int n, FilterHolder filterHolder) {
        this.BR = n;
        this.QY = filterHolder;
    }

    public NotFilter(Filter filter) {
        this(1, new FilterHolder(filter));
    }

    @Override
    public <T> T a(f<T> f) {
        return f.j(this.QY.getFilter().a(f));
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        k.a(this, parcel, n);
    }
}

