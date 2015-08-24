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
public class OnContentsResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnContentsResponse> CREATOR;
    final int BR;
    final Contents Ox;
    final boolean Po;

    static;

    OnContentsResponse(int var1, Contents var2, boolean var3);

    @Override
    public int describeContents();

    public Contents id();

    public boolean ie();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

