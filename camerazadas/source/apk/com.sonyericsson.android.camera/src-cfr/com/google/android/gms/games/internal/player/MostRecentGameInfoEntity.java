/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntityCreator;

public final class MostRecentGameInfoEntity
implements SafeParcelable,
MostRecentGameInfo {
    public static final MostRecentGameInfoEntityCreator CREATOR = new MostRecentGameInfoEntityCreator();
    private final int BR;
    private final String aaM;
    private final String aaN;
    private final long aaO;
    private final Uri aaP;
    private final Uri aaQ;
    private final Uri aaR;

    MostRecentGameInfoEntity(int n, String string, String string2, long l, Uri uri, Uri uri2, Uri uri3) {
        this.BR = n;
        this.aaM = string;
        this.aaN = string2;
        this.aaO = l;
        this.aaP = uri;
        this.aaQ = uri2;
        this.aaR = uri3;
    }

    public MostRecentGameInfoEntity(MostRecentGameInfo mostRecentGameInfo) {
        this.BR = 2;
        this.aaM = mostRecentGameInfo.lp();
        this.aaN = mostRecentGameInfo.lq();
        this.aaO = mostRecentGameInfo.lr();
        this.aaP = mostRecentGameInfo.ls();
        this.aaQ = mostRecentGameInfo.lt();
        this.aaR = mostRecentGameInfo.lu();
    }

    static int a(MostRecentGameInfo mostRecentGameInfo) {
        return n.hashCode(mostRecentGameInfo.lp(), mostRecentGameInfo.lq(), mostRecentGameInfo.lr(), mostRecentGameInfo.ls(), mostRecentGameInfo.lt(), mostRecentGameInfo.lu());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(MostRecentGameInfo mostRecentGameInfo, Object object) {
        boolean bl = true;
        if (!(object instanceof MostRecentGameInfo)) {
            return false;
        }
        boolean bl2 = bl;
        if (mostRecentGameInfo == object) return bl2;
        if (!n.equal((object = (MostRecentGameInfo)object).lp(), mostRecentGameInfo.lp())) return false;
        if (!n.equal(object.lq(), mostRecentGameInfo.lq())) return false;
        if (!n.equal(object.lr(), mostRecentGameInfo.lr())) return false;
        if (!n.equal(object.ls(), mostRecentGameInfo.ls())) return false;
        if (!n.equal(object.lt(), mostRecentGameInfo.lt())) return false;
        bl2 = bl;
        if (n.equal(object.lu(), mostRecentGameInfo.lu())) return bl2;
        return false;
    }

    static String b(MostRecentGameInfo mostRecentGameInfo) {
        return n.h(mostRecentGameInfo).a("GameId", mostRecentGameInfo.lp()).a("GameName", mostRecentGameInfo.lq()).a("ActivityTimestampMillis", mostRecentGameInfo.lr()).a("GameIconUri", mostRecentGameInfo.ls()).a("GameHiResUri", mostRecentGameInfo.lt()).a("GameFeaturedUri", mostRecentGameInfo.lu()).toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return MostRecentGameInfoEntity.a(this, object);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.lv();
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return MostRecentGameInfoEntity.a(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    @Override
    public String lp() {
        return this.aaM;
    }

    @Override
    public String lq() {
        return this.aaN;
    }

    @Override
    public long lr() {
        return this.aaO;
    }

    @Override
    public Uri ls() {
        return this.aaP;
    }

    @Override
    public Uri lt() {
        return this.aaQ;
    }

    @Override
    public Uri lu() {
        return this.aaR;
    }

    public MostRecentGameInfo lv() {
        return this;
    }

    public String toString() {
        return MostRecentGameInfoEntity.b(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        MostRecentGameInfoEntityCreator.a(this, parcel, n);
    }
}

