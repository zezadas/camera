/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.internal.request.GameRequestClusterCreator;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestEntity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class GameRequestCluster
implements SafeParcelable,
GameRequest {
    public static final GameRequestClusterCreator CREATOR = new GameRequestClusterCreator();
    private final int BR;
    private final ArrayList<GameRequestEntity> abr;

    GameRequestCluster(int n, ArrayList<GameRequestEntity> arrayList) {
        this.BR = n;
        this.abr = arrayList;
        this.li();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void li() {
        boolean bl = !this.abr.isEmpty();
        a.I(bl);
        GameRequest gameRequest = this.abr.get(0);
        int n = this.abr.size();
        for (int i = 1; i < n; ++i) {
            GameRequest gameRequest2 = this.abr.get(i);
            bl = gameRequest.getType() == gameRequest2.getType();
            a.a(bl, "All the requests must be of the same type");
            a.a(gameRequest.getSender().equals(gameRequest2.getSender()), "All the requests must be from the same sender");
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (!(object instanceof GameRequestCluster)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        object = (GameRequestCluster)object;
        if (object.abr.size() != this.abr.size()) {
            return false;
        }
        int n = this.abr.size();
        for (int i = 0; i < n; ++i) {
            if (((GameRequest)this.abr.get(i)).equals(object.abr.get(i))) continue;
            return false;
        }
        return true;
    }

    @Override
    public GameRequest freeze() {
        return this;
    }

    @Override
    public long getCreationTimestamp() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override
    public byte[] getData() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override
    public long getExpirationTimestamp() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override
    public Game getGame() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override
    public int getRecipientStatus(String string) {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public /* synthetic */ List getRecipients() {
        return this.lx();
    }

    @Override
    public String getRequestId() {
        return this.abr.get(0).getRequestId();
    }

    @Override
    public Player getSender() {
        return this.abr.get(0).getSender();
    }

    @Override
    public int getStatus() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override
    public int getType() {
        return this.abr.get(0).getType();
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.abr.toArray());
    }

    @Override
    public boolean isConsumed(String string) {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public ArrayList<GameRequest> lw() {
        return new ArrayList<GameRequest>(this.abr);
    }

    public ArrayList<Player> lx() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        GameRequestClusterCreator.a(this, parcel, n);
    }
}

