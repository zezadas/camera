/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mm;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ml
implements SafeParcelable {
    public static final mm CREATOR;
    final int BR;
    private final String afz;
    private final String mTag;

    static;

    ml(int var1, String var2, String var3);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getTag();

    public int hashCode();

    public String mk();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

