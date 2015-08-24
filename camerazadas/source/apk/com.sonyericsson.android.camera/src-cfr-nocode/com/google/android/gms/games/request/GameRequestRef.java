/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.request;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.request.GameRequest;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public final class GameRequestRef
extends d
implements GameRequest {
    private final int aaK;

    public GameRequestRef(DataHolder var1, int var2, int var3);

    @Override
    public int describeContents();

    @Override
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

    @Override
    public List<Player> getRecipients();

    @Override
    public String getRequestId();

    @Override
    public Player getSender();

    @Override
    public int getStatus();

    @Override
    public int getType();

    @Override
    public int hashCode();

    @Override
    public boolean isConsumed(String var1);

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

