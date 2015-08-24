/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestEntityCreator;
import java.util.ArrayList;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class GameRequestEntity
implements SafeParcelable,
GameRequest {
    public static final GameRequestEntityCreator CREATOR;
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

    static;

    GameRequestEntity(int var1, GameEntity var2, PlayerEntity var3, byte[] var4, String var5, ArrayList<PlayerEntity> var6, int var7, long var8, long var10, Bundle var12, int var13);

    public GameRequestEntity(GameRequest var1);

    static int a(GameRequest var0);

    static boolean a(GameRequest var0, Object var1);

    private static int[] b(GameRequest var0);

    static String c(GameRequest var0);

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

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isConsumed(String var1);

    @Override
    public boolean isDataValid();

    public Bundle lL();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

