/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.game.GameBadge;
import com.google.android.gms.games.internal.game.GameBadgeEntityCreator;

public final class GameBadgeEntity
extends GamesDowngradeableSafeParcel
implements GameBadge {
    public static final GameBadgeEntityCreator CREATOR = new GameBadgeEntityCreatorCompat();
    private final int BR;
    private int FD;
    private String Nw;
    private String Tr;
    private Uri Vh;

    GameBadgeEntity(int n, int n2, String string, String string2, Uri uri) {
        this.BR = n;
        this.FD = n2;
        this.Nw = string;
        this.Tr = string2;
        this.Vh = uri;
    }

    public GameBadgeEntity(GameBadge gameBadge) {
        this.BR = 1;
        this.FD = gameBadge.getType();
        this.Nw = gameBadge.getTitle();
        this.Tr = gameBadge.getDescription();
        this.Vh = gameBadge.getIconImageUri();
    }

    static int a(GameBadge gameBadge) {
        return n.hashCode(gameBadge.getType(), gameBadge.getTitle(), gameBadge.getDescription(), gameBadge.getIconImageUri());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(GameBadge gameBadge, Object object) {
        boolean bl = true;
        if (!(object instanceof GameBadge)) {
            return false;
        }
        boolean bl2 = bl;
        if (gameBadge == object) return bl2;
        if (!n.equal((object = (GameBadge)object).getType(), gameBadge.getTitle())) return false;
        bl2 = bl;
        if (n.equal(object.getDescription(), gameBadge.getIconImageUri())) return bl2;
        return false;
    }

    static String b(GameBadge gameBadge) {
        return n.h(gameBadge).a("Type", gameBadge.getType()).a("Title", gameBadge.getTitle()).a("Description", gameBadge.getDescription()).a("IconImageUri", gameBadge.getIconImageUri()).toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return GameBadgeEntity.a(this, object);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.ld();
    }

    @Override
    public String getDescription() {
        return this.Tr;
    }

    @Override
    public Uri getIconImageUri() {
        return this.Vh;
    }

    @Override
    public String getTitle() {
        return this.Nw;
    }

    @Override
    public int getType() {
        return this.FD;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return GameBadgeEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public GameBadge ld() {
        return this;
    }

    public String toString() {
        return GameBadgeEntity.b(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (!this.gQ()) {
            GameBadgeEntityCreator.a(this, parcel, n);
            return;
        }
        parcel.writeInt(this.FD);
        parcel.writeString(this.Nw);
        parcel.writeString(this.Tr);
        String string = this.Vh == null ? null : this.Vh.toString();
        parcel.writeString(string);
    }

    static final class GameBadgeEntityCreatorCompat
    extends GameBadgeEntityCreator {
        GameBadgeEntityCreatorCompat() {
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public GameBadgeEntity ch(Parcel object) {
            if (GameBadgeEntity.c(GameBadgeEntity.gP()) || GameBadgeEntity.aV(GameBadgeEntity.class.getCanonicalName())) {
                return super.ch((Parcel)object);
            }
            int n = object.readInt();
            String string = object.readString();
            String string2 = object.readString();
            if ((object = object.readString()) == null) {
                object = null;
                do {
                    return new GameBadgeEntity(1, n, string, string2, (Uri)object);
                    break;
                } while (true);
            }
            object = Uri.parse((String)object);
            return new GameBadgeEntity(1, n, string, string2, (Uri)object);
        }

        @Override
        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return this.ch(parcel);
        }
    }

}

