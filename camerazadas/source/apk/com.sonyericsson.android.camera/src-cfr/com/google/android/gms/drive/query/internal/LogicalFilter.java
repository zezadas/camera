/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Filter;
import com.google.android.gms.drive.query.internal.AbstractFilter;
import com.google.android.gms.drive.query.internal.FilterHolder;
import com.google.android.gms.drive.query.internal.Operator;
import com.google.android.gms.drive.query.internal.f;
import com.google.android.gms.drive.query.internal.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LogicalFilter
extends AbstractFilter {
    public static final Parcelable.Creator<LogicalFilter> CREATOR = new i();
    final int BR;
    private List<Filter> QF;
    final Operator QK;
    final List<FilterHolder> QX;

    LogicalFilter(int n, Operator operator, List<FilterHolder> list) {
        this.BR = n;
        this.QK = operator;
        this.QX = list;
    }

    public /* varargs */ LogicalFilter(Operator safeParcelable2, Filter filter, Filter ... arrfilter) {
        void var2_4;
        void var3_5;
        this.BR = 1;
        this.QK = safeParcelable2;
        this.QX = new ArrayList<FilterHolder>(var3_5.length + 1);
        this.QX.add(new FilterHolder((Filter)var2_4));
        this.QF = new ArrayList<Filter>(var3_5.length + 1);
        this.QF.add((Filter)var2_4);
        for (void var1_3 : var3_5) {
            this.QX.add(new FilterHolder((Filter)var1_3));
            this.QF.add((Filter)var1_3);
        }
    }

    public LogicalFilter(Operator object, Iterable<Filter> object22) {
        this.BR = 1;
        this.QK = object;
        this.QF = new ArrayList<Filter>();
        this.QX = new ArrayList<FilterHolder>();
        for (Object object22 : object22) {
            this.QF.add((Filter)object22);
            this.QX.add(new FilterHolder((Filter)object22));
        }
    }

    @Override
    public <T> T a(f<T> f) {
        ArrayList<T> arrayList = new ArrayList<T>();
        Iterator<FilterHolder> iterator = this.QX.iterator();
        while (iterator.hasNext()) {
            arrayList.add(iterator.next().getFilter().a(f));
        }
        return f.b(this.QK, arrayList);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        i.a(this, parcel, n);
    }
}

