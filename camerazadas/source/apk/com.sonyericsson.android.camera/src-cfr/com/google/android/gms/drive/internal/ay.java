/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.RemoveEventListenerRequest;

public class ay
implements Parcelable.Creator<RemoveEventListenerRequest> {
    static void a(RemoveEventListenerRequest removeEventListenerRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, removeEventListenerRequest.BR);
        b.a(parcel, 2, removeEventListenerRequest.MW, n, false);
        b.c(parcel, 3, removeEventListenerRequest.Oa);
        b.H(parcel, n2);
    }

    public RemoveEventListenerRequest az(Parcel parcel) {
        int n = 0;
        int n2 = a.C(parcel);
        DriveId driveId = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block5;
                }
                case 2: {
                    driveId = a.a(parcel, n4, DriveId.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            n = a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new RemoveEventListenerRequest(n3, driveId, n);
    }

    public RemoveEventListenerRequest[] bL(int n) {
        return new RemoveEventListenerRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.az(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bL(n);
    }
}

