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
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class WalletFragmentStyle
implements SafeParcelable {
    public static final Parcelable.Creator<WalletFragmentStyle> CREATOR;
    final int BR;
    Bundle auo;
    int aup;

    static;

    public WalletFragmentStyle();

    WalletFragmentStyle(int var1, Bundle var2, int var3);

    private void a(TypedArray var1, int var2, String var3);

    private void a(TypedArray var1, int var2, String var3, String var4);

    private void b(TypedArray var1, int var2, String var3);

    public int a(String var1, DisplayMetrics var2, int var3);

    public void aa(Context var1);

    @Override
    public int describeContents();

    public WalletFragmentStyle setBuyButtonAppearance(int var1);

    public WalletFragmentStyle setBuyButtonHeight(int var1);

    public WalletFragmentStyle setBuyButtonHeight(int var1, float var2);

    public WalletFragmentStyle setBuyButtonText(int var1);

    public WalletFragmentStyle setBuyButtonWidth(int var1);

    public WalletFragmentStyle setBuyButtonWidth(int var1, float var2);

    public WalletFragmentStyle setMaskedWalletDetailsBackgroundColor(int var1);

    public WalletFragmentStyle setMaskedWalletDetailsBackgroundResource(int var1);

    public WalletFragmentStyle setMaskedWalletDetailsButtonBackgroundColor(int var1);

    public WalletFragmentStyle setMaskedWalletDetailsButtonBackgroundResource(int var1);

    public WalletFragmentStyle setMaskedWalletDetailsButtonTextAppearance(int var1);

    public WalletFragmentStyle setMaskedWalletDetailsHeaderTextAppearance(int var1);

    public WalletFragmentStyle setMaskedWalletDetailsLogoImageType(int var1);

    public WalletFragmentStyle setMaskedWalletDetailsLogoTextColor(int var1);

    public WalletFragmentStyle setMaskedWalletDetailsTextAppearance(int var1);

    public WalletFragmentStyle setStyleResourceId(int var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

