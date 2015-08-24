/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.quest;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.MilestoneEntity;
import com.google.android.gms.games.quest.MilestoneEntityCreator;
import com.google.android.gms.games.quest.QuestEntity;
import java.util.ArrayList;
import java.util.List;

public class QuestEntityCreator
implements Parcelable.Creator<QuestEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(QuestEntity questEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, questEntity.getGame(), n, false);
        b.a(parcel, 2, questEntity.getQuestId(), false);
        b.a(parcel, 3, questEntity.getAcceptedTimestamp());
        b.a(parcel, 4, questEntity.getBannerImageUri(), n, false);
        b.a(parcel, 5, questEntity.getBannerImageUrl(), false);
        b.a(parcel, 6, questEntity.getDescription(), false);
        b.a(parcel, 7, questEntity.getEndTimestamp());
        b.a(parcel, 8, questEntity.getLastUpdatedTimestamp());
        b.a(parcel, 9, questEntity.getIconImageUri(), n, false);
        b.a(parcel, 10, questEntity.getIconImageUrl(), false);
        b.a(parcel, 12, questEntity.getName(), false);
        b.a(parcel, 13, questEntity.lK());
        b.a(parcel, 14, questEntity.getStartTimestamp());
        b.c(parcel, 15, questEntity.getState());
        b.c(parcel, 17, questEntity.lJ(), false);
        b.c(parcel, 16, questEntity.getType());
        b.c(parcel, 1000, questEntity.getVersionCode());
        b.H(parcel, n2);
    }

    @Override
    public QuestEntity createFromParcel(Parcel parcel) {
        int n = a.C(parcel);
        int n2 = 0;
        GameEntity gameEntity = null;
        String string = null;
        long l = 0;
        Uri uri = null;
        String string2 = null;
        String string3 = null;
        long l2 = 0;
        long l3 = 0;
        Uri uri2 = null;
        String string4 = null;
        String string5 = null;
        long l4 = 0;
        long l5 = 0;
        int n3 = 0;
        int n4 = 0;
        ArrayList<MilestoneEntity> arrayList = null;
        block19 : while (parcel.dataPosition() < n) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block19;
                }
                case 1: {
                    gameEntity = a.a(parcel, n5, GameEntity.CREATOR);
                    continue block19;
                }
                case 2: {
                    string = a.o(parcel, n5);
                    continue block19;
                }
                case 3: {
                    l = a.i(parcel, n5);
                    continue block19;
                }
                case 4: {
                    uri = a.a(parcel, n5, Uri.CREATOR);
                    continue block19;
                }
                case 5: {
                    string2 = a.o(parcel, n5);
                    continue block19;
                }
                case 6: {
                    string3 = a.o(parcel, n5);
                    continue block19;
                }
                case 7: {
                    l2 = a.i(parcel, n5);
                    continue block19;
                }
                case 8: {
                    l3 = a.i(parcel, n5);
                    continue block19;
                }
                case 9: {
                    uri2 = a.a(parcel, n5, Uri.CREATOR);
                    continue block19;
                }
                case 10: {
                    string4 = a.o(parcel, n5);
                    continue block19;
                }
                case 12: {
                    string5 = a.o(parcel, n5);
                    continue block19;
                }
                case 13: {
                    l4 = a.i(parcel, n5);
                    continue block19;
                }
                case 14: {
                    l5 = a.i(parcel, n5);
                    continue block19;
                }
                case 15: {
                    n3 = a.g(parcel, n5);
                    continue block19;
                }
                case 17: {
                    arrayList = a.c(parcel, n5, MilestoneEntity.CREATOR);
                    continue block19;
                }
                case 16: {
                    n4 = a.g(parcel, n5);
                    continue block19;
                }
                case 1000: 
            }
            n2 = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new QuestEntity(n2, gameEntity, string, l, uri, string2, string3, l2, l3, uri2, string4, string5, l4, l5, n3, n4, arrayList);
    }

    public QuestEntity[] newArray(int n) {
        return new QuestEntity[n];
    }
}

