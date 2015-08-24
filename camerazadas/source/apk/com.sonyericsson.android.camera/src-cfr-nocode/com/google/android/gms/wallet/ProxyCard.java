/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ProxyCard
implements SafeParcelable {
    public static final Parcelable.Creator<ProxyCard> CREATOR;
    private final int BR;
    String atF;
    String atG;
    int atH;
    int atI;

    static;

    ProxyCard(int var1, String var2, String var3, int var4, int var5);

    @Override
    public int describeContents();

    public String getCvn();

    public int getExpirationMonth();

    public int getExpirationYear();

    public String getPan();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

