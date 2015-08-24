/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.request;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestEntity;
import java.util.ArrayList;
import java.util.List;

public final class GameRequestRef
extends d
implements GameRequest {
    private final int aaK;

    public GameRequestRef(DataHolder dataHolder, int n, int n2) {
        super(dataHolder, n);
        this.aaK = n2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return GameRequestEntity.a(this, object);
    }

    @Override
    public GameRequest freeze() {
        return new GameRequestEntity(this);
    }

    @Override
    public long getCreationTimestamp() {
        return this.getLong("creation_timestamp");
    }

    @Override
    public byte[] getData() {
        return this.getByteArray("data");
    }

    @Override
    public long getExpirationTimestamp() {
        return this.getLong("expiration_timestamp");
    }

    @Override
    public Game getGame() {
        return new GameRef(this.II, this.JX);
    }

    @Override
    public int getRecipientStatus(String string) {
        for (int i = this.JX; i < this.JX + this.aaK; ++i) {
            int n = this.II.ar(i);
            if (!this.II.c("recipient_external_player_id", i, n).equals(string)) continue;
            return this.II.b("recipient_status", i, n);
        }
        return -1;
    }

    @Override
    public List<Player> getRecipients() {
        ArrayList<Player> arrayList = new ArrayList<Player>(this.aaK);
        for (int i = 0; i < this.aaK; ++i) {
            arrayList.add(new PlayerRef(this.II, this.JX + i, "recipient_"));
        }
        return arrayList;
    }

    @Override
    public String getRequestId() {
        return this.getString("external_request_id");
    }

    @Override
    public Player getSender() {
        return new PlayerRef(this.II, this.gz(), "sender_");
    }

    @Override
    public int getStatus() {
        return this.getInteger("status");
    }

    @Override
    public int getType() {
        return this.getInteger("type");
    }

    @Override
    public int hashCode() {
        return GameRequestEntity.a(this);
    }

    @Override
    public boolean isConsumed(String string) {
        if (this.getRecipientStatus(string) == 1) {
            return true;
        }
        return false;
    }

    public String toString() {
        return GameRequestEntity.c(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((GameRequestEntity)this.freeze()).writeToParcel(parcel, n);
    }
}

