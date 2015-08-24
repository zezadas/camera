/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.realtime.internal.event.ObjectChangedDetails;

public class a
implements Parcelable.Creator<ObjectChangedDetails> {
    static void a(ObjectChangedDetails objectChangedDetails, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, objectChangedDetails.BR);
        b.c(parcel, 2, objectChangedDetails.Rr);
        b.c(parcel, 3, objectChangedDetails.Rs);
        b.H(parcel, n);
    }

    public ObjectChangedDetails aY(Parcel parcel) {
        int n = 0;
        int n2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n3 = 0;
        int n4 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n5 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n5)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n5);
                    continue block5;
                }
                case 1: {
                    n4 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n5);
                    continue block5;
                }
                case 2: {
                    n3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n5);
                    continue block5;
                }
                case 3: 
            }
            n = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ObjectChangedDetails(n4, n3, n);
    }

    public ObjectChangedDetails[] cl(int n) {
        return new ObjectChangedDetails[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aY(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cl(n);
    }
}

