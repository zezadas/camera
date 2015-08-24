/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CloseContentsRequest
implements SafeParcelable {
    public static final Parcelable.Creator<CloseContentsRequest> CREATOR;
    final int BR;
    final Contents Of;
    final Boolean Oh;

    static;

    CloseContentsRequest(int var1, Contents var2, Boolean var3);

    public CloseContentsRequest(Contents var1, boolean var2);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

