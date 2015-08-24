/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;

public class a
implements Parcelable.Creator<Contents> {
    static void a(Contents contents, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, contents.BR);
        b.a(parcel, 2, contents.KE, n, false);
        b.c(parcel, 3, contents.uQ);
        b.c(parcel, 4, contents.MV);
        b.a(parcel, 5, contents.MW, n, false);
        b.a(parcel, 7, contents.MX);
        b.H(parcel, n2);
    }

    public Contents N(Parcel parcel) {
        DriveId driveId = null;
        boolean bl = false;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        int n3 = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int n4 = 0;
        block8 : while (parcel.dataPosition() < n) {
            int n5 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n5)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n5);
                    continue block8;
                }
                case 1: {
                    n4 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n5);
                    continue block8;
                }
                case 2: {
                    parcelFileDescriptor = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n5, ParcelFileDescriptor.CREATOR);
                    continue block8;
                }
                case 3: {
                    n3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n5);
                    continue block8;
                }
                case 4: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n5);
                    continue block8;
                }
                case 5: {
                    driveId = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n5, DriveId.CREATOR);
                    continue block8;
                }
                case 7: 
            }
            bl = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new Contents(n4, parcelFileDescriptor, n3, n2, driveId, bl);
    }

    public Contents[] aS(int n) {
        return new Contents[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.N(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aS(n);
    }
}

