/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.realtime.internal.ParcelableCollaborator;

public class p
implements Parcelable.Creator<ParcelableCollaborator> {
    static void a(ParcelableCollaborator parcelableCollaborator, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, parcelableCollaborator.BR);
        b.a(parcel, 2, parcelableCollaborator.Rk);
        b.a(parcel, 3, parcelableCollaborator.Rl);
        b.a(parcel, 4, parcelableCollaborator.vL, false);
        b.a(parcel, 5, parcelableCollaborator.Rm, false);
        b.a(parcel, 6, parcelableCollaborator.NH, false);
        b.a(parcel, 7, parcelableCollaborator.Rn, false);
        b.a(parcel, 8, parcelableCollaborator.Ro, false);
        b.H(parcel, n);
    }

    public ParcelableCollaborator aW(Parcel parcel) {
        boolean bl = false;
        String string = null;
        int n = a.C(parcel);
        String string2 = null;
        String string3 = null;
        String string4 = null;
        String string5 = null;
        boolean bl2 = false;
        int n2 = 0;
        block10 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block10;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block10;
                }
                case 2: {
                    bl2 = a.c(parcel, n3);
                    continue block10;
                }
                case 3: {
                    bl = a.c(parcel, n3);
                    continue block10;
                }
                case 4: {
                    string5 = a.o(parcel, n3);
                    continue block10;
                }
                case 5: {
                    string4 = a.o(parcel, n3);
                    continue block10;
                }
                case 6: {
                    string3 = a.o(parcel, n3);
                    continue block10;
                }
                case 7: {
                    string2 = a.o(parcel, n3);
                    continue block10;
                }
                case 8: 
            }
            string = a.o(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ParcelableCollaborator(n2, bl2, bl, string5, string4, string3, string2, string);
    }

    public ParcelableCollaborator[] cj(int n) {
        return new ParcelableCollaborator[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.aW(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cj(n);
    }
}

