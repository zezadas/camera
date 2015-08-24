/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class OpenFileIntentSenderRequest
implements SafeParcelable {
    public static final Parcelable.Creator<OpenFileIntentSenderRequest> CREATOR;
    final int BR;
    final String Nw;
    final String[] Nx;
    final DriveId Ny;

    static;

    OpenFileIntentSenderRequest(int var1, String var2, String[] var3, DriveId var4);

    public OpenFileIntentSenderRequest(String var1, String[] var2, DriveId var3);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

