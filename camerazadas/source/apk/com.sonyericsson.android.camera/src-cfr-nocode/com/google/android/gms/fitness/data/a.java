/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class a
implements SafeParcelable {
    public static final Parcelable.Creator<a> CREATOR;
    public static final a Sw;
    private final int BR;
    private final String BZ;
    private final String Sx;
    private final String Sy;

    static;

    a(int var1, String var2, String var3, String var4);

    public a(String var1, String var2, String var3);

    private boolean a(a var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getPackageName();

    public String getVersion();

    int getVersionCode();

    public int hashCode();

    a iA();

    public String iz();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

