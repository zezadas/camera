/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.am;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class au
implements SafeParcelable {
    public static final Parcelable.Creator<au> CREATOR;
    public final long avN;
    public final List<am> avP;
    public final int statusCode;
    public final int versionCode;

    static;

    au(int var1, int var2, long var3, List<am> var5);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

