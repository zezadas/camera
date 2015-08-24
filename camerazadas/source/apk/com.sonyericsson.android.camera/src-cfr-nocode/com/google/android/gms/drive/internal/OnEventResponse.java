/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.DriveEvent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class OnEventResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnEventResponse> CREATOR;
    final int BR;
    final int Oa;
    final ChangeEvent Ps;
    final CompletionEvent Pt;

    static;

    OnEventResponse(int var1, int var2, ChangeEvent var3, CompletionEvent var4);

    @Override
    public int describeContents();

    public DriveEvent ih();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

