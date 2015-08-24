/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.game.ExtendedGame;
import com.google.android.gms.games.internal.game.ExtendedGameEntityCreator;
import com.google.android.gms.games.internal.game.GameBadge;
import com.google.android.gms.games.internal.game.GameBadgeEntity;
import com.google.android.gms.games.internal.game.GameBadgeEntityCreator;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import java.util.ArrayList;
import java.util.Collection;

public final class ExtendedGameEntity
extends GamesDowngradeableSafeParcel
implements ExtendedGame {
    public static final ExtendedGameEntityCreator CREATOR = new ExtendedGameEntityCreatorCompat();
    private final int BR;
    private final boolean aaA;
    private final int aaB;
    private final long aaC;
    private final long aaD;
    private final String aaE;
    private final long aaF;
    private final String aaG;
    private final ArrayList<GameBadgeEntity> aaH;
    private final SnapshotMetadataEntity aaI;
    private final GameEntity aay;
    private final int aaz;

    ExtendedGameEntity(int n, GameEntity gameEntity, int n2, boolean bl, int n3, long l, long l2, String string, long l3, String string2, ArrayList<GameBadgeEntity> arrayList, SnapshotMetadataEntity snapshotMetadataEntity) {
        this.BR = n;
        this.aay = gameEntity;
        this.aaz = n2;
        this.aaA = bl;
        this.aaB = n3;
        this.aaC = l;
        this.aaD = l2;
        this.aaE = string;
        this.aaF = l3;
        this.aaG = string2;
        this.aaH = arrayList;
        this.aaI = snapshotMetadataEntity;
    }

    /*
     * Enabled aggressive block sorting
     */
    public ExtendedGameEntity(ExtendedGame arrayList) {
        void var4_5;
        void var4_8;
        Object var5_2 = null;
        this.BR = 2;
        Game game = arrayList.getGame();
        if (game == null) {
            Object var4_4 = null;
        } else {
            GameEntity gameEntity = new GameEntity(game);
        }
        this.aay = var4_5;
        this.aaz = arrayList.kS();
        this.aaA = arrayList.kT();
        this.aaB = arrayList.kU();
        this.aaC = arrayList.kV();
        this.aaD = arrayList.kW();
        this.aaE = arrayList.kX();
        this.aaF = arrayList.kY();
        this.aaG = arrayList.kZ();
        SnapshotMetadata snapshotMetadata = arrayList.la();
        if (snapshotMetadata == null) {
            Object var4_7 = var5_2;
        } else {
            SnapshotMetadataEntity snapshotMetadataEntity = new SnapshotMetadataEntity(snapshotMetadata);
        }
        this.aaI = var4_8;
        arrayList = arrayList.kR();
        int n = arrayList.size();
        this.aaH = new ArrayList(n);
        for (int i = 0; i < n; ++i) {
            this.aaH.add((GameBadgeEntity)arrayList.get(i).freeze());
        }
    }

    static int a(ExtendedGame extendedGame) {
        return n.hashCode(extendedGame.getGame(), extendedGame.kS(), extendedGame.kT(), extendedGame.kU(), extendedGame.kV(), extendedGame.kW(), extendedGame.kX(), extendedGame.kY(), extendedGame.kZ());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(ExtendedGame extendedGame, Object object) {
        boolean bl = true;
        if (!(object instanceof ExtendedGame)) {
            return false;
        }
        boolean bl2 = bl;
        if (extendedGame == object) return bl2;
        if (!n.equal((object = (ExtendedGame)object).getGame(), extendedGame.getGame())) return false;
        if (!n.equal(object.kS(), extendedGame.kS())) return false;
        if (!n.equal(object.kT(), extendedGame.kT())) return false;
        if (!n.equal(object.kU(), extendedGame.kU())) return false;
        if (!n.equal(object.kV(), extendedGame.kV())) return false;
        if (!n.equal(object.kW(), extendedGame.kW())) return false;
        if (!n.equal(object.kX(), extendedGame.kX())) return false;
        if (!n.equal(object.kY(), extendedGame.kY())) return false;
        bl2 = bl;
        if (n.equal(object.kZ(), extendedGame.kZ())) return bl2;
        return false;
    }

    static String b(ExtendedGame extendedGame) {
        return n.h(extendedGame).a("Game", extendedGame.getGame()).a("Availability", extendedGame.kS()).a("Owned", extendedGame.kT()).a("AchievementUnlockedCount", extendedGame.kU()).a("LastPlayedServerTimestamp", extendedGame.kV()).a("PriceMicros", extendedGame.kW()).a("FormattedPrice", extendedGame.kX()).a("FullPriceMicros", extendedGame.kY()).a("FormattedFullPrice", extendedGame.kZ()).a("Snapshot", extendedGame.la()).toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return ExtendedGameEntity.a(this, object);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.lc();
    }

    @Override
    public /* synthetic */ Game getGame() {
        return this.lb();
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return ExtendedGameEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    @Override
    public ArrayList<GameBadge> kR() {
        return new ArrayList<GameBadge>(this.aaH);
    }

    @Override
    public int kS() {
        return this.aaz;
    }

    @Override
    public boolean kT() {
        return this.aaA;
    }

    @Override
    public int kU() {
        return this.aaB;
    }

    @Override
    public long kV() {
        return this.aaC;
    }

    @Override
    public long kW() {
        return this.aaD;
    }

    @Override
    public String kX() {
        return this.aaE;
    }

    @Override
    public long kY() {
        return this.aaF;
    }

    @Override
    public String kZ() {
        return this.aaG;
    }

    @Override
    public SnapshotMetadata la() {
        return this.aaI;
    }

    public GameEntity lb() {
        return this.aay;
    }

    public ExtendedGame lc() {
        return this;
    }

    public String toString() {
        return ExtendedGameEntity.b(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void writeToParcel(Parcel parcel, int n) {
        int n2 = 0;
        if (!this.gQ()) {
            ExtendedGameEntityCreator.a(this, parcel, n);
            return;
        } else {
            this.aay.writeToParcel(parcel, n);
            parcel.writeInt(this.aaz);
            int n3 = this.aaA ? 1 : 0;
            parcel.writeInt(n3);
            parcel.writeInt(this.aaB);
            parcel.writeLong(this.aaC);
            parcel.writeLong(this.aaD);
            parcel.writeString(this.aaE);
            parcel.writeLong(this.aaF);
            parcel.writeString(this.aaG);
            int n4 = this.aaH.size();
            parcel.writeInt(n4);
            for (n3 = n2; n3 < n4; ++n3) {
                this.aaH.get(n3).writeToParcel(parcel, n);
            }
        }
    }

    static final class ExtendedGameEntityCreatorCompat
    extends ExtendedGameEntityCreator {
        ExtendedGameEntityCreatorCompat() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public ExtendedGameEntity cg(Parcel parcel) {
            if (ExtendedGameEntity.c(ExtendedGameEntity.gP()) || ExtendedGameEntity.aV(ExtendedGameEntity.class.getCanonicalName())) {
                return super.cg(parcel);
            }
            GameEntity gameEntity = GameEntity.CREATOR.createFromParcel(parcel);
            int n = parcel.readInt();
            boolean bl = parcel.readInt() == 1;
            int n2 = parcel.readInt();
            long l = parcel.readLong();
            long l2 = parcel.readLong();
            String string = parcel.readString();
            long l3 = parcel.readLong();
            String string2 = parcel.readString();
            int n3 = parcel.readInt();
            ArrayList<GameBadgeEntity> arrayList = new ArrayList<GameBadgeEntity>(n3);
            for (int i = 0; i < n3; ++i) {
                arrayList.add(GameBadgeEntity.CREATOR.ch(parcel));
            }
            return new ExtendedGameEntity(2, gameEntity, n, bl, n2, l, l2, string, l3, string2, arrayList, null);
        }

        @Override
        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return this.cg(parcel);
        }
    }

}

