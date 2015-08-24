/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.query.internal.AbstractFilter;
import com.google.android.gms.drive.query.internal.f;
import com.google.android.gms.drive.query.internal.j;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MatchAllFilter
extends AbstractFilter {
    public static final j CREATOR;
    final int BR;

    static;

    public MatchAllFilter();

    MatchAllFilter(int var1);

    public <F> F a(f<F> var1);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

