/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;

public class c
implements Parcelable.Creator<DriveId> {
    static void a(DriveId driveId, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, driveId.BR);
        b.a(parcel, 2, driveId.Ni, false);
        b.a(parcel, 3, driveId.Nj);
        b.a(parcel, 4, driveId.Nk);
        b.H(parcel, n);
    }

    public DriveId O(Parcel parcel) {
        long l = 0;
        int n = a.C(parcel);
        int n2 = 0;
        String string = null;
        long l2 = 0;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    string = a.o(parcel, n3);
                    continue block6;
                }
                case 3: {
                    l2 = a.i(parcel, n3);
                    continue block6;
                }
                case 4: 
            }
            l = a.i(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new DriveId(n2, string, l2, l);
    }

    public DriveId[] aT(int n) {
        return new DriveId[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.O(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aT(n);
    }
}

