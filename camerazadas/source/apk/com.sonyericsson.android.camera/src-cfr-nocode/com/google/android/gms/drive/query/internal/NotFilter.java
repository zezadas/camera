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

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class NotFilter
extends AbstractFilter {
    public static final Parcelable.Creator<NotFilter> CREATOR;
    final int BR;
    final FilterHolder QY;

    static;

    NotFilter(int var1, FilterHolder var2);

    public NotFilter(Filter var1);

    @Override
    public <T> T a(f<T> var1);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

