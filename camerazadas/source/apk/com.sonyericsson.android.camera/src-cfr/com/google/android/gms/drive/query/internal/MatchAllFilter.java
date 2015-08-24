/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.query.internal.AbstractFilter;
import com.google.android.gms.drive.query.internal.f;
import com.google.android.gms.drive.query.internal.j;

public class MatchAllFilter
extends AbstractFilter {
    public static final j CREATOR = new j();
    final int BR;

    public MatchAllFilter() {
        this(1);
    }

    MatchAllFilter(int n) {
        this.BR = n;
    }

    public <F> F a(f<F> f) {
        return f.is();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        j.a(this, parcel, n);
    }
}

