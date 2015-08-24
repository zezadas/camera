/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.lt;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ls
implements SafeParcelable {
    public static final lt CREATOR;
    private final int BR;
    public final String packageName;
    public final int uid;

    static;

    ls(int var1, int var2, String var3);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

