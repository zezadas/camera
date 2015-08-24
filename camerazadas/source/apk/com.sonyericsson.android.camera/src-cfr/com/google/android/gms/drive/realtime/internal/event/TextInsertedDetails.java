/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.event.f;

public class TextInsertedDetails
implements SafeParcelable {
    public static final Parcelable.Creator<TextInsertedDetails> CREATOR = new f();
    final int BR;
    final int RL;
    final int mIndex;

    TextInsertedDetails(int n, int n2, int n3) {
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
        f.a(this, parcel, n);
    }
}

