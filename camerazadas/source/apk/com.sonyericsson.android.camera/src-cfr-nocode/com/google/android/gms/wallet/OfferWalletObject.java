/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.CommonWalletObject;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class OfferWalletObject
implements SafeParcelable {
    public static final Parcelable.Creator<OfferWalletObject> CREATOR;
    private final int BR;
    String atD;
    CommonWalletObject atE;
    String fl;

    static;

    OfferWalletObject();

    OfferWalletObject(int var1, String var2, String var3, CommonWalletObject var4);

    @Override
    public int describeContents();

    public String getId();

    public String getRedemptionCode();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

