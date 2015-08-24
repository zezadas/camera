/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.event.ParcelableEvent;
import com.google.android.gms.drive.realtime.internal.event.c;
import java.util.List;

public class ParcelableEventList
implements SafeParcelable {
    public static final Parcelable.Creator<ParcelableEventList> CREATOR = new c();
    final int BR;
    final DataHolder RE;
    final boolean RF;
    final List<String> RG;
    final List<ParcelableEvent> me;

    ParcelableEventList(int n, List<ParcelableEvent> list, DataHolder dataHolder, boolean bl, List<String> list2) {
        this.BR = n;
        this.me = list;
        this.RE = dataHolder;
        this.RF = bl;
        this.RG = list2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }
}

