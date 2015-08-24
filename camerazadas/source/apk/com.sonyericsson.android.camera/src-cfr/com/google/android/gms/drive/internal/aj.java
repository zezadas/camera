/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.internal.OnDownloadProgressResponse;

public class aj
implements Parcelable.Creator<OnDownloadProgressResponse> {
    static void a(OnDownloadProgressResponse onDownloadProgressResponse, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, onDownloadProgressResponse.BR);
        b.a(parcel, 2, onDownloadProgressResponse.Pp);
        b.a(parcel, 3, onDownloadProgressResponse.Pq);
        b.H(parcel, n);
    }

    public OnDownloadProgressResponse al(Parcel parcel) {
        long l = 0;
        int n = a.C(parcel);
        int n2 = 0;
        long l2 = 0;
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
                    l2 = a.i(parcel, n3);
                    continue block5;
                }
                case 3: 
            }
            l = a.i(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new OnDownloadProgressResponse(n2, l2, l);
    }

    public OnDownloadProgressResponse[] bx(int n) {
        return new OnDownloadProgressResponse[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.al(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bx(n);
    }
}

