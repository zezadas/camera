/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.event.g;

public class ValueChangedDetails
implements SafeParcelable {
    public static final Parcelable.Creator<ValueChangedDetails> CREATOR = new g();
    final int BR;
    final int RM;

    ValueChangedDetails(int n, int n2) {
        this.BR = n;
        this.RM = n2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        g.a(this, parcel, n);
    }
}

