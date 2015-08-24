/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.event.EventEntity;

public class EventEntityCreator
implements Parcelable.Creator<EventEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(EventEntity eventEntity, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.a(parcel, 1, eventEntity.getEventId(), false);
        b.c(parcel, 1000, eventEntity.getVersionCode());
        b.a(parcel, 2, eventEntity.getName(), false);
        b.a(parcel, 3, eventEntity.getDescription(), false);
        b.a(parcel, 4, eventEntity.getIconImageUri(), n, false);
        b.a(parcel, 5, eventEntity.getIconImageUrl(), false);
        b.a(parcel, 6, eventEntity.getPlayer(), n, false);
        b.a(parcel, 7, eventEntity.getValue());
        b.a(parcel, 8, eventEntity.getFormattedValue(), false);
        b.a(parcel, 9, eventEntity.isVisible());
        b.H(parcel, n2);
    }

    @Override
    public EventEntity createFromParcel(Parcel parcel) {
        boolean bl = false;
        String string = null;
        int n = a.C(parcel);
        long l = 0;
        PlayerEntity playerEntity = null;
        String string2 = null;
        Uri uri = null;
        String string3 = null;
        String string4 = null;
        String string5 = null;
        int n2 = 0;
        block12 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block12;
                }
                case 1: {
                    string5 = a.o(parcel, n3);
                    continue block12;
                }
                case 1000: {
                    n2 = a.g(parcel, n3);
                    continue block12;
                }
                case 2: {
                    string4 = a.o(parcel, n3);
                    continue block12;
                }
                case 3: {
                    string3 = a.o(parcel, n3);
                    continue block12;
                }
                case 4: {
                    uri = a.a(parcel, n3, Uri.CREATOR);
                    continue block12;
                }
                case 5: {
                    string2 = a.o(parcel, n3);
                    continue block12;
                }
                case 6: {
                    playerEntity = a.a(parcel, n3, PlayerEntity.CREATOR);
                    continue block12;
                }
                case 7: {
                    l = a.i(parcel, n3);
                    continue block12;
                }
                case 8: {
                    string = a.o(parcel, n3);
                    continue block12;
                }
                case 9: 
            }
            bl = a.c(parcel, n3);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new EventEntity(n2, string5, string4, string3, uri, string2, playerEntity, l, string, bl);
    }

    public EventEntity[] newArray(int n) {
        return new EventEntity[n];
    }
}

