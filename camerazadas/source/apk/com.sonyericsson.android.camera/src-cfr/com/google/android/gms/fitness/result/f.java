/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.data.q;
import com.google.android.gms.fitness.result.SessionReadResult;
import java.util.ArrayList;
import java.util.List;

public class f
implements Parcelable.Creator<SessionReadResult> {
    static void a(SessionReadResult sessionReadResult, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, sessionReadResult.getSessions(), false);
        b.c(parcel, 1000, sessionReadResult.getVersionCode());
        b.c(parcel, 2, sessionReadResult.jL(), false);
        b.a(parcel, 3, sessionReadResult.getStatus(), n, false);
        b.H(parcel, n2);
    }

    public SessionReadResult ca(Parcel parcel) {
        Status status = null;
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList<q> arrayList = null;
        ArrayList<Session> arrayList2 = null;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    arrayList2 = a.c(parcel, n3, Session.CREATOR);
                    continue block6;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    arrayList = a.c(parcel, n3, q.CREATOR);
                    continue block6;
                }
                case 3: 
            }
            status = (Status)a.a(parcel, n3, Status.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new SessionReadResult(n2, arrayList2, arrayList, status);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ca(parcel);
    }

    public SessionReadResult[] ds(int n) {
        return new SessionReadResult[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ds(n);
    }
}

