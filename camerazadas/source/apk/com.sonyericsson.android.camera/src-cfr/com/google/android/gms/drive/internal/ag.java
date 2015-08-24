/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.LoadRealtimeRequest;

public class ag
implements Parcelable.Creator<LoadRealtimeRequest> {
    static void a(LoadRealtimeRequest loadRealtimeRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, loadRealtimeRequest.BR);
        b.a(parcel, 2, loadRealtimeRequest.MW, n, false);
        b.a(parcel, 3, loadRealtimeRequest.Pk);
        b.H(parcel, n2);
    }

    public LoadRealtimeRequest aj(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        DriveId driveId = null;
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
                    driveId = a.a(parcel, n3, DriveId.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            bl = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new LoadRealtimeRequest(n2, driveId, bl);
    }

    public LoadRealtimeRequest[] bv(int n) {
        return new LoadRealtimeRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aj(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bv(n);
    }
}

