/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TextInsertedDetails
implements SafeParcelable {
    public static final Parcelable.Creator<TextInsertedDetails> CREATOR;
    final int BR;
    final int RL;
    final int mIndex;

    static;

    TextInsertedDetails(int var1, int var2, int var3);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

