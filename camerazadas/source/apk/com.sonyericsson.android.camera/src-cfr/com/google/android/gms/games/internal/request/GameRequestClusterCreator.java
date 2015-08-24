/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.internal.request.GameRequestCluster;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestEntity;
import com.google.android.gms.games.request.GameRequestEntityCreator;
import java.util.ArrayList;

public class GameRequestClusterCreator
implements Parcelable.Creator<GameRequestCluster> {
    static void a(GameRequestCluster gameRequestCluster, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, gameRequestCluster.lw(), false);
        b.c(parcel, 1000, gameRequestCluster.getVersionCode());
        b.H(parcel, n);
    }

    public GameRequestCluster ck(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList arrayList = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    arrayList = a.c(parcel, n3, GameRequestEntity.CREATOR);
                    continue block4;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new GameRequestCluster(n2, arrayList);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ck(parcel);
    }

    public GameRequestCluster[] dQ(int n) {
        return new GameRequestCluster[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dQ(n);
    }
}

