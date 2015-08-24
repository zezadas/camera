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
import com.google.android.gms.drive.internal.OnListParentsResponse;

public class ao
implements Parcelable.Creator<OnListParentsResponse> {
    static void a(OnListParentsResponse onListParentsResponse, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, onListParentsResponse.BR);
        b.a(parcel, 2, onListParentsResponse.Pv, n, false);
        b.H(parcel, n2);
    }

    public OnListParentsResponse aq(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        DataHolder dataHolder = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block4;
                }
                case 2: 
            }
            dataHolder = (DataHolder)a.a(parcel, n3, DataHolder.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new OnListParentsResponse(n2, dataHolder);
    }

    public OnListParentsResponse[] bC(int n) {
        return new OnListParentsResponse[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aq(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bC(n);
    }
}

