/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class c
implements SafeParcelable {
    public static final Parcelable.Creator<c> CREATOR;
    final int BR;
    private final int FD;
    private final String Sz;
    private final int auS;
    private final boolean auT;
    private boolean auU;
    private String auV;
    private final String mName;

    static;

    c(int var1, String var2, String var3, int var4, int var5, boolean var6, boolean var7, String var8);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getAddress();

    public String getName();

    public int getRole();

    public int getType();

    public int hashCode();

    public boolean isConnected();

    public boolean isEnabled();

    public String pS();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

