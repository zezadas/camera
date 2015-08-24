/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.RealtimeDocumentSyncRequest;
import java.util.ArrayList;
import java.util.List;

public class f
implements Parcelable.Creator<RealtimeDocumentSyncRequest> {
    static void a(RealtimeDocumentSyncRequest realtimeDocumentSyncRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, realtimeDocumentSyncRequest.BR);
        b.b(parcel, 2, realtimeDocumentSyncRequest.Nz, false);
        b.b(parcel, 3, realtimeDocumentSyncRequest.NA, false);
        b.H(parcel, n);
    }

    public RealtimeDocumentSyncRequest Q(Parcel parcel) {
        ArrayList<String> arrayList = null;
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList<String> arrayList2 = null;
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
                    arrayList2 = a.C(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            arrayList = a.C(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new RealtimeDocumentSyncRequest(n2, arrayList2, arrayList);
    }

    public RealtimeDocumentSyncRequest[] aX(int n) {
        return new RealtimeDocumentSyncRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.Q(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aX(n);
    }
}

