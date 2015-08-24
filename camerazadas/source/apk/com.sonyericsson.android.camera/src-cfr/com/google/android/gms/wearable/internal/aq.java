/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.ae;
import com.google.android.gms.wearable.internal.ar;

public class aq
implements SafeParcelable {
    public static final Parcelable.Creator<aq> CREATOR = new ar();
    final int BR;
    public final ae avk;

    aq(int n, IBinder iBinder) {
        this.BR = n;
        if (iBinder != null) {
            this.avk = ae.a.bS(iBinder);
            return;
        }
        this.avk = null;
    }

    public aq(ae ae) {
        this.BR = 1;
        this.avk = ae;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    IBinder pV() {
        if (this.avk == null) {
            return null;
        }
        return this.avk.asBinder();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ar.a(this, parcel, n);
    }
}

