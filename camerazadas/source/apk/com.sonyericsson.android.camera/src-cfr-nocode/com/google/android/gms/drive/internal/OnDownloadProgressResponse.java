/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Illegal identifiers - consider using --renameillegalidents true
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class OnDownloadProgressResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnDownloadProgressResponse> CREATOR;
    final int BR;
    final long Pp;
    final long Pq;

    static;

    OnDownloadProgressResponse(int var1, long var2, long var4);

    @Override
    public int describeContents();

    public long if();

    public long ig();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

