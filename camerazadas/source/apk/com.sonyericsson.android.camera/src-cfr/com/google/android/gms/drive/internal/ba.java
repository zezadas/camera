/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.SetResourceParentsRequest;
import java.util.ArrayList;
import java.util.List;

public class ba
implements Parcelable.Creator<SetResourceParentsRequest> {
    static void a(SetResourceParentsRequest setResourceParentsRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, setResourceParentsRequest.BR);
        b.a(parcel, 2, setResourceParentsRequest.Pz, n, false);
        b.c(parcel, 3, setResourceParentsRequest.PA, false);
        b.H(parcel, n2);
    }

    public SetResourceParentsRequest aB(Parcel parcel) {
        ArrayList<DriveId> arrayList = null;
        int n = a.C(parcel);
        int n2 = 0;
        DriveId driveId = null;
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
                    driveId = a.a(parcel, n3, DriveId.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            arrayList = a.c(parcel, n3, DriveId.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new SetResourceParentsRequest(n2, driveId, arrayList);
    }

    public SetResourceParentsRequest[] bN(int n) {
        return new SetResourceParentsRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aB(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bN(n);
    }
}

