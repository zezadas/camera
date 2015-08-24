/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestEntityCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public final class GameRequestEntity
implements SafeParcelable,
GameRequest {
    public static final GameRequestEntityCreator CREATOR = new GameRequestEntityCreator();
    private final int BR;
    private final int FD;
    private final int Fa;
    private final String XC;
    private final GameEntity aay;
    private final long abZ;
    private final byte[] acH;
    private final PlayerEntity adc;
    private final ArrayList<PlayerEntity> add;
    private final long ade;
    private final Bundle adf;

    GameRequestEntity(int n, GameEntity gameEntity, PlayerEntity playerEntity, byte[] arrby, String string, ArrayList<PlayerEntity> arrayList, int n2, long l, long l2, Bundle bundle, int n3) {
        this.BR = n;
        this.aay = gameEntity;
        this.adc = playerEntity;
        this.acH = arrby;
        this.XC = string;
        this.add = arrayList;
        this.FD = n2;
        this.abZ = l;
        this.ade = l2;
        this.adf = bundle;
        this.Fa = n3;
    }

    /*
     * Enabled aggressive block sorting
     */
    public GameRequestEntity(GameRequest gameRequest) {
        this.BR = 2;
        this.aay = new GameEntity(gameRequest.getGame());
        this.adc = new PlayerEntity(gameRequest.getSender());
        this.XC = gameRequest.getRequestId();
        this.FD = gameRequest.getType();
        this.abZ = gameRequest.getCreationTimestamp();
        this.ade = gameRequest.getExpirationTimestamp();
        this.Fa = gameRequest.getStatus();
        Object object = gameRequest.getData();
        if (object == null) {
            this.acH = null;
        } else {
            this.acH = new byte[object.length];
            System.arraycopy(object, 0, this.acH, 0, object.length);
        }
        object = gameRequest.getRecipients();
        int n = object.size();
        this.add = new ArrayList(n);
        this.adf = new Bundle();
        for (int i = 0; i < n; ++i) {
            Player player = (Player)((Player)object.get(i)).freeze();
            String string = player.getPlayerId();
            this.add.add((PlayerEntity)player);
            this.adf.putInt(string, gameRequest.getRecipientStatus(string));
        }
    }

    static int a(GameRequest gameRequest) {
        return n.hashCode(gameRequest.getGame(), gameRequest.getRecipients(), gameRequest.getRequestId(), gameRequest.getSender(), GameRequestEntity.b(gameRequest), gameRequest.getType(), gameRequest.getCreationTimestamp(), gameRequest.getExpirationTimestamp());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(GameRequest gameRequest, Object object) {
        boolean bl = true;
        if (!(object instanceof GameRequest)) {
            return false;
        }
        boolean bl2 = bl;
        if (gameRequest == object) return bl2;
        if (!n.equal((object = (GameRequest)object).getGame(), gameRequest.getGame())) return false;
        if (!n.equal(object.getRecipients(), gameRequest.getRecipients())) return false;
        if (!n.equal(object.getRequestId(), gameRequest.getRequestId())) return false;
        if (!n.equal(object.getSender(), gameRequest.getSender())) return false;
        if (!Arrays.equals(GameRequestEntity.b((GameRequest)object), GameRequestEntity.b(gameRequest))) return false;
        if (!n.equal(object.getType(), gameRequest.getType())) return false;
        if (!n.equal(object.getCreationTimestamp(), gameRequest.getCreationTimestamp())) return false;
        bl2 = bl;
        if (n.equal(object.getExpirationTimestamp(), gameRequest.getExpirationTimestamp())) return bl2;
        return false;
    }

    private static int[] b(GameRequest gameRequest) {
        List<Player> list = gameRequest.getRecipients();
        int n = list.size();
        int[] arrn = new int[n];
        for (int i = 0; i < n; ++i) {
            arrn[i] = gameRequest.getRecipientStatus(list.get(i).getPlayerId());
        }
        return arrn;
    }

    static String c(GameRequest gameRequest) {
        return n.h(gameRequest).a("Game", gameRequest.getGame()).a("Sender", gameRequest.getSender()).a("Recipients", gameRequest.getRecipients()).a("Data", gameRequest.getData()).a("RequestId", gameRequest.getRequestId()).a("Type", gameRequest.getType()).a("CreationTimestamp", gameRequest.getCreationTimestamp()).a("ExpirationTimestamp", gameRequest.getExpirationTimestamp()).toString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return GameRequestEntity.a(this, object);
    }

    @Override
    public GameRequest freeze() {
        return this;
    }

    @Override
    public long getCreationTimestamp() {
        return this.abZ;
    }

    @Override
    public byte[] getData() {
        return this.acH;
    }

    @Override
    public long getExpirationTimestamp() {
        return this.ade;
    }

    @Override
    public Game getGame() {
        return this.aay;
    }

    @Override
    public int getRecipientStatus(String string) {
        return this.adf.getInt(string, 0);
    }

    @Override
    public List<Player> getRecipients() {
        return new ArrayList<Player>(this.add);
    }

    @Override
    public String getRequestId() {
        return this.XC;
    }

    @Override
    public Player getSender() {
        return this.adc;
    }

    @Override
    public int getStatus() {
        return this.Fa;
    }

    @Override
    public int getType() {
        return this.FD;
    }

    public int getVersionCode() {
        return this.BR;
    }

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

    @Override
    public boolean isDataValid() {
        return true;
    }

    public Bundle lL() {
        return this.adf;
    }

    public String toString() {
        return GameRequestEntity.c(this);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        GameRequestEntityCreator.a(this, parcel, n);
    }
}

