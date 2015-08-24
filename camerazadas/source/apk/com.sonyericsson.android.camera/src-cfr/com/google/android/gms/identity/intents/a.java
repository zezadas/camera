/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.List;

public class a
implements Parcelable.Creator<UserAddressRequest> {
    static void a(UserAddressRequest userAddressRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, userAddressRequest.getVersionCode());
        b.c(parcel, 2, userAddressRequest.adK, false);
        b.H(parcel, n);
    }

    public UserAddressRequest cp(Parcel parcel) {
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        ArrayList<CountrySpecification> arrayList = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block4;
                }
                case 2: 
            }
            arrayList = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n3, CountrySpecification.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new UserAddressRequest(n2, arrayList);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cp(parcel);
    }

    public UserAddressRequest[] dX(int n) {
        return new UserAddressRequest[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dX(n);
    }
}

