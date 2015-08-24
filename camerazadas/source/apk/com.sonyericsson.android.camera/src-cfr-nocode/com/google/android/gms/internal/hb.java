/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class hb
implements Parcelable {
    @Deprecated
    public static final Parcelable.Creator<hb> CREATOR;
    private String BL;
    private String BM;
    private String mValue;

    static;

    @Deprecated
    public hb();

    @Deprecated
    hb(Parcel var1);

    public hb(String var1, String var2, String var3);

    @Deprecated
    private void readFromParcel(Parcel var1);

    @Deprecated
    @Override
    public int describeContents();

    public String getId();

    public String getValue();

    @Deprecated
    @Override
    public void writeToParcel(Parcel var1, int var2);

}

