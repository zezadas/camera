/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.game.ExtendedGame;
import com.google.android.gms.games.internal.game.ExtendedGameEntityCreator;
import com.google.android.gms.games.internal.game.GameBadge;
import com.google.android.gms.games.internal.game.GameBadgeEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ExtendedGameEntity
extends GamesDowngradeableSafeParcel
implements ExtendedGame {
    public static final ExtendedGameEntityCreator CREATOR;
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

    static;

    ExtendedGameEntity(int var1, GameEntity var2, int var3, boolean var4, int var5, long var6, long var8, String var10, long var11, String var13, ArrayList<GameBadgeEntity> var14, SnapshotMetadataEntity var15);

    public ExtendedGameEntity(ExtendedGame var1);

    static int a(ExtendedGame var0);

    static boolean a(ExtendedGame var0, Object var1);

    static String b(ExtendedGame var0);

    static /* synthetic */ boolean b(Integer var0);

    static /* synthetic */ boolean bw(String var0);

    static /* synthetic */ Integer jT();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public /* synthetic */ Game getGame();

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isDataValid();

    @Override
    public ArrayList<GameBadge> kR();

    @Override
    public int kS();

    @Override
    public boolean kT();

    @Override
    public int kU();

    @Override
    public long kV();

    @Override
    public long kW();

    @Override
    public String kX();

    @Override
    public long kY();

    @Override
    public String kZ();

    @Override
    public SnapshotMetadata la();

    public GameEntity lb();

    public ExtendedGame lc();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis ignored.
     */
    static final class ExtendedGameEntityCreatorCompat
    extends ExtendedGameEntityCreator {
        ExtendedGameEntityCreatorCompat();

        @Override
        public ExtendedGameEntity cg(Parcel var1);

        @Override
        public /* synthetic */ Object createFromParcel(Parcel var1);
    }

}

