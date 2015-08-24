/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.fragment.WalletFragmentStyle;
import com.google.android.gms.wallet.fragment.b;

public final class WalletFragmentOptions
implements SafeParcelable {
    public static final Parcelable.Creator<WalletFragmentOptions> CREATOR = new b();
    final int BR;
    private int MV;
    private int atL;
    private WalletFragmentStyle aum;
    private int mTheme;

    private WalletFragmentOptions() {
        this.BR = 1;
    }

    WalletFragmentOptions(int n, int n2, int n3, WalletFragmentStyle walletFragmentStyle, int n4) {
        this.BR = n;
        this.atL = n2;
        this.mTheme = n3;
        this.aum = walletFragmentStyle;
        this.MV = n4;
    }

    public static WalletFragmentOptions a(Context context, AttributeSet object) {
        object = context.obtainStyledAttributes((AttributeSet)object, R.styleable.WalletFragmentOptions);
        int n = object.getInt(R.styleable.WalletFragmentOptions_appTheme, 0);
        int n2 = object.getInt(R.styleable.WalletFragmentOptions_environment, 1);
        int n3 = object.getResourceId(R.styleable.WalletFragmentOptions_fragmentStyle, 0);
        int n4 = object.getInt(R.styleable.WalletFragmentOptions_fragmentMode, 1);
        object.recycle();
        object = new WalletFragmentOptions();
        object.mTheme = n;
        object.atL = n2;
        object.aum = new WalletFragmentStyle().setStyleResourceId(n3);
        object.aum.aa(context);
        object.MV = n4;
        return object;
    }

    public static Builder newBuilder() {
        WalletFragmentOptions walletFragmentOptions = new WalletFragmentOptions();
        walletFragmentOptions.getClass();
        return walletFragmentOptions.new Builder();
    }

    public void aa(Context context) {
        if (this.aum != null) {
            this.aum.aa(context);
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getEnvironment() {
        return this.atL;
    }

    public WalletFragmentStyle getFragmentStyle() {
        return this.aum;
    }

    public int getMode() {
        return this.MV;
    }

    public int getTheme() {
        return this.mTheme;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        b.a(this, parcel, n);
    }

    public final class Builder {
        private Builder() {
        }

        public WalletFragmentOptions build() {
            return WalletFragmentOptions.this;
        }

        public Builder setEnvironment(int n) {
            WalletFragmentOptions.this.atL = n;
            return this;
        }

        public Builder setFragmentStyle(int n) {
            WalletFragmentOptions.this.aum = new WalletFragmentStyle().setStyleResourceId(n);
            return this;
        }

        public Builder setFragmentStyle(WalletFragmentStyle walletFragmentStyle) {
            WalletFragmentOptions.this.aum = walletFragmentStyle;
            return this;
        }

        public Builder setMode(int n) {
            WalletFragmentOptions.this.MV = n;
            return this;
        }

        public Builder setTheme(int n) {
            WalletFragmentOptions.this.mTheme = n;
            return this;
        }
    }

}

