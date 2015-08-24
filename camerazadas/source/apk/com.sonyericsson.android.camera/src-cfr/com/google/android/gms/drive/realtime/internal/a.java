/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.realtime.internal.BeginCompoundOperationRequest;

public class a
implements Parcelable.Creator<BeginCompoundOperationRequest> {
    static void a(BeginCompoundOperationRequest beginCompoundOperationRequest, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, beginCompoundOperationRequest.BR);
        b.a(parcel, 2, beginCompoundOperationRequest.Ri);
        b.a(parcel, 3, beginCompoundOperationRequest.mName, false);
        b.a(parcel, 4, beginCompoundOperationRequest.Rj);
        b.H(parcel, n);
    }

    public BeginCompoundOperationRequest aU(Parcel parcel) {
        boolean bl = false;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        String string = null;
        boolean bl2 = true;
        int n2 = 0;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    bl = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n3);
                    continue block6;
                }
                case 3: {
                    string = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block6;
                }
                case 4: 
            }
            bl2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new BeginCompoundOperationRequest(n2, bl, string, bl2);
    }

    public BeginCompoundOperationRequest[] cg(int n) {
        return new BeginCompoundOperationRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aU(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cg(n);
    }
}

