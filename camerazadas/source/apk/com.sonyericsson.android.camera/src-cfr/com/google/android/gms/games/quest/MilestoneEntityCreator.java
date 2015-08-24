/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.quest.MilestoneEntity;

public class MilestoneEntityCreator
implements Parcelable.Creator<MilestoneEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(MilestoneEntity milestoneEntity, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, milestoneEntity.getMilestoneId(), false);
        b.c(parcel, 1000, milestoneEntity.getVersionCode());
        b.a(parcel, 2, milestoneEntity.getCurrentProgress());
        b.a(parcel, 3, milestoneEntity.getTargetProgress());
        b.a(parcel, 4, milestoneEntity.getCompletionRewardData(), false);
        b.c(parcel, 5, milestoneEntity.getState());
        b.a(parcel, 6, milestoneEntity.getEventId(), false);
        b.H(parcel, n);
    }

    @Override
    public MilestoneEntity createFromParcel(Parcel parcel) {
        long l = 0;
        int n = 0;
        String string = null;
        int n2 = a.C(parcel);
        Object object = null;
        long l2 = 0;
        String string2 = null;
        int n3 = 0;
        block9 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block9;
                }
                case 1: {
                    string2 = a.o(parcel, n4);
                    continue block9;
                }
                case 1000: {
                    n3 = a.g(parcel, n4);
                    continue block9;
                }
                case 2: {
                    l2 = a.i(parcel, n4);
                    continue block9;
                }
                case 3: {
                    l = a.i(parcel, n4);
                    continue block9;
                }
                case 4: {
                    object = a.r(parcel, n4);
                    continue block9;
                }
                case 5: {
                    n = a.g(parcel, n4);
                    continue block9;
                }
                case 6: 
            }
            string = a.o(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new MilestoneEntity(n3, string2, l2, l, (byte[])object, n, string);
    }

    public MilestoneEntity[] newArray(int n) {
        return new MilestoneEntity[n];
    }
}

