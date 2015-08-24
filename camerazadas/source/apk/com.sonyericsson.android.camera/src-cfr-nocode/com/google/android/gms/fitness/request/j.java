/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class j
implements SafeParcelable {
    public static final Parcelable.Creator<j> CREATOR;
    private final int BR;
    private final String mName;

    static;

    j(int var1, String var2);

    public j(String var1);

    private boolean a(j var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getName();

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

