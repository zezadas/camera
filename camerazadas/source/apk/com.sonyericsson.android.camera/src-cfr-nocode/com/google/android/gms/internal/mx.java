/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.my;
import java.util.Locale;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class mx
implements SafeParcelable {
    public static final my CREATOR;
    public final String Dv;
    public final String aij;
    public final String aik;
    public final int versionCode;

    static;

    public mx(int var1, String var2, String var3, String var4);

    public mx(String var1, Locale var2, String var3);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

