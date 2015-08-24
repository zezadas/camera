/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.fitness.result.ListSubscriptionsResult;
import java.util.ArrayList;
import java.util.List;

public class e
implements Parcelable.Creator<ListSubscriptionsResult> {
    static void a(ListSubscriptionsResult listSubscriptionsResult, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, listSubscriptionsResult.getSubscriptions(), false);
        b.c(parcel, 1000, listSubscriptionsResult.getVersionCode());
        b.a(parcel, 2, listSubscriptionsResult.getStatus(), n, false);
        b.H(parcel, n2);
    }

    public ListSubscriptionsResult bZ(Parcel parcel) {
        Status status = null;
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList<Subscription> arrayList = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1: {
                    arrayList = a.c(parcel, n3, Subscription.CREATOR);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: 
            }
            status = (Status)a.a(parcel, n3, Status.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ListSubscriptionsResult(n2, arrayList, status);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bZ(parcel);
    }

    public ListSubscriptionsResult[] dr(int n) {
        return new ListSubscriptionsResult[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dr(n);
    }
}

