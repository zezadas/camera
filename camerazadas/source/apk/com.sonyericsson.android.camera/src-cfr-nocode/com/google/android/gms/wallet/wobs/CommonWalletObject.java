/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.wallet.wobs.d;
import com.google.android.gms.wallet.wobs.j;
import com.google.android.gms.wallet.wobs.l;
import com.google.android.gms.wallet.wobs.n;
import com.google.android.gms.wallet.wobs.p;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CommonWalletObject
implements SafeParcelable {
    public static final Parcelable.Creator<CommonWalletObject> CREATOR;
    private final int BR;
    String asU;
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
    String fl;
    String name;
    int state;

    static;

    CommonWalletObject();

    CommonWalletObject(int var1, String var2, String var3, String var4, String var5, String var6, String var7, String var8, String var9, int var10, ArrayList<p> var11, l var12, ArrayList<LatLng> var13, String var14, String var15, ArrayList<d> var16, boolean var17, ArrayList<n> var18, ArrayList<j> var19, ArrayList<n> var20);

    public static a pQ();

    @Override
    public int describeContents();

    public String getId();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public final class a {
        final /* synthetic */ CommonWalletObject auy;

        private a(CommonWalletObject var1);

        /* synthetic */ a(CommonWalletObject var1,  var2);

        public a df(String var1);

        public CommonWalletObject pR();
    }

}

