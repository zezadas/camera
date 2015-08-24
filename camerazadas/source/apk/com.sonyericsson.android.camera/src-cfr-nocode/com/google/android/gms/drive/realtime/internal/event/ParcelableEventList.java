/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.event.ParcelableEvent;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ParcelableEventList
implements SafeParcelable {
    public static final Parcelable.Creator<ParcelableEventList> CREATOR;
    final int BR;
    final DataHolder RE;
    final boolean RF;
    final List<String> RG;
    final List<ParcelableEvent> me;

    static;

    ParcelableEventList(int var1, List<ParcelableEvent> var2, DataHolder var3, boolean var4, List<String> var5);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

