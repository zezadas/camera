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
import com.google.android.gms.fitness.result.SessionStopResult;
import java.util.ArrayList;
import java.util.List;

public class g
implements Parcelable.Creator<SessionStopResult> {
    static void a(SessionStopResult sessionStopResult, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1000, sessionStopResult.getVersionCode());
        b.a(parcel, 2, sessionStopResult.getStatus(), n, false);
        b.c(parcel, 3, sessionStopResult.getSessions(), false);
        b.H(parcel, n2);
    }

    public SessionStopResult cb(Parcel parcel) {
        ArrayList<Session> arrayList = null;
        int n = a.C(parcel);
        int n2 = 0;
        Status status = null;
        block5 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block5;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block5;
                }
                case 2: {
                    status = (Status)a.a(parcel, n3, Status.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            arrayList = a.c(parcel, n3, Session.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new SessionStopResult(n2, status, arrayList);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cb(parcel);
    }

    public SessionStopResult[] dt(int n) {
        return new SessionStopResult[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dt(n);
    }
}

