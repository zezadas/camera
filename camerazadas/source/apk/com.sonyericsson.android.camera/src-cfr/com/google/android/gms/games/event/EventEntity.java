/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.event;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.event.Event;
import com.google.android.gms.games.event.EventEntityCreator;
import com.google.android.gms.internal.jv;

public final class EventEntity
implements SafeParcelable,
Event {
    public static final EventEntityCreator CREATOR = new EventEntityCreator();
    private final int BR;
    private final String Tr;
    private final Uri Vh;
    private final String Vs;
    private final PlayerEntity Wh;
    private final String Wm;
    private final long Wn;
    private final String Wo;
    private final boolean Wp;
    private final String mName;

    EventEntity(int n, String string, String string2, String string3, Uri uri, String string4, Player player, long l, String string5, boolean bl) {
        this.BR = n;
        this.Wm = string;
        this.mName = string2;
        this.Tr = string3;
        this.Vh = uri;
        this.Vs = string4;
        this.Wh = new PlayerEntity(player);
        this.Wn = l;
        this.Wo = string5;
        this.Wp = bl;
    }

    public EventEntity(Event event) {
        this.BR = 1;
        this.Wm = event.getEventId();
        this.mName = event.getName();
        this.Tr = event.getDescription();
        this.Vh = event.getIconImageUri();
        this.Vs = event.getIconImageUrl();
        this.Wh = (PlayerEntity)event.getPlayer().freeze();
        this.Wn = event.getValue();
        this.Wo = event.getFormattedValue();
        this.Wp = event.isVisible();
    }

    static int a(Event event) {
        return n.hashCode(event.getEventId(), event.getName(), event.getDescription(), event.getIconImageUri(), event.getIconImageUrl(), event.getPlayer(), event.getValue(), event.getFormattedValue(), event.isVisible());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(Event event, Object object) {
        boolean bl = true;
        if (!(object instanceof Event)) {
            return false;
        }
        boolean bl2 = bl;
        if (event == object) return bl2;
        if (!n.equal((object = (Event)object).getEventId(), event.getEventId())) return false;
        if (!n.equal(object.getName(), event.getName())) return false;
        if (!n.equal(object.getDescription(), event.getDescription())) return false;
        if (!n.equal(object.getIconImageUri(), event.getIconImageUri())) return false;
        if (!n.equal(object.getIconImageUrl(), event.getIconImageUrl())) return false;
        if (!n.equal(object.getPlayer(), event.getPlayer())) return false;
        if (!n.equal(object.getValue(), event.getValue())) return false;
        if (!n.equal(object.getFormattedValue(), event.getFormattedValue())) return false;
        bl2 = bl;
        if (n.equal(object.isVisible(), event.isVisible())) return bl2;
        return false;
    }

    static String b(Event event) {
        return n.h(event).a("Id", event.getEventId()).a("Name", event.getName()).a("Description", event.getDescription()).a("IconImageUri", event.getIconImageUri()).a("IconImageUrl", event.getIconImageUrl()).a("Player", event.getPlayer()).a("Value", event.getValue()).a("FormattedValue", event.getFormattedValue()).a("isVisible", event.isVisible()).toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return EventEntity.a(this, object);
    }

    @Override
    public Event freeze() {
        return this;
    }

    @Override
    public String getDescription() {
        return this.Tr;
    }

    @Override
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        jv.b(this.Tr, charArrayBuffer);
    }

    @Override
    public String getEventId() {
        return this.Wm;
    }

    @Override
    public String getFormattedValue() {
        return this.Wo;
    }

    @Override
    public void getFormattedValue(CharArrayBuffer charArrayBuffer) {
        jv.b(this.Wo, charArrayBuffer);
    }

    @Override
    public Uri getIconImageUri() {
        return this.Vh;
    }

    @Override
    public String getIconImageUrl() {
        return this.Vs;
    }

    @Override
    public String getName() {
        return this.mName;
    }

    @Override
    public void getName(CharArrayBuffer charArrayBuffer) {
        jv.b(this.mName, charArrayBuffer);
    }

    @Override
    public Player getPlayer() {
        return this.Wh;
    }

    @Override
    public long getValue() {
        return this.Wn;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return EventEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    @Override
    public boolean isVisible() {
        return this.Wp;
    }

    public String toString() {
        return EventEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        EventEntityCreator.a(this, parcel, n);
    }
}

