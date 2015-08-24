/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.realtime.internal.ParcelableIndexReference;

public class q
implements Parcelable.Creator<ParcelableIndexReference> {
    static void a(ParcelableIndexReference parcelableIndexReference, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, parcelableIndexReference.BR);
        b.a(parcel, 2, parcelableIndexReference.Rp, false);
        b.c(parcel, 3, parcelableIndexReference.mIndex);
        b.a(parcel, 4, parcelableIndexReference.Rq);
        b.H(parcel, n);
    }

    public ParcelableIndexReference aX(Parcel parcel) {
        boolean bl = false;
        int n = a.C(parcel);
        String string = null;
        int n2 = 0;
        int n3 = 0;
        block6 : while (parcel.dataPosition() < n) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block6;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block6;
                }
                case 2: {
                    string = a.o(parcel, n4);
                    continue block6;
                }
                case 3: {
                    n2 = a.g(parcel, n4);
                    continue block6;
                }
                case 4: 
            }
            bl = a.c(parcel, n4);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ParcelableIndexReference(n3, string, n2, bl);
    }

    public ParcelableIndexReference[] ck(int n) {
        return new ParcelableIndexReference[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aX(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ck(n);
    }
}

