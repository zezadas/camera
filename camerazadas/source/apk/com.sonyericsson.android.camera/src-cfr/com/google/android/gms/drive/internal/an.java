/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.internal.OnListEntriesResponse;

public class an
implements Parcelable.Creator<OnListEntriesResponse> {
    static void a(OnListEntriesResponse onListEntriesResponse, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, onListEntriesResponse.BR);
        b.a(parcel, 2, onListEntriesResponse.Pu, n, false);
        b.a(parcel, 3, onListEntriesResponse.Oz);
        b.H(parcel, n2);
    }

    public OnListEntriesResponse ap(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        DataHolder dataHolder = null;
        int n2 = 0;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: {
                    dataHolder = (DataHolder)a.a(parcel, n3, DataHolder.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            bl = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new OnListEntriesResponse(n2, dataHolder, bl);
    }

    public OnListEntriesResponse[] bB(int n) {
        return new OnListEntriesResponse[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ap(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bB(n);
    }
}

