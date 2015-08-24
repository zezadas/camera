/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mp;
import com.google.android.gms.internal.ms;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class mr
implements SafeParcelable {
    public static final Parcelable.Creator<mr> CREATOR = new ms();
    final int BR;
    private final String Sz;
    private final LatLng ahY;
    private final List<mp> ahZ;
    private final String aia;
    private final String aib;
    private final String mName;

    mr(int n, String string, LatLng latLng, String string2, List<mp> list, String string3, String string4) {
        this.BR = n;
        this.mName = string;
        this.ahY = latLng;
        this.Sz = string2;
        this.ahZ = new ArrayList<mp>(list);
        this.aia = string3;
        this.aib = string4;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getAddress() {
        return this.Sz;
    }

    public String getName() {
        return this.mName;
    }

    public String getPhoneNumber() {
        return this.aia;
    }

    public LatLng ml() {
        return this.ahY;
    }

    public List<mp> mm() {
        return this.ahZ;
    }

    public String mn() {
        return this.aib;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ms.a(this, parcel, n);
    }
}

