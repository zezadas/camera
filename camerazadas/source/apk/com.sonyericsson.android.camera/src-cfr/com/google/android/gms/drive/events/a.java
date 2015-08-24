/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.events.ChangeEvent;

public class a
implements Parcelable.Creator<ChangeEvent> {
    static void a(ChangeEvent changeEvent, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, changeEvent.BR);
        b.a(parcel, 2, changeEvent.MW, n, false);
        b.c(parcel, 3, changeEvent.NM);
        b.H(parcel, n2);
    }

    public ChangeEvent T(Parcel parcel) {
        int n = 0;
        int n2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        DriveId driveId = null;
        int n3 = 0;
        block5 : while (parcel.dataPosition() < n2) {
            int n4 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n4)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n4);
                    continue block5;
                }
                case 1: {
                    n3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
                    continue block5;
                }
                case 2: {
                    driveId = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n4, DriveId.CREATOR);
                    continue block5;
                }
                case 3: 
            }
            n = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new ChangeEvent(n3, driveId, n);
    }

    public ChangeEvent[] ba(int n) {
        return new ChangeEvent[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.T(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.ba(n);
    }
}

