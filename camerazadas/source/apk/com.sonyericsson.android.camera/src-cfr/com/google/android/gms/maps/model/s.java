/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaLink;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.i;
import com.google.android.gms.maps.model.r;

public class s
implements Parcelable.Creator<StreetViewPanoramaLocation> {
    static void a(StreetViewPanoramaLocation streetViewPanoramaLocation, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, streetViewPanoramaLocation.getVersionCode());
        b.a((Parcel)parcel, (int)2, (Parcelable[])streetViewPanoramaLocation.links, (int)n, (boolean)false);
        b.a(parcel, 3, streetViewPanoramaLocation.position, n, false);
        b.a(parcel, 4, streetViewPanoramaLocation.panoId, false);
        b.H(parcel, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public StreetViewPanoramaLocation cS(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        StreetViewPanoramaLink[] arrstreetViewPanoramaLink = null;
        StreetViewPanoramaLink[] arrstreetViewPanoramaLink2 = null;
        while (parcel.dataPosition() < n) {
            StreetViewPanoramaLink[] arrstreetViewPanoramaLink3;
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    arrstreetViewPanoramaLink3 = arrstreetViewPanoramaLink;
                    arrstreetViewPanoramaLink = arrstreetViewPanoramaLink2;
                    arrstreetViewPanoramaLink2 = arrstreetViewPanoramaLink3;
                    break;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    arrstreetViewPanoramaLink3 = arrstreetViewPanoramaLink2;
                    arrstreetViewPanoramaLink2 = arrstreetViewPanoramaLink;
                    arrstreetViewPanoramaLink = arrstreetViewPanoramaLink3;
                    break;
                }
                case 2: {
                    arrstreetViewPanoramaLink3 = (StreetViewPanoramaLink[])a.b(parcel, n3, StreetViewPanoramaLink.CREATOR);
                    arrstreetViewPanoramaLink2 = arrstreetViewPanoramaLink;
                    arrstreetViewPanoramaLink = arrstreetViewPanoramaLink3;
                    break;
                }
                case 3: {
                    arrstreetViewPanoramaLink3 = (LatLng)a.a(parcel, n3, LatLng.CREATOR);
                    arrstreetViewPanoramaLink = arrstreetViewPanoramaLink2;
                    arrstreetViewPanoramaLink2 = arrstreetViewPanoramaLink3;
                    break;
                }
                case 4: {
                    string = a.o(parcel, n3);
                    arrstreetViewPanoramaLink3 = arrstreetViewPanoramaLink2;
                    arrstreetViewPanoramaLink2 = arrstreetViewPanoramaLink;
                    arrstreetViewPanoramaLink = arrstreetViewPanoramaLink3;
                }
            }
            arrstreetViewPanoramaLink3 = arrstreetViewPanoramaLink;
            arrstreetViewPanoramaLink = arrstreetViewPanoramaLink2;
            arrstreetViewPanoramaLink2 = arrstreetViewPanoramaLink3;
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new StreetViewPanoramaLocation(n2, arrstreetViewPanoramaLink2, (LatLng)arrstreetViewPanoramaLink, string);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cS(parcel);
    }

    public StreetViewPanoramaLocation[] eI(int n) {
        return new StreetViewPanoramaLocation[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.eI(n);
    }
}

