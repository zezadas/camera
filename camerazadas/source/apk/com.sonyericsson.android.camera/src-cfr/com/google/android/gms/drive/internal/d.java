/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.internal.CheckResourceIdsExistRequest;
import java.util.ArrayList;
import java.util.List;

public class d
implements Parcelable.Creator<CheckResourceIdsExistRequest> {
    static void a(CheckResourceIdsExistRequest checkResourceIdsExistRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, checkResourceIdsExistRequest.getVersionCode());
        b.b(parcel, 2, checkResourceIdsExistRequest.hX(), false);
        b.H(parcel, n);
    }

    public CheckResourceIdsExistRequest X(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList<String> arrayList = null;
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
            arrayList = a.C(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new CheckResourceIdsExistRequest(n2, arrayList);
    }

    public CheckResourceIdsExistRequest[] bg(int n) {
        return new CheckResourceIdsExistRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.X(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bg(n);
    }
}

