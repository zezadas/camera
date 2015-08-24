/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.LoyaltyWalletObject;
import com.google.android.gms.wallet.OfferWalletObject;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class d
implements SafeParcelable {
    public static final Parcelable.Creator<d> CREATOR;
    private final int BR;
    OfferWalletObject asA;
    LoyaltyWalletObject asz;

    static;

    d();

    d(int var1, LoyaltyWalletObject var2, OfferWalletObject var3);

    @Override
    public int describeContents();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

