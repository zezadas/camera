/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.internal.game.GameBadge;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import java.util.ArrayList;

public interface ExtendedGame
extends Parcelable,
Freezable<ExtendedGame> {
    public Game getGame();

    public ArrayList<GameBadge> kR();

    public int kS();

    public boolean kT();

    public int kU();

    public long kV();

    public long kW();

    public String kX();

    public long kY();

    public String kZ();

    public SnapshotMetadata la();
}

