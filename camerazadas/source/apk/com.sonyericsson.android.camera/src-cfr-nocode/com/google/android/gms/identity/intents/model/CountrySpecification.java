/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CountrySpecification
implements SafeParcelable {
    public static final Parcelable.Creator<CountrySpecification> CREATOR;
    private final int BR;
    String uW;

    static;

    CountrySpecification(int var1, String var2);

    public CountrySpecification(String var1);

    @Override
    public int describeContents();

    public String getCountryCode();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

