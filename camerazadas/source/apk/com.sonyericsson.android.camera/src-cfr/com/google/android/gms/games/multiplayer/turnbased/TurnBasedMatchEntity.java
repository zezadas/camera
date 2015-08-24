/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.turnbased;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchEntityCreator;
import com.google.android.gms.internal.jv;
import java.util.ArrayList;
import java.util.Collection;

public final class TurnBasedMatchEntity
implements SafeParcelable,
TurnBasedMatch {
    public static final TurnBasedMatchEntityCreator CREATOR = new TurnBasedMatchEntityCreator();
    private final int BR;
    private final int Di;
    private final String Tr;
    private final long Wk;
    private final String Xh;
    private final GameEntity aay;
    private final long abZ;
    private final String acE;
    private final String acF;
    private final int acG;
    private final byte[] acH;
    private final String acI;
    private final byte[] acJ;
    private final int acK;
    private final int acL;
    private final boolean acM;
    private final String acN;
    private final ArrayList<ParticipantEntity> acc;
    private final int acd;
    private final Bundle acs;
    private final String acw;

    TurnBasedMatchEntity(int n, GameEntity gameEntity, String string, String string2, long l, String string3, long l2, String string4, int n2, int n3, int n4, byte[] arrby, ArrayList<ParticipantEntity> arrayList, String string5, byte[] arrby2, int n5, Bundle bundle, int n6, boolean bl, String string6, String string7) {
        this.BR = n;
        this.aay = gameEntity;
        this.Xh = string;
        this.acw = string2;
        this.abZ = l;
        this.acE = string3;
        this.Wk = l2;
        this.acF = string4;
        this.acG = n2;
        this.acL = n6;
        this.acd = n3;
        this.Di = n4;
        this.acH = arrby;
        this.acc = arrayList;
        this.acI = string5;
        this.acJ = arrby2;
        this.acK = n5;
        this.acs = bundle;
        this.acM = bl;
        this.Tr = string6;
        this.acN = string7;
    }

    /*
     * Enabled aggressive block sorting
     */
    public TurnBasedMatchEntity(TurnBasedMatch arrayList) {
        this.BR = 2;
        this.aay = new GameEntity(arrayList.getGame());
        this.Xh = arrayList.getMatchId();
        this.acw = arrayList.getCreatorId();
        this.abZ = arrayList.getCreationTimestamp();
        this.acE = arrayList.getLastUpdaterId();
        this.Wk = arrayList.getLastUpdatedTimestamp();
        this.acF = arrayList.getPendingParticipantId();
        this.acG = arrayList.getStatus();
        this.acL = arrayList.getTurnStatus();
        this.acd = arrayList.getVariant();
        this.Di = arrayList.getVersion();
        this.acI = arrayList.getRematchId();
        this.acK = arrayList.getMatchNumber();
        this.acs = arrayList.getAutoMatchCriteria();
        this.acM = arrayList.isLocallyModified();
        this.Tr = arrayList.getDescription();
        this.acN = arrayList.getDescriptionParticipantId();
        byte[] arrby = arrayList.getData();
        if (arrby == null) {
            this.acH = null;
        } else {
            this.acH = new byte[arrby.length];
            System.arraycopy(arrby, 0, this.acH, 0, arrby.length);
        }
        if ((arrby = arrayList.getPreviousMatchData()) == null) {
            this.acJ = null;
        } else {
            this.acJ = new byte[arrby.length];
            System.arraycopy(arrby, 0, this.acJ, 0, arrby.length);
        }
        arrayList = arrayList.getParticipants();
        int n = arrayList.size();
        this.acc = new ArrayList(n);
        for (int i = 0; i < n; ++i) {
            this.acc.add((ParticipantEntity)arrayList.get(i).freeze());
        }
    }

    static int a(TurnBasedMatch turnBasedMatch) {
        return n.hashCode(turnBasedMatch.getGame(), turnBasedMatch.getMatchId(), turnBasedMatch.getCreatorId(), turnBasedMatch.getCreationTimestamp(), turnBasedMatch.getLastUpdaterId(), turnBasedMatch.getLastUpdatedTimestamp(), turnBasedMatch.getPendingParticipantId(), turnBasedMatch.getStatus(), turnBasedMatch.getTurnStatus(), turnBasedMatch.getDescription(), turnBasedMatch.getVariant(), turnBasedMatch.getVersion(), turnBasedMatch.getParticipants(), turnBasedMatch.getRematchId(), turnBasedMatch.getMatchNumber(), turnBasedMatch.getAutoMatchCriteria(), turnBasedMatch.getAvailableAutoMatchSlots(), turnBasedMatch.isLocallyModified());
    }

    static int a(TurnBasedMatch turnBasedMatch, String string) {
        ArrayList<Participant> arrayList = turnBasedMatch.getParticipants();
        int n = arrayList.size();
        for (int i = 0; i < n; ++i) {
            Participant participant = arrayList.get(i);
            if (!participant.getParticipantId().equals(string)) continue;
            return participant.getStatus();
        }
        throw new IllegalStateException("Participant " + string + " is not in match " + turnBasedMatch.getMatchId());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(TurnBasedMatch turnBasedMatch, Object object) {
        boolean bl = true;
        if (!(object instanceof TurnBasedMatch)) {
            return false;
        }
        boolean bl2 = bl;
        if (turnBasedMatch == object) return bl2;
        if (!n.equal((object = (TurnBasedMatch)object).getGame(), turnBasedMatch.getGame())) return false;
        if (!n.equal(object.getMatchId(), turnBasedMatch.getMatchId())) return false;
        if (!n.equal(object.getCreatorId(), turnBasedMatch.getCreatorId())) return false;
        if (!n.equal(object.getCreationTimestamp(), turnBasedMatch.getCreationTimestamp())) return false;
        if (!n.equal(object.getLastUpdaterId(), turnBasedMatch.getLastUpdaterId())) return false;
        if (!n.equal(object.getLastUpdatedTimestamp(), turnBasedMatch.getLastUpdatedTimestamp())) return false;
        if (!n.equal(object.getPendingParticipantId(), turnBasedMatch.getPendingParticipantId())) return false;
        if (!n.equal(object.getStatus(), turnBasedMatch.getStatus())) return false;
        if (!n.equal(object.getTurnStatus(), turnBasedMatch.getTurnStatus())) return false;
        if (!n.equal(object.getDescription(), turnBasedMatch.getDescription())) return false;
        if (!n.equal(object.getVariant(), turnBasedMatch.getVariant())) return false;
        if (!n.equal(object.getVersion(), turnBasedMatch.getVersion())) return false;
        if (!n.equal(object.getParticipants(), turnBasedMatch.getParticipants())) return false;
        if (!n.equal(object.getRematchId(), turnBasedMatch.getRematchId())) return false;
        if (!n.equal(object.getMatchNumber(), turnBasedMatch.getMatchNumber())) return false;
        if (!n.equal(object.getAutoMatchCriteria(), turnBasedMatch.getAutoMatchCriteria())) return false;
        if (!n.equal(object.getAvailableAutoMatchSlots(), turnBasedMatch.getAvailableAutoMatchSlots())) return false;
        bl2 = bl;
        if (n.equal(object.isLocallyModified(), turnBasedMatch.isLocallyModified())) return bl2;
        return false;
    }

    static String b(TurnBasedMatch turnBasedMatch) {
        return n.h(turnBasedMatch).a("Game", turnBasedMatch.getGame()).a("MatchId", turnBasedMatch.getMatchId()).a("CreatorId", turnBasedMatch.getCreatorId()).a("CreationTimestamp", turnBasedMatch.getCreationTimestamp()).a("LastUpdaterId", turnBasedMatch.getLastUpdaterId()).a("LastUpdatedTimestamp", turnBasedMatch.getLastUpdatedTimestamp()).a("PendingParticipantId", turnBasedMatch.getPendingParticipantId()).a("MatchStatus", turnBasedMatch.getStatus()).a("TurnStatus", turnBasedMatch.getTurnStatus()).a("Description", turnBasedMatch.getDescription()).a("Variant", turnBasedMatch.getVariant()).a("Data", turnBasedMatch.getData()).a("Version", turnBasedMatch.getVersion()).a("Participants", turnBasedMatch.getParticipants()).a("RematchId", turnBasedMatch.getRematchId()).a("PreviousData", turnBasedMatch.getPreviousMatchData()).a("MatchNumber", turnBasedMatch.getMatchNumber()).a("AutoMatchCriteria", turnBasedMatch.getAutoMatchCriteria()).a("AvailableAutoMatchSlots", turnBasedMatch.getAvailableAutoMatchSlots()).a("LocallyModified", turnBasedMatch.isLocallyModified()).a("DescriptionParticipantId", turnBasedMatch.getDescriptionParticipantId()).toString();
    }

    static String b(TurnBasedMatch object, String string) {
        object = object.getParticipants();
        int n = object.size();
        for (int i = 0; i < n; ++i) {
            Participant participant = (Participant)object.get(i);
            Player player = participant.getPlayer();
            if (player == null || !player.getPlayerId().equals(string)) continue;
            return participant.getParticipantId();
        }
        return null;
    }

    static Participant c(TurnBasedMatch turnBasedMatch, String string) {
        ArrayList<Participant> arrayList = turnBasedMatch.getParticipants();
        int n = arrayList.size();
        for (int i = 0; i < n; ++i) {
            Participant participant = arrayList.get(i);
            if (!participant.getParticipantId().equals(string)) continue;
            return participant;
        }
        throw new IllegalStateException("Participant " + string + " is not in match " + turnBasedMatch.getMatchId());
    }

    static ArrayList<String> c(TurnBasedMatch object) {
        object = object.getParticipants();
        int n = object.size();
        ArrayList<String> arrayList = new ArrayList<String>(n);
        for (int i = 0; i < n; ++i) {
            arrayList.add(((Participant)object.get(i)).getParticipantId());
        }
        return arrayList;
    }

    @Override
    public boolean canRematch() {
        if (this.acG == 2 && this.acI == null) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return TurnBasedMatchEntity.a((TurnBasedMatch)this, object);
    }

    @Override
    public TurnBasedMatch freeze() {
        return this;
    }

    @Override
    public Bundle getAutoMatchCriteria() {
        return this.acs;
    }

    @Override
    public int getAvailableAutoMatchSlots() {
        if (this.acs == null) {
            return 0;
        }
        return this.acs.getInt("max_automatch_players");
    }

    @Override
    public long getCreationTimestamp() {
        return this.abZ;
    }

    @Override
    public String getCreatorId() {
        return this.acw;
    }

    @Override
    public byte[] getData() {
        return this.acH;
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
    public Participant getDescriptionParticipant() {
        String string = this.getDescriptionParticipantId();
        if (string == null) {
            return null;
        }
        return this.getParticipant(string);
    }

    @Override
    public String getDescriptionParticipantId() {
        return this.acN;
    }

    @Override
    public Game getGame() {
        return this.aay;
    }

    @Override
    public long getLastUpdatedTimestamp() {
        return this.Wk;
    }

    @Override
    public String getLastUpdaterId() {
        return this.acE;
    }

    @Override
    public String getMatchId() {
        return this.Xh;
    }

    @Override
    public int getMatchNumber() {
        return this.acK;
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
        return new ArrayList<Participant>(this.acc);
    }

    @Override
    public String getPendingParticipantId() {
        return this.acF;
    }

    @Override
    public byte[] getPreviousMatchData() {
        return this.acJ;
    }

    @Override
    public String getRematchId() {
        return this.acI;
    }

    @Override
    public int getStatus() {
        return this.acG;
    }

    @Override
    public int getTurnStatus() {
        return this.acL;
    }

    @Override
    public int getVariant() {
        return this.acd;
    }

    @Override
    public int getVersion() {
        return this.Di;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return TurnBasedMatchEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    @Override
    public boolean isLocallyModified() {
        return this.acM;
    }

    public String toString() {
        return TurnBasedMatchEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        TurnBasedMatchEntityCreator.a(this, parcel, n);
    }
}

