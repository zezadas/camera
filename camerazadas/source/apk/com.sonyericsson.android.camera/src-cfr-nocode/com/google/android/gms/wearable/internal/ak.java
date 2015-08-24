/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.Node;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ak
implements SafeParcelable,
Node {
    public static final Parcelable.Creator<ak> CREATOR;
    private final String BL;
    final int BR;
    private final String NH;

    static;

    ak(int var1, String var2, String var3);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public String getDisplayName();

    @Override
    public String getId();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

