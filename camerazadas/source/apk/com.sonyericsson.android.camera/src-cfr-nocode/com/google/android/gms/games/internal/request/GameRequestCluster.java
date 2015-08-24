/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.internal.request.GameRequestClusterCreator;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestEntity;
import java.util.ArrayList;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class GameRequestCluster
implements SafeParcelable,
GameRequest {
    public static final GameRequestClusterCreator CREATOR;
    private final int BR;
    private final ArrayList<GameRequestEntity> abr;

    static;

    GameRequestCluster(int var1, ArrayList<GameRequestEntity> var2);

    private void li();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public GameRequest freeze();

    @Override
    public long getCreationTimestamp();

    @Override
    public byte[] getData();

    @Override
    public long getExpirationTimestamp();

    @Override
    public Game getGame();

    @Override
    public int getRecipientStatus(String var1);

    public /* synthetic */ List getRecipients();

    @Override
    public String getRequestId();

    @Override
    public Player getSender();

    @Override
    public int getStatus();

    @Override
    public int getType();

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isConsumed(String var1);

    @Override
    public boolean isDataValid();

    public ArrayList<GameRequest> lw();

    public ArrayList<Player> lx();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

