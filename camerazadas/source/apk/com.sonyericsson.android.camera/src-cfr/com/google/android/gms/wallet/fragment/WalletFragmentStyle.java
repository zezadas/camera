/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.fragment.Dimension;
import com.google.android.gms.wallet.fragment.c;

public final class WalletFragmentStyle
implements SafeParcelable {
    public static final Parcelable.Creator<WalletFragmentStyle> CREATOR = new c();
    final int BR;
    Bundle auo;
    int aup;

    public WalletFragmentStyle() {
        this.BR = 1;
        this.auo = new Bundle();
    }

    WalletFragmentStyle(int n, Bundle bundle, int n2) {
        this.BR = n;
        this.auo = bundle;
        this.aup = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(TypedArray object, int n, String string) {
        if (this.auo.containsKey(string) || (object = object.peekValue(n)) == null) {
            return;
        }
        this.auo.putLong(string, Dimension.a((TypedValue)object));
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(TypedArray object, int n, String string, String string2) {
        if (this.auo.containsKey(string) || this.auo.containsKey(string2) || (object = object.peekValue(n)) == null) {
            return;
        }
        if (object.type >= 28 && object.type <= 31) {
            this.auo.putInt(string, object.data);
            return;
        }
        this.auo.putInt(string2, object.resourceId);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b(TypedArray object, int n, String string) {
        if (this.auo.containsKey(string) || (object = object.peekValue(n)) == null) {
            return;
        }
        this.auo.putInt(string, object.data);
    }

    public int a(String string, DisplayMetrics displayMetrics, int n) {
        if (this.auo.containsKey(string)) {
            n = Dimension.a(this.auo.getLong(string), displayMetrics);
        }
        return n;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void aa(Context object) {
        int n = this.aup <= 0 ? R.style.WalletFragmentDefaultStyle : this.aup;
        object = object.obtainStyledAttributes(n, R.styleable.WalletFragmentStyle);
        this.a((TypedArray)object, R.styleable.WalletFragmentStyle_buyButtonWidth, "buyButtonWidth");
        this.a((TypedArray)object, R.styleable.WalletFragmentStyle_buyButtonHeight, "buyButtonHeight");
        this.b((TypedArray)object, R.styleable.WalletFragmentStyle_buyButtonText, "buyButtonText");
        this.b((TypedArray)object, R.styleable.WalletFragmentStyle_buyButtonAppearance, "buyButtonAppearance");
        this.b((TypedArray)object, R.styleable.WalletFragmentStyle_maskedWalletDetailsTextAppearance, "maskedWalletDetailsTextAppearance");
        this.b((TypedArray)object, R.styleable.WalletFragmentStyle_maskedWalletDetailsHeaderTextAppearance, "maskedWalletDetailsHeaderTextAppearance");
        this.a((TypedArray)object, R.styleable.WalletFragmentStyle_maskedWalletDetailsBackground, "maskedWalletDetailsBackgroundColor", "maskedWalletDetailsBackgroundResource");
        this.b((TypedArray)object, R.styleable.WalletFragmentStyle_maskedWalletDetailsButtonTextAppearance, "maskedWalletDetailsButtonTextAppearance");
        this.a((TypedArray)object, R.styleable.WalletFragmentStyle_maskedWalletDetailsButtonBackground, "maskedWalletDetailsButtonBackgroundColor", "maskedWalletDetailsButtonBackgroundResource");
        this.b((TypedArray)object, R.styleable.WalletFragmentStyle_maskedWalletDetailsLogoTextColor, "maskedWalletDetailsLogoTextColor");
        this.b((TypedArray)object, R.styleable.WalletFragmentStyle_maskedWalletDetailsLogoImageType, "maskedWalletDetailsLogoImageType");
        object.recycle();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public WalletFragmentStyle setBuyButtonAppearance(int n) {
        this.auo.putInt("buyButtonAppearance", n);
        return this;
    }

    public WalletFragmentStyle setBuyButtonHeight(int n) {
        this.auo.putLong("buyButtonHeight", Dimension.fE(n));
        return this;
    }

    public WalletFragmentStyle setBuyButtonHeight(int n, float f) {
        this.auo.putLong("buyButtonHeight", Dimension.a(n, f));
        return this;
    }

    public WalletFragmentStyle setBuyButtonText(int n) {
        this.auo.putInt("buyButtonText", n);
        return this;
    }

    public WalletFragmentStyle setBuyButtonWidth(int n) {
        this.auo.putLong("buyButtonWidth", Dimension.fE(n));
        return this;
    }

    public WalletFragmentStyle setBuyButtonWidth(int n, float f) {
        this.auo.putLong("buyButtonWidth", Dimension.a(n, f));
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsBackgroundColor(int n) {
        this.auo.remove("maskedWalletDetailsBackgroundResource");
        this.auo.putInt("maskedWalletDetailsBackgroundColor", n);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsBackgroundResource(int n) {
        this.auo.remove("maskedWalletDetailsBackgroundColor");
        this.auo.putInt("maskedWalletDetailsBackgroundResource", n);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsButtonBackgroundColor(int n) {
        this.auo.remove("maskedWalletDetailsButtonBackgroundResource");
        this.auo.putInt("maskedWalletDetailsButtonBackgroundColor", n);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsButtonBackgroundResource(int n) {
        this.auo.remove("maskedWalletDetailsButtonBackgroundColor");
        this.auo.putInt("maskedWalletDetailsButtonBackgroundResource", n);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsButtonTextAppearance(int n) {
        this.auo.putInt("maskedWalletDetailsButtonTextAppearance", n);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsHeaderTextAppearance(int n) {
        this.auo.putInt("maskedWalletDetailsHeaderTextAppearance", n);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsLogoImageType(int n) {
        this.auo.putInt("maskedWalletDetailsLogoImageType", n);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsLogoTextColor(int n) {
        this.auo.putInt("maskedWalletDetailsLogoTextColor", n);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsTextAppearance(int n) {
        this.auo.putInt("maskedWalletDetailsTextAppearance", n);
        return this;
    }

    public WalletFragmentStyle setStyleResourceId(int n) {
        this.aup = n;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }
}

