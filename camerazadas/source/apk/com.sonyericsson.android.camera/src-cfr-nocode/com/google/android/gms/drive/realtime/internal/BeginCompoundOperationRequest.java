/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class BeginCompoundOperationRequest
implements SafeParcelable {
    public static final Parcelable.Creator<BeginCompoundOperationRequest> CREATOR;
    final int BR;
    final boolean Ri;
    final boolean Rj;
    final String mName;

    static;

    BeginCompoundOperationRequest(int var1, boolean var2, String var3, boolean var4);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

