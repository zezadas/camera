/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntityCreator;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.internal.jv;

public final class ParticipantEntity
extends GamesDowngradeableSafeParcel
implements Participant {
    public static final Parcelable.Creator<ParticipantEntity> CREATOR = new ParticipantEntityCreatorCompat();
    private final int BR;
    private final int EZ;
    private final int Fa;
    private final String NH;
    private final Uri Vh;
    private final Uri Vi;
    private final String Vs;
    private final String Vt;
    private final PlayerEntity Wh;
    private final String Wq;
    private final String Xr;
    private final boolean acg;
    private final ParticipantResult ach;

    ParticipantEntity(int n, String string, String string2, Uri uri, Uri uri2, int n2, String string3, boolean bl, PlayerEntity playerEntity, int n3, ParticipantResult participantResult, String string4, String string5) {
        this.BR = n;
        this.Xr = string;
        this.NH = string2;
        this.Vh = uri;
        this.Vi = uri2;
        this.Fa = n2;
        this.Wq = string3;
        this.acg = bl;
        this.Wh = playerEntity;
        this.EZ = n3;
        this.ach = participantResult;
        this.Vs = string4;
        this.Vt = string5;
    }

    /*
     * Enabled aggressive block sorting
     */
    public ParticipantEntity(Participant participant) {
        this.BR = 3;
        this.Xr = participant.getParticipantId();
        this.NH = participant.getDisplayName();
        this.Vh = participant.getIconImageUri();
        this.Vi = participant.getHiResImageUri();
        this.Fa = participant.getStatus();
        this.Wq = participant.jX();
        this.acg = participant.isConnectedToRoom();
        Player player = participant.getPlayer();
        player = player == null ? null : new PlayerEntity(player);
        this.Wh = player;
        this.EZ = participant.getCapabilities();
        this.ach = participant.getResult();
        this.Vs = participant.getIconImageUrl();
        this.Vt = participant.getHiResImageUrl();
    }

    static int a(Participant participant) {
        return n.hashCode(participant.getPlayer(), participant.getStatus(), participant.jX(), participant.isConnectedToRoom(), participant.getDisplayName(), participant.getIconImageUri(), participant.getHiResImageUri(), participant.getCapabilities(), participant.getResult(), participant.getParticipantId());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(Participant participant, Object object) {
        boolean bl = true;
        if (!(object instanceof Participant)) {
            return false;
        }
        boolean bl2 = bl;
        if (participant == object) return bl2;
        if (!n.equal((object = (Participant)object).getPlayer(), participant.getPlayer())) return false;
        if (!n.equal(object.getStatus(), participant.getStatus())) return false;
        if (!n.equal(object.jX(), participant.jX())) return false;
        if (!n.equal(object.isConnectedToRoom(), participant.isConnectedToRoom())) return false;
        if (!n.equal(object.getDisplayName(), participant.getDisplayName())) return false;
        if (!n.equal(object.getIconImageUri(), participant.getIconImageUri())) return false;
        if (!n.equal(object.getHiResImageUri(), participant.getHiResImageUri())) return false;
        if (!n.equal(object.getCapabilities(), participant.getCapabilities())) return false;
        if (!n.equal(object.getResult(), participant.getResult())) return false;
        bl2 = bl;
        if (n.equal(object.getParticipantId(), participant.getParticipantId())) return bl2;
        return false;
    }

    static String b(Participant participant) {
        return n.h(participant).a("ParticipantId", participant.getParticipantId()).a("Player", participant.getPlayer()).a("Status", participant.getStatus()).a("ClientAddress", participant.jX()).a("ConnectedToRoom", participant.isConnectedToRoom()).a("DisplayName", participant.getDisplayName()).a("IconImage", participant.getIconImageUri()).a("IconImageUrl", participant.getIconImageUrl()).a("HiResImage", participant.getHiResImageUri()).a("HiResImageUrl", participant.getHiResImageUrl()).a("Capabilities", participant.getCapabilities()).a("Result", participant.getResult()).toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return ParticipantEntity.a(this, object);
    }

    @Override
    public Participant freeze() {
        return this;
    }

    @Override
    public int getCapabilities() {
        return this.EZ;
    }

    @Override
    public String getDisplayName() {
        if (this.Wh == null) {
            return this.NH;
        }
        return this.Wh.getDisplayName();
    }

    @Override
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        if (this.Wh == null) {
            jv.b(this.NH, charArrayBuffer);
            return;
        }
        this.Wh.getDisplayName(charArrayBuffer);
    }

    @Override
    public Uri getHiResImageUri() {
        if (this.Wh == null) {
            return this.Vi;
        }
        return this.Wh.getHiResImageUri();
    }

    @Override
    public String getHiResImageUrl() {
        if (this.Wh == null) {
            return this.Vt;
        }
        return this.Wh.getHiResImageUrl();
    }

    @Override
    public Uri getIconImageUri() {
        if (this.Wh == null) {
            return this.Vh;
        }
        return this.Wh.getIconImageUri();
    }

    @Override
    public String getIconImageUrl() {
        if (this.Wh == null) {
            return this.Vs;
        }
        return this.Wh.getIconImageUrl();
    }

    @Override
    public String getParticipantId() {
        return this.Xr;
    }

    @Override
    public Player getPlayer() {
        return this.Wh;
    }

    @Override
    public ParticipantResult getResult() {
        return this.ach;
    }

    @Override
    public int getStatus() {
        return this.Fa;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return ParticipantEntity.a(this);
    }

    @Override
    public boolean isConnectedToRoom() {
        return this.acg;
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    @Override
    public String jX() {
        return this.Wq;
    }

    public String toString() {
        return ParticipantEntity.b(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void writeToParcel(Parcel parcel, int n) {
        Object var6_3 = null;
        int n2 = 0;
        if (!this.gQ()) {
            ParticipantEntityCreator.a(this, parcel, n);
            return;
        } else {
            parcel.writeString(this.Xr);
            parcel.writeString(this.NH);
            String string = this.Vh == null ? null : this.Vh.toString();
            parcel.writeString(string);
            string = this.Vi == null ? var6_3 : this.Vi.toString();
            parcel.writeString(string);
            parcel.writeInt(this.Fa);
            parcel.writeString(this.Wq);
            int n3 = this.acg ? 1 : 0;
            parcel.writeInt(n3);
            n3 = this.Wh == null ? n2 : 1;
            parcel.writeInt(n3);
            if (this.Wh == null) return;
            {
                this.Wh.writeToParcel(parcel, n);
                return;
            }
        }
    }

    static final class ParticipantEntityCreatorCompat
    extends ParticipantEntityCreator {
        ParticipantEntityCreatorCompat() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public ParticipantEntity cm(Parcel object) {
            boolean bl = true;
            if (ParticipantEntity.c(ParticipantEntity.gP())) return super.cm((Parcel)object);
            if (ParticipantEntity.aV(ParticipantEntity.class.getCanonicalName())) {
                return super.cm((Parcel)object);
            }
            String string = object.readString();
            String string2 = object.readString();
            Object object2 = object.readString();
            object2 = object2 == null ? null : Uri.parse((String)object2);
            Object object3 = object.readString();
            object3 = object3 == null ? null : Uri.parse((String)object3);
            int n = object.readInt();
            String string3 = object.readString();
            boolean bl2 = object.readInt() > 0;
            if (object.readInt() <= 0) {
                bl = false;
            }
            if (bl) {
                object = PlayerEntity.CREATOR.createFromParcel((Parcel)object);
                return new ParticipantEntity(3, string, string2, (Uri)object2, (Uri)object3, n, string3, bl2, (PlayerEntity)object, 7, null, null, null);
            }
            object = null;
            return new ParticipantEntity(3, string, string2, (Uri)object2, (Uri)object3, n, string3, bl2, (PlayerEntity)object, 7, null, null, null);
        }

        @Override
        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return this.cm(parcel);
        }
    }

}

