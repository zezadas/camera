/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.Snapshots;

/*
 * Exception performing whole class analysis ignored.
 */
public final class SnapshotsImpl
implements Snapshots {
    public SnapshotsImpl();

    @Override
    public PendingResult<Snapshots.CommitSnapshotResult> commitAndClose(GoogleApiClient var1, Snapshot var2, SnapshotMetadataChange var3);

    @Override
    public PendingResult<Snapshots.DeleteSnapshotResult> delete(GoogleApiClient var1, SnapshotMetadata var2);

    @Override
    public void discardAndClose(GoogleApiClient var1, Snapshot var2);

    @Override
    public int getMaxCoverImageSize(GoogleApiClient var1);

    @Override
    public int getMaxDataSize(GoogleApiClient var1);

    @Override
    public Intent getSelectSnapshotIntent(GoogleApiClient var1, String var2, boolean var3, boolean var4, int var5);

    @Override
    public SnapshotMetadata getSnapshotFromBundle(Bundle var1);

    @Override
    public PendingResult<Snapshots.LoadSnapshotsResult> load(GoogleApiClient var1, boolean var2);

    @Override
    public PendingResult<Snapshots.OpenSnapshotResult> open(GoogleApiClient var1, SnapshotMetadata var2);

    @Override
    public PendingResult<Snapshots.OpenSnapshotResult> open(GoogleApiClient var1, String var2, boolean var3);

    @Override
    public PendingResult<Snapshots.OpenSnapshotResult> resolveConflict(GoogleApiClient var1, String var2, Snapshot var3);

    @Override
    public PendingResult<Snapshots.OpenSnapshotResult> resolveConflict(GoogleApiClient var1, String var2, String var3, SnapshotMetadataChange var4, Contents var5);

    @Override
    public PendingResult<Snapshots.OpenSnapshotResult> resolveConflict(GoogleApiClient var1, String var2, String var3, SnapshotMetadataChange var4, SnapshotContents var5);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class CommitImpl
    extends Games.BaseGamesApiMethodImpl<Snapshots.CommitSnapshotResult> {
        private CommitImpl();

        /* synthetic */ CommitImpl(com.google.android.gms.games.internal.api.SnapshotsImpl$1 var1);

        public Snapshots.CommitSnapshotResult ao(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class DeleteImpl
    extends Games.BaseGamesApiMethodImpl<Snapshots.DeleteSnapshotResult> {
        private DeleteImpl();

        /* synthetic */ DeleteImpl(com.google.android.gms.games.internal.api.SnapshotsImpl$1 var1);

        public Snapshots.DeleteSnapshotResult ap(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadImpl
    extends Games.BaseGamesApiMethodImpl<Snapshots.LoadSnapshotsResult> {
        private LoadImpl();

        /* synthetic */ LoadImpl(com.google.android.gms.games.internal.api.SnapshotsImpl$1 var1);

        public Snapshots.LoadSnapshotsResult aq(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class OpenImpl
    extends Games.BaseGamesApiMethodImpl<Snapshots.OpenSnapshotResult> {
        private OpenImpl();

        /* synthetic */ OpenImpl(com.google.android.gms.games.internal.api.SnapshotsImpl$1 var1);

        public Snapshots.OpenSnapshotResult ar(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

}

