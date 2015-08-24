/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.internal.CloseContentsRequest;

public class f
implements Parcelable.Creator<CloseContentsRequest> {
    static void a(CloseContentsRequest closeContentsRequest, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, closeContentsRequest.BR);
        b.a(parcel, 2, closeContentsRequest.Of, n, false);
        b.a(parcel, 3, closeContentsRequest.Oh, false);
        b.H(parcel, n2);
    }

    public CloseContentsRequest Z(Parcel parcel) {
        Boolean bl = null;
        int n = a.C(parcel);
        int n2 = 0;
        Contents contents = null;
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
                    contents = a.a(parcel, n3, Contents.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            bl = a.d(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new CloseContentsRequest(n2, contents, bl);
    }

    public CloseContentsRequest[] bi(int n) {
        return new CloseContentsRequest[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.Z(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bi(n);
    }
}

