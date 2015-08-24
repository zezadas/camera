/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@Deprecated
public final class Address
implements SafeParcelable {
    public static final Parcelable.Creator<Address> CREATOR;
    private final int BR;
    String adN;
    String adO;
    String adP;
    String adU;
    String adW;
    boolean adX;
    String adY;
    String ast;
    String asu;
    String name;
    String uW;

    static;

    Address();

    Address(int var1, String var2, String var3, String var4, String var5, String var6, String var7, String var8, String var9, String var10, boolean var11, String var12);

    @Override
    public int describeContents();

    public String getAddress1();

    public String getAddress2();

    public String getAddress3();

    public String getCity();

    public String getCompanyName();

    public String getCountryCode();

    public String getName();

    public String getPhoneNumber();

    public String getPostalCode();

    public String getState();

    public int getVersionCode();

    public boolean isPostBox();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

