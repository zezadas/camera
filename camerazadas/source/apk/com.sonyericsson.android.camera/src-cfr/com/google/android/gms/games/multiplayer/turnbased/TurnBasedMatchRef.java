/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.turnbased;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantRef;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchEntity;
import java.util.ArrayList;

public final class TurnBasedMatchRef
extends d
implements TurnBasedMatch {
    private final int aaK;
    private final Game abx;

    TurnBasedMatchRef(DataHolder dataHolder, int n, int n2) {
        super(dataHolder, n);
        this.abx = new GameRef(dataHolder, n);
        this.aaK = n2;
    }

    @Override
    public boolean canRematch() {
        if (this.getTurnStatus() == 3 && this.getRematchId() == null && this.getParticipants().size() > 1) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        return TurnBasedMatchEntity.a((TurnBasedMatch)this, object);
    }

    @Override
    public TurnBasedMatch freeze() {
        return new TurnBasedMatchEntity(this);
    }

    @Override
    public Bundle getAutoMatchCriteria() {
        if (!this.getBoolean("has_automatch_criteria")) {
            return null;
        }
        return TurnBasedMatchConfig.createAutoMatchCriteria(this.getInteger("automatch_min_players"), this.getInteger("automatch_max_players"), this.getLong("automatch_bit_mask"));
    }

    @Override
    public int getAvailableAutoMatchSlots() {
        if (!this.getBoolean("has_automatch_criteria")) {
            return 0;
        }
        return this.getInteger("automatch_max_players");
    }

    @Override
    public long getCreationTimestamp() {
        return this.getLong("creation_timestamp");
    }

    @Override
    public String getCreatorId() {
        return this.getString("creator_external");
    }

    @Override
    public byte[] getData() {
        return this.getByteArray("data");
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
    public Participant getDescriptionParticipant() {
        String string = this.getDescriptionParticipantId();
        if (string == null) {
            return null;
        }
        return this.getParticipant(string);
    }

    @Override
    public String getDescriptionParticipantId() {
        return this.getString("description_participant_id");
    }

    @Override
    public Game getGame() {
        return this.abx;
    }

    @Override
    public long getLastUpdatedTimestamp() {
        return this.getLong("last_updated_timestamp");
    }

    @Override
    public String getLastUpdaterId() {
        return this.getString("last_updater_external");
    }

    @Override
    public String getMatchId() {
        return this.getString("external_match_id");
    }

    @Override
    public int getMatchNumber() {
        return this.getInteger("match_number");
    }

    @Override
    public Participant getParticipant(String string) {
        return TurnBasedMatchEntity.c(this, string);
    }

    @Override
    public String getParticipantId(String string) {
        return TurnBasedMatchEntity.b(this, string);
    }

    @Override
    public ArrayList<String> getParticipantIds() {
        return TurnBasedMatchEntity.c(this);
    }

    @Override
    public int getParticipantStatus(String string) {
        return TurnBasedMatchEntity.a((TurnBasedMatch)this, string);
    }

    @Override
    public ArrayList<Participant> getParticipants() {
        ArrayList<Participant> arrayList = new ArrayList<Participant>(this.aaK);
        for (int i = 0; i < this.aaK; ++i) {
            arrayList.add(new ParticipantRef(this.II, this.JX + i));
        }
        return arrayList;
    }

    @Override
    public String getPendingParticipantId() {
        return this.getString("pending_participant_external");
    }

    @Override
    public byte[] getPreviousMatchData() {
        return this.getByteArray("previous_match_data");
    }

    @Override
    public String getRematchId() {
        return this.getString("rematch_id");
    }

    @Override
    public int getStatus() {
        return this.getInteger("status");
    }

    @Override
    public int getTurnStatus() {
        return this.getInteger("user_match_status");
    }

    @Override
    public int getVariant() {
        return this.getInteger("variant");
    }

    @Override
    public int getVersion() {
        return this.getInteger("version");
    }

    @Override
    public int hashCode() {
        return TurnBasedMatchEntity.a(this);
    }

    @Override
    public boolean isLocallyModified() {
        return this.getBoolean("upsync_required");
    }

    public String toString() {
        return TurnBasedMatchEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ((TurnBasedMatchEntity)this.freeze()).writeToParcel(parcel, n);
    }
}

