/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.bk;
import com.google.android.gms.internal.ez;

@ez
public final class bj
implements SafeParcelable {
    public static final bk CREATOR = new bk();
    public final int backgroundColor;
    public final int oH;
    public final int oI;
    public final int oJ;
    public final int oK;
    public final int oL;
    public final int oM;
    public final int oN;
    public final String oO;
    public final int oP;
    public final String oQ;
    public final int oR;
    public final int oS;
    public final String oT;
    public final int versionCode;

    bj(int n, int n2, int n3, int n4, int n5, int n6, int n7, int n8, int n9, String string, int n10, String string2, int n11, int n12, String string3) {
        this.versionCode = n;
        this.oH = n2;
        this.backgroundColor = n3;
        this.oI = n4;
        this.oJ = n5;
        this.oK = n6;
        this.oL = n7;
        this.oM = n8;
        this.oN = n9;
        this.oO = string;
        this.oP = n10;
        this.oQ = string2;
        this.oR = n11;
        this.oS = n12;
        this.oT = string3;
    }

    public bj(SearchAdRequest searchAdRequest) {
        this.versionCode = 1;
        this.oH = searchAdRequest.getAnchorTextColor();
        this.backgroundColor = searchAdRequest.getBackgroundColor();
        this.oI = searchAdRequest.getBackgroundGradientBottom();
        this.oJ = searchAdRequest.getBackgroundGradientTop();
        this.oK = searchAdRequest.getBorderColor();
        this.oL = searchAdRequest.getBorderThickness();
        this.oM = searchAdRequest.getBorderType();
        this.oN = searchAdRequest.getCallButtonColor();
        this.oO = searchAdRequest.getCustomChannels();
        this.oP = searchAdRequest.getDescriptionTextColor();
        this.oQ = searchAdRequest.getFontFace();
        this.oR = searchAdRequest.getHeaderTextColor();
        this.oS = searchAdRequest.getHeaderTextSize();
        this.oT = searchAdRequest.getQuery();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        bk.a(this, parcel, n);
    }
}

