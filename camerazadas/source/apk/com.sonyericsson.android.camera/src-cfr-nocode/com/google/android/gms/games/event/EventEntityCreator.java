/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.event;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.event.EventEntity;

/*
 * Exception performing whole class analysis ignored.
 */
public class EventEntityCreator
implements Parcelable.Creator<EventEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    public EventEntityCreator();

    static void a(EventEntity var0, Parcel var1, int var2);

    @Override
    public EventEntity createFromParcel(Parcel var1);

    public EventEntity[] newArray(int var1);
}

