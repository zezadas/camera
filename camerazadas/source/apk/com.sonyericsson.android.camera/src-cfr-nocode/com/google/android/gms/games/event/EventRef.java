/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.event;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.event.Event;

public final class EventRef
extends d
implements Event {
    EventRef(DataHolder var1, int var2);

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public Event freeze();

    @Override
    public String getDescription();

    @Override
    public void getDescription(CharArrayBuffer var1);

    @Override
    public String getEventId();

    @Override
    public String getFormattedValue();

    @Override
    public void getFormattedValue(CharArrayBuffer var1);

    @Override
    public Uri getIconImageUri();

    @Override
    public String getIconImageUrl();

    @Override
    public String getName();

    @Override
    public void getName(CharArrayBuffer var1);

    @Override
    public Player getPlayer();

    @Override
    public long getValue();

    @Override
    public int hashCode();

    @Override
    public boolean isVisible();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

