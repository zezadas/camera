/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.identity.intents.model;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class UserAddress
implements SafeParcelable {
    public static final Parcelable.Creator<UserAddress> CREATOR;
    private final int BR;
    String adN;
    String adO;
    String adP;
    String adQ;
    String adR;
    String adS;
    String adT;
    String adU;
    String adV;
    String adW;
    boolean adX;
    String adY;
    String adZ;
    String name;
    String uW;

    static;

    UserAddress();

    UserAddress(int var1, String var2, String var3, String var4, String var5, String var6, String var7, String var8, String var9, String var10, String var11, String var12, String var13, boolean var14, String var15, String var16);

    public static UserAddress fromIntent(Intent var0);

    @Override
    public int describeContents();

    public String getAddress1();

    public String getAddress2();

    public String getAddress3();

    public String getAddress4();

    public String getAddress5();

    public String getAdministrativeArea();

    public String getCompanyName();

    public String getCountryCode();

    public String getEmailAddress();

    public String getLocality();

    public String getName();

    public String getPhoneNumber();

    public String getPostalCode();

    public String getSortingCode();

    public int getVersionCode();

    public boolean isPostBox();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

