/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.query.Filter;
import com.google.android.gms.drive.query.internal.AbstractFilter;
import com.google.android.gms.drive.query.internal.FilterHolder;
import com.google.android.gms.drive.query.internal.Operator;
import com.google.android.gms.drive.query.internal.f;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class LogicalFilter
extends AbstractFilter {
    public static final Parcelable.Creator<LogicalFilter> CREATOR;
    final int BR;
    private List<Filter> QF;
    final Operator QK;
    final List<FilterHolder> QX;

    static;

    LogicalFilter(int var1, Operator var2, List<FilterHolder> var3);

    public /* varargs */ LogicalFilter(Operator var1, Filter var2, Filter ... var3);

    public LogicalFilter(Operator var1, Iterable<Filter> var2);

    @Override
    public <T> T a(f<T> var1);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

