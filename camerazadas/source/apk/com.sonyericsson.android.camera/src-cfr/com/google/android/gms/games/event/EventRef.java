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
import com.google.android.gms.games.PlayerRef;
import com.google.android.gms.games.event.Event;
import com.google.android.gms.games.event.EventEntity;

public final class EventRef
extends d
implements Event {
    EventRef(DataHolder dataHolder, int n) {
        super(dataHolder, n);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return EventEntity.a(this, object);
    }

    @Override
    public Event freeze() {
        return new EventEntity(this);
    }

    @Override
    public String getDescription() {
        return this.getString("description");
    }

    @Override
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        this.a("description", charArrayBuffer);
    }

    @Override
    public String getEventId() {
        return this.getString("external_event_id");
    }

    @Override
    public String getFormattedValue() {
        return this.getString("formatted_value");
    }

    @Override
    public void getFormattedValue(CharArrayBuffer charArrayBuffer) {
        this.a("formatted_value", charArrayBuffer);
    }

    @Override
    public Uri getIconImageUri() {
        return this.aR("icon_image_uri");
    }

    @Override
    public String getIconImageUrl() {
        return this.getString("icon_image_url");
    }

    @Override
    public String getName() {
        return this.getString("name");
    }

    @Override
    public void getName(CharArrayBuffer charArrayBuffer) {
        this.a("name", charArrayBuffer);
    }

    @Override
    public Player getPlayer() {
        return new PlayerRef(this.II, this.JX);
    }

    @Override
    public long getValue() {
        return this.getLong("value");
    }

    @Override
    public int hashCode() {
        return EventEntity.a(this);
    }

    @Override
    public boolean isVisible() {
        return this.getBoolean("visibility");
    }

    public String toString() {
        return EventEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((EventEntity)this.freeze()).writeToParcel(parcel, n);
    }
}

