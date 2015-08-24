/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public class hb
implements Parcelable {
    @Deprecated
    public static final Parcelable.Creator<hb> CREATOR = new Parcelable.Creator<hb>(){

        @Deprecated
        public hb[] H(int n) {
            return new hb[n];
        }

        @Override
        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return this.k(parcel);
        }

        @Deprecated
        public hb k(Parcel parcel) {
            return new hb(parcel);
        }

        @Override
        public /* synthetic */ Object[] newArray(int n) {
            return this.H(n);
        }
    };
    private String BL;
    private String BM;
    private String mValue;

    @Deprecated
    public hb() {
    }

    @Deprecated
    hb(Parcel parcel) {
        this.readFromParcel(parcel);
    }

    public hb(String string, String string2, String string3) {
        this.BL = string;
        this.BM = string2;
        this.mValue = string3;
    }

    @Deprecated
    private void readFromParcel(Parcel parcel) {
        this.BL = parcel.readString();
        this.BM = parcel.readString();
        this.mValue = parcel.readString();
    }

    @Deprecated
    @Override
    public int describeContents() {
        return 0;
    }

    public String getId() {
        return this.BL;
    }

    public String getValue() {
        return this.mValue;
    }

    @Deprecated
    @Override
    public void writeToParcel(Parcel parcel, int n) {
        parcel.writeString(this.BL);
        parcel.writeString(this.BM);
        parcel.writeString(this.mValue);
    }

}

