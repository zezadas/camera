/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.request.ai;

public class ah
implements SafeParcelable {
    public static final Parcelable.Creator<ah> CREATOR = new ai();
    private final int BR;
    private final String Ui;

    ah(int n, String string) {
        this.BR = n;
        this.Ui = string;
    }

    public ah(String string) {
        this(3, string);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getDeviceAddress() {
        return this.Ui;
    }

    int getVersionCode() {
        return this.BR;
    }

    public String toString() {
        return String.format("UnclaimBleDeviceRequest{%s}", this.Ui);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ai.a(this, parcel, n);
    }
}

