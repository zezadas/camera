/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;

public class MostRecentGameInfoEntityCreator
implements Parcelable.Creator<MostRecentGameInfoEntity> {
    static void a(MostRecentGameInfoEntity mostRecentGameInfoEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, mostRecentGameInfoEntity.lp(), false);
        b.c(parcel, 1000, mostRecentGameInfoEntity.getVersionCode());
        b.a(parcel, 2, mostRecentGameInfoEntity.lq(), false);
        b.a(parcel, 3, mostRecentGameInfoEntity.lr());
        b.a(parcel, 4, mostRecentGameInfoEntity.ls(), n, false);
        b.a(parcel, 5, mostRecentGameInfoEntity.lt(), n, false);
        b.a(parcel, 6, mostRecentGameInfoEntity.lu(), n, false);
        b.H(parcel, n2);
    }

    public MostRecentGameInfoEntity cj(Parcel parcel) {
        Uri uri = null;
        int n = a.C(parcel);
        int n2 = 0;
        long l = 0;
        Uri uri2 = null;
        Uri uri3 = null;
        String string = null;
        String string2 = null;
        block9 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block9;
                }
                case 1: {
                    string2 = a.o(parcel, n3);
                    continue block9;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block9;
                }
                case 2: {
                    string = a.o(parcel, n3);
                    continue block9;
                }
                case 3: {
                    l = a.i(parcel, n3);
                    continue block9;
                }
                case 4: {
                    uri3 = a.a(parcel, n3, Uri.CREATOR);
                    continue block9;
                }
                case 5: {
                    uri2 = a.a(parcel, n3, Uri.CREATOR);
                    continue block9;
                }
                case 6: 
            }
            uri = a.a(parcel, n3, Uri.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new MostRecentGameInfoEntity(n2, string2, string, l, uri3, uri2, uri);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.cj(parcel);
    }

    public MostRecentGameInfoEntity[] dP(int n) {
        return new MostRecentGameInfoEntity[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dP(n);
    }
}

