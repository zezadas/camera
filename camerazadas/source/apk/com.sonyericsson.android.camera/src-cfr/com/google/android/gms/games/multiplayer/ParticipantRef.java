/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.ParticipantResult;

public final class ParticipantRef
extends d
implements Participant {
    private final PlayerRef aci;

    public ParticipantRef(DataHolder dataHolder, int n) {
        super(dataHolder, n);
        this.aci = new PlayerRef(dataHolder, n);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return ParticipantEntity.a(this, object);
    }

    @Override
    public Participant freeze() {
        return new ParticipantEntity(this);
    }

    @Override
    public int getCapabilities() {
        return this.getInteger("capabilities");
    }

    @Override
    public String getDisplayName() {
        if (this.aS("external_player_id")) {
            return this.getString("default_display_name");
        }
        return this.aci.getDisplayName();
    }

    @Override
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        if (this.aS("external_player_id")) {
            this.a("default_display_name", charArrayBuffer);
            return;
        }
        this.aci.getDisplayName(charArrayBuffer);
    }

    @Override
    public Uri getHiResImageUri() {
        if (this.aS("external_player_id")) {
            return this.aR("default_display_hi_res_image_uri");
        }
        return this.aci.getHiResImageUri();
    }

    @Override
    public String getHiResImageUrl() {
        if (this.aS("external_player_id")) {
            return this.getString("default_display_hi_res_image_url");
        }
        return this.aci.getHiResImageUrl();
    }

    @Override
    public Uri getIconImageUri() {
        if (this.aS("external_player_id")) {
            return this.aR("default_display_image_uri");
        }
        return this.aci.getIconImageUri();
    }

    @Override
    public String getIconImageUrl() {
        if (this.aS("external_player_id")) {
            return this.getString("default_display_image_url");
        }
        return this.aci.getIconImageUrl();
    }

    @Override
    public String getParticipantId() {
        return this.getString("external_participant_id");
    }

    @Override
    public Player getPlayer() {
        if (this.aS("external_player_id")) {
            return null;
        }
        return this.aci;
    }

    @Override
    public ParticipantResult getResult() {
        if (this.aS("result_type")) {
            return null;
        }
        int n = this.getInteger("result_type");
        int n2 = this.getInteger("placing");
        return new ParticipantResult(this.getParticipantId(), n, n2);
    }

    @Override
    public int getStatus() {
        return this.getInteger("player_status");
    }

    @Override
    public int hashCode() {
        return ParticipantEntity.a(this);
    }

    @Override
    public boolean isConnectedToRoom() {
        if (this.getInteger("connected") > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String jX() {
        return this.getString("client_address");
    }

    public String toString() {
        return ParticipantEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((ParticipantEntity)this.freeze()).writeToParcel(parcel, n);
    }
}

