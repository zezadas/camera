/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.event;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Player;

public interface Event
extends Parcelable,
Freezable<Event> {
    public String getDescription();

    public void getDescription(CharArrayBuffer var1);

    public String getEventId();

    public String getFormattedValue();

    public void getFormattedValue(CharArrayBuffer var1);

    public Uri getIconImageUri();

    @Deprecated
    public String getIconImageUrl();

    public String getName();

    public void getName(CharArrayBuffer var1);

    public Player getPlayer();

    public long getValue();

    public boolean isVisible();
}

