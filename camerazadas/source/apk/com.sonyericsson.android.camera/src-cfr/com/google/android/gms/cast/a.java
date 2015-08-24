/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;
import java.util.List;

public class a
implements Parcelable.Creator<ApplicationMetadata> {
    static void a(ApplicationMetadata applicationMetadata, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, applicationMetadata.getVersionCode());
        b.a(parcel, 2, applicationMetadata.getApplicationId(), false);
        b.a(parcel, 3, applicationMetadata.getName(), false);
        b.c(parcel, 4, applicationMetadata.getImages(), false);
        b.b(parcel, 5, applicationMetadata.EB, false);
        b.a(parcel, 6, applicationMetadata.getSenderAppIdentifier(), false);
        b.a(parcel, 7, applicationMetadata.fu(), n, false);
        b.H(parcel, n2);
    }

    public ApplicationMetadata[] U(int n) {
        return new ApplicationMetadata[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.t(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.U(n);
    }

    public ApplicationMetadata t(Parcel parcel) {
        Uri uri = null;
        int n = com.google.android.gms.common.internal.safeparcel.a.C(parcel);
        int n2 = 0;
        String string = null;
        ArrayList<String> arrayList = null;
        ArrayList<WebImage> arrayList2 = null;
        String string2 = null;
        String string3 = null;
        block9 : while (parcel.dataPosition() < n) {
            int n3 = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.aD(n3)) {
                default: {
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n3);
                    continue block9;
                }
                case 1: {
                    n2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n3);
                    continue block9;
                }
                case 2: {
                    string3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block9;
                }
                case 3: {
                    string2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block9;
                }
                case 4: {
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n3, WebImage.CREATOR);
                    continue block9;
                }
                case 5: {
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.C(parcel, n3);
                    continue block9;
                }
                case 6: {
                    string = com.google.android.gms.common.internal.safeparcel.a.o(parcel, n3);
                    continue block9;
                }
                case 7: 
            }
            uri = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n3, Uri.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ApplicationMetadata(n2, string3, string2, arrayList2, arrayList, string, uri);
    }
}

