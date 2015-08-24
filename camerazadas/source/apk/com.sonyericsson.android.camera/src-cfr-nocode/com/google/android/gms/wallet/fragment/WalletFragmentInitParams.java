/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class WalletFragmentInitParams
implements SafeParcelable {
    public static final Parcelable.Creator<WalletFragmentInitParams> CREATOR;
    final int BR;
    private String Dd;
    private MaskedWalletRequest atW;
    private MaskedWallet atX;
    private int auk;

    static;

    private WalletFragmentInitParams();

    WalletFragmentInitParams(int var1, String var2, MaskedWalletRequest var3, int var4, MaskedWallet var5);

    static /* synthetic */ int a(WalletFragmentInitParams var0, int var1);

    static /* synthetic */ MaskedWallet a(WalletFragmentInitParams var0);

    static /* synthetic */ MaskedWallet a(WalletFragmentInitParams var0, MaskedWallet var1);

    static /* synthetic */ MaskedWalletRequest a(WalletFragmentInitParams var0, MaskedWalletRequest var1);

    static /* synthetic */ String a(WalletFragmentInitParams var0, String var1);

    static /* synthetic */ MaskedWalletRequest b(WalletFragmentInitParams var0);

    static /* synthetic */ int c(WalletFragmentInitParams var0);

    public static Builder newBuilder();

    @Override
    public int describeContents();

    public String getAccountName();

    public MaskedWallet getMaskedWallet();

    public MaskedWalletRequest getMaskedWalletRequest();

    public int getMaskedWalletRequestCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public final class Builder {
        final /* synthetic */ WalletFragmentInitParams aul;

        private Builder(WalletFragmentInitParams var1);

        /* synthetic */ Builder(WalletFragmentInitParams var1,  var2);

        public WalletFragmentInitParams build();

        public Builder setAccountName(String var1);

        public Builder setMaskedWallet(MaskedWallet var1);

        public Builder setMaskedWalletRequest(MaskedWalletRequest var1);

        public Builder setMaskedWalletRequestCode(int var1);
    }

}

