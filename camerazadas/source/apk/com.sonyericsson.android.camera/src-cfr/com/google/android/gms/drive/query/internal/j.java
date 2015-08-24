/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.query.internal.MatchAllFilter;

public class j
implements Parcelable.Creator<MatchAllFilter> {
    static void a(MatchAllFilter matchAllFilter, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1000, matchAllFilter.BR);
        b.H(parcel, n);
    }

    public MatchAllFilter aR(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        block3 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block3;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new MatchAllFilter(n2);
    }

    public MatchAllFilter[] cd(int n) {
        return new MatchAllFilter[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aR(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cd(n);
    }
}

