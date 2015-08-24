/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class UserMetadata
implements SafeParcelable {
    public static final Parcelable.Creator<UserMetadata> CREATOR;
    final int BR;
    final String NG;
    final String NH;
    final String NI;
    final boolean NJ;
    final String NK;

    static;

    UserMetadata(int var1, String var2, String var3, String var4, boolean var5, String var6);

    public UserMetadata(String var1, String var2, String var3, boolean var4, String var5);

    @Override
    public int describeContents();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

