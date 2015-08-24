/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.wallet.wobs.d;
import com.google.android.gms.wallet.wobs.f;
import com.google.android.gms.wallet.wobs.j;
import com.google.android.gms.wallet.wobs.l;
import com.google.android.gms.wallet.wobs.n;
import com.google.android.gms.wallet.wobs.p;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class LoyaltyWalletObject
implements SafeParcelable {
    public static final Parcelable.Creator<LoyaltyWalletObject> CREATOR;
    private final int BR;
    String Dv;
    String asT;
    String asU;
    String asV;
    String asW;
    String asX;
    String asY;
    String asZ;
    String ata;
    ArrayList<p> atb;
    l atc;
    ArrayList<LatLng> atd;
    String ate;
    String atf;
    ArrayList<d> atg;
    boolean ath;
    ArrayList<n> ati;
    ArrayList<j> atj;
    ArrayList<n> atk;
    f atl;
    String fl;
    int state;

    static;

    LoyaltyWalletObject();

    LoyaltyWalletObject(int var1, String var2, String var3, String var4, String var5, String var6, String var7, String var8, String var9, String var10, String var11, int var12, ArrayList<p> var13, l var14, ArrayList<LatLng> var15, String var16, String var17, ArrayList<d> var18, boolean var19, ArrayList<n> var20, ArrayList<j> var21, ArrayList<n> var22, f var23);

    @Override
    public int describeContents();

    public String getAccountId();

    public String getAccountName();

    public String getBarcodeAlternateText();

    public String getBarcodeType();

    public String getBarcodeValue();

    public String getId();

    public String getIssuerName();

    public String getProgramName();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

