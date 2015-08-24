/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.turnbased;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchEntityCreator;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class TurnBasedMatchEntity
implements SafeParcelable,
TurnBasedMatch {
    public static final TurnBasedMatchEntityCreator CREATOR;
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

    static;

    TurnBasedMatchEntity(int var1, GameEntity var2, String var3, String var4, long var5, String var7, long var8, String var10, int var11, int var12, int var13, byte[] var14, ArrayList<ParticipantEntity> var15, String var16, byte[] var17, int var18, Bundle var19, int var20, boolean var21, String var22, String var23);

    public TurnBasedMatchEntity(TurnBasedMatch var1);

    static int a(TurnBasedMatch var0);

    static int a(TurnBasedMatch var0, String var1);

    static boolean a(TurnBasedMatch var0, Object var1);

    static String b(TurnBasedMatch var0);

    static String b(TurnBasedMatch var0, String var1);

    static Participant c(TurnBasedMatch var0, String var1);

    static ArrayList<String> c(TurnBasedMatch var0);

    @Override
    public boolean canRematch();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public TurnBasedMatch freeze();

    @Override
    public Bundle getAutoMatchCriteria();

    @Override
    public int getAvailableAutoMatchSlots();

    @Override
    public long getCreationTimestamp();

    @Override
    public String getCreatorId();

    @Override
    public byte[] getData();

    @Override
    public String getDescription();

    @Override
    public void getDescription(CharArrayBuffer var1);

    @Override
    public Participant getDescriptionParticipant();

    @Override
    public String getDescriptionParticipantId();

    @Override
    public Game getGame();

    @Override
    public long getLastUpdatedTimestamp();

    @Override
    public String getLastUpdaterId();

    @Override
    public String getMatchId();

    @Override
    public int getMatchNumber();

    @Override
    public Participant getParticipant(String var1);

    @Override
    public String getParticipantId(String var1);

    @Override
    public ArrayList<String> getParticipantIds();

    @Override
    public int getParticipantStatus(String var1);

    @Override
    public ArrayList<Participant> getParticipants();

    @Override
    public String getPendingParticipantId();

    @Override
    public byte[] getPreviousMatchData();

    @Override
    public String getRematchId();

    @Override
    public int getStatus();

    @Override
    public int getTurnStatus();

    @Override
    public int getVariant();

    @Override
    public int getVersion();

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isDataValid();

    @Override
    public boolean isLocallyModified();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

