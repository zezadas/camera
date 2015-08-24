/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.fragment;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.fragment.WalletFragmentStyle;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class WalletFragmentOptions
implements SafeParcelable {
    public static final Parcelable.Creator<WalletFragmentOptions> CREATOR;
    final int BR;
    private int MV;
    private int atL;
    private WalletFragmentStyle aum;
    private int mTheme;

    static;

    private WalletFragmentOptions();

    WalletFragmentOptions(int var1, int var2, int var3, WalletFragmentStyle var4, int var5);

    static /* synthetic */ int a(WalletFragmentOptions var0, int var1);

    public static WalletFragmentOptions a(Context var0, AttributeSet var1);

    static /* synthetic */ WalletFragmentStyle a(WalletFragmentOptions var0, WalletFragmentStyle var1);

    static /* synthetic */ int b(WalletFragmentOptions var0, int var1);

    static /* synthetic */ int c(WalletFragmentOptions var0, int var1);

    public static Builder newBuilder();

    public void aa(Context var1);

    @Override
    public int describeContents();

    public int getEnvironment();

    public WalletFragmentStyle getFragmentStyle();

    public int getMode();

    public int getTheme();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public final class Builder {
        final /* synthetic */ WalletFragmentOptions aun;

        private Builder(WalletFragmentOptions var1);

        /* synthetic */ Builder(WalletFragmentOptions var1,  var2);

        public WalletFragmentOptions build();

        public Builder setEnvironment(int var1);

        public Builder setFragmentStyle(int var1);

        public Builder setFragmentStyle(WalletFragmentStyle var1);

        public Builder setMode(int var1);

        public Builder setTheme(int var1);
    }

}

