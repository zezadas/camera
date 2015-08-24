/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.Cart;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class FullWalletRequest
implements SafeParcelable {
    public static final Parcelable.Creator<FullWalletRequest> CREATOR;
    private final int BR;
    String asB;
    String asC;
    Cart asL;

    static;

    FullWalletRequest();

    FullWalletRequest(int var1, String var2, String var3, Cart var4);

    public static Builder newBuilder();

    @Override
    public int describeContents();

    public Cart getCart();

    public String getGoogleTransactionId();

    public String getMerchantTransactionId();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public final class Builder {
        final /* synthetic */ FullWalletRequest asM;

        private Builder(FullWalletRequest var1);

        /* synthetic */ Builder(FullWalletRequest var1,  var2);

        public FullWalletRequest build();

        public Builder setCart(Cart var1);

        public Builder setGoogleTransactionId(String var1);

        public Builder setMerchantTransactionId(String var1);
    }

}

