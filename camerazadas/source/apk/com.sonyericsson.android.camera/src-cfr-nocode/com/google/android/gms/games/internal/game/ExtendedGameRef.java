/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.internal.game.ExtendedGame;
import com.google.android.gms.games.internal.game.GameBadge;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataRef;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
public class ExtendedGameRef
extends d
implements ExtendedGame {
    private final SnapshotMetadataRef aaJ;
    private final int aaK;
    private final GameRef aax;

    ExtendedGameRef(DataHolder var1, int var2, int var3);

    @Override
    public int describeContents();

    @Override
    public boolean equals(Object var1);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public Game getGame();

    @Override
    public int hashCode();

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

    public ExtendedGame lc();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

