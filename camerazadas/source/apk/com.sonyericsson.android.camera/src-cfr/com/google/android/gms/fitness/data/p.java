/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.data.a;

public class p
implements Parcelable.Creator<Session> {
    static void a(Session session, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, session.iD());
        b.c(parcel, 1000, session.getVersionCode());
        b.a(parcel, 2, session.iE());
        b.a(parcel, 3, session.getName(), false);
        b.a(parcel, 4, session.getIdentifier(), false);
        b.a(parcel, 5, session.getDescription(), false);
        b.c(parcel, 7, session.iB());
        b.a(parcel, 8, session.iM(), n, false);
        b.H(parcel, n2);
    }

    public Session bu(Parcel parcel) {
        long l = 0;
        int n = 0;
        a a = null;
        int n2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        String string = null;
        String string2 = null;
        String string3 = null;
        long l2 = 0;
        int n3 = 0;
        block10 : while (parcel.dataPosition() < n2) {
            int n4 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n4)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n4);
                    continue block10;
                }
                case 1: {
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, n4);
                    continue block10;
                }
                case 1000: {
                    n3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
                    continue block10;
                }
                case 2: {
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, n4);
                    continue block10;
                }
                case 3: {
                    string3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block10;
                }
                case 4: {
                    string2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block10;
                }
                case 5: {
                    string = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n4);
                    continue block10;
                }
                case 7: {
                    n = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
                    continue block10;
                }
                case 8: 
            }
            a = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n4, a.CREATOR);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new Session(n3, l2, l, string3, string2, string, n, a);
    }

    public Session[] cL(int n) {
        return new Session[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bu(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cL(n);
    }
}

