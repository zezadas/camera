/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.UserMetadata;

public class h
implements Parcelable.Creator<UserMetadata> {
    static void a(UserMetadata userMetadata, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, userMetadata.BR);
        b.a(parcel, 2, userMetadata.NG, false);
        b.a(parcel, 3, userMetadata.NH, false);
        b.a(parcel, 4, userMetadata.NI, false);
        b.a(parcel, 5, userMetadata.NJ);
        b.a(parcel, 6, userMetadata.NK, false);
        b.H(parcel, n);
    }

    public UserMetadata S(Parcel parcel) {
        boolean bl = false;
        String string = null;
        int n = a.C(parcel);
        String string2 = null;
        String string3 = null;
        String string4 = null;
        int n2 = 0;
        block8 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block8;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block8;
                }
                case 2: {
                    string4 = a.o(parcel, n3);
                    continue block8;
                }
                case 3: {
                    string3 = a.o(parcel, n3);
                    continue block8;
                }
                case 4: {
                    string2 = a.o(parcel, n3);
                    continue block8;
                }
                case 5: {
                    bl = a.c(parcel, n3);
                    continue block8;
                }
                case 6: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new UserMetadata(n2, string4, string3, string2, bl, string);
    }

    public UserMetadata[] aZ(int n) {
        return new UserMetadata[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.S(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.aZ(n);
    }
}

