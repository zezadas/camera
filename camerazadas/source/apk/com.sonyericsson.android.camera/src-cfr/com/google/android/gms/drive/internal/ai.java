/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.internal.OnContentsResponse;

public class ai
implements Parcelable.Creator<OnContentsResponse> {
    static void a(OnContentsResponse onContentsResponse, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, onContentsResponse.BR);
        b.a(parcel, 2, onContentsResponse.Ox, n, false);
        b.a(parcel, 3, onContentsResponse.Po);
        b.H(parcel, n2);
    }

    public OnContentsResponse ak(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        Contents contents = null;
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
                    contents = a.a(parcel, n3, Contents.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            bl = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new OnContentsResponse(n2, contents, bl);
    }

    public OnContentsResponse[] bw(int n) {
        return new OnContentsResponse[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ak(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bw(n);
    }
}

