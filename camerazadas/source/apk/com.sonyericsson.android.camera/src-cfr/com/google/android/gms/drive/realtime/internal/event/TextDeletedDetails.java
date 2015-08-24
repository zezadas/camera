/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.event.e;

public class TextDeletedDetails
implements SafeParcelable {
    public static final Parcelable.Creator<TextDeletedDetails> CREATOR = new e();
    final int BR;
    final int RL;
    final int mIndex;

    TextDeletedDetails(int n, int n2, int n3) {
        this.BR = n;
        this.mIndex = n2;
        this.RL = n3;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        e.a(this, parcel, n);
    }
}

