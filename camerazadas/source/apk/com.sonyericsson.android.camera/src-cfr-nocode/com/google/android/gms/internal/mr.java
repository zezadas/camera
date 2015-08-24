/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mp;
import com.google.android.gms.maps.model.LatLng;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class mr
implements SafeParcelable {
    public static final Parcelable.Creator<mr> CREATOR;
    final int BR;
    private final String Sz;
    private final LatLng ahY;
    private final List<mp> ahZ;
    private final String aia;
    private final String aib;
    private final String mName;

    static;

    mr(int var1, String var2, LatLng var3, String var4, List<mp> var5, String var6, String var7);

    @Override
    public int describeContents();

    public String getAddress();

    public String getName();

    public String getPhoneNumber();

    public LatLng ml();

    public List<mp> mm();

    public String mn();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

