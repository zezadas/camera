/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Operator
implements SafeParcelable {
    public static final Parcelable.Creator<Operator> CREATOR;
    public static final Operator QZ;
    public static final Operator Ra;
    public static final Operator Rb;
    public static final Operator Rc;
    public static final Operator Rd;
    public static final Operator Re;
    public static final Operator Rf;
    public static final Operator Rg;
    public static final Operator Rh;
    final int BR;
    final String mTag;

    static;

    Operator(int var1, String var2);

    private Operator(String var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getTag();

    public int hashCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

