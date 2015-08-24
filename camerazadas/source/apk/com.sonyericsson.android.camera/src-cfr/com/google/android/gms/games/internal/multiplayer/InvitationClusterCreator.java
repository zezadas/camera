/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.internal.multiplayer.ZInvitationCluster;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import java.util.ArrayList;

public class InvitationClusterCreator
implements Parcelable.Creator<ZInvitationCluster> {
    static void a(ZInvitationCluster zInvitationCluster, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, zInvitationCluster.lj(), false);
        b.c(parcel, 1000, zInvitationCluster.getVersionCode());
        b.H(parcel, n);
    }

    public ZInvitationCluster ci(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList<InvitationEntity> arrayList = null;
        block4 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block4;
                }
                case 1: {
                    arrayList = a.c(parcel, n3, InvitationEntity.CREATOR);
                    continue block4;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new ZInvitationCluster(n2, arrayList);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ci(parcel);
    }

    public ZInvitationCluster[] dN(int n) {
        return new ZInvitationCluster[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.dN(n);
    }
}

