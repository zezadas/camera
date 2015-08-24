/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.Snapshots;

public final class SnapshotsImpl
implements Snapshots {
    @Override
    public PendingResult<Snapshots.CommitSnapshotResult> commitAndClose(GoogleApiClient googleApiClient, final Snapshot snapshot, final SnapshotMetadataChange snapshotMetadataChange) {
        return googleApiClient.b(new CommitImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, snapshot, snapshotMetadataChange);
            }
        });
    }

    @Override
    public PendingResult<Snapshots.DeleteSnapshotResult> delete(GoogleApiClient googleApiClient, final SnapshotMetadata snapshotMetadata) {
        return googleApiClient.b(new DeleteImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.j(this, snapshotMetadata.getSnapshotId());
            }
        });
    }

    @Override
    public void discardAndClose(GoogleApiClient googleApiClient, Snapshot snapshot) {
        Games.c(googleApiClient).a(snapshot);
    }

    @Override
    public int getMaxCoverImageSize(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).kv();
    }

    @Override
    public int getMaxDataSize(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).ku();
    }

    @Override
    public Intent getSelectSnapshotIntent(GoogleApiClient googleApiClient, String string, boolean bl, boolean bl2, int n) {
        return Games.c(googleApiClient).a(string, bl, bl2, n);
    }

    @Override
    public SnapshotMetadata getSnapshotFromBundle(Bundle bundle) {
        if (!(bundle != null && bundle.containsKey("com.google.android.gms.games.SNAPSHOT_METADATA"))) {
            return null;
        }
        return (SnapshotMetadata)bundle.getParcelable("com.google.android.gms.games.SNAPSHOT_METADATA");
    }

    @Override
    public PendingResult<Snapshots.LoadSnapshotsResult> load(GoogleApiClient googleApiClient, final boolean bl) {
        return googleApiClient.a(new LoadImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.e(this, bl);
            }
        });
    }

    @Override
    public PendingResult<Snapshots.OpenSnapshotResult> open(GoogleApiClient googleApiClient, SnapshotMetadata snapshotMetadata) {
        return this.open(googleApiClient, snapshotMetadata.getUniqueName(), false);
    }

    @Override
    public PendingResult<Snapshots.OpenSnapshotResult> open(GoogleApiClient googleApiClient, final String string, final boolean bl) {
        return googleApiClient.b(new OpenImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.b(this, string, bl);
            }
        });
    }

    @Override
    public PendingResult<Snapshots.OpenSnapshotResult> resolveConflict(GoogleApiClient googleApiClient, String string, Snapshot snapshot) {
        SnapshotMetadata snapshotMetadata = snapshot.getMetadata();
        SnapshotMetadataChange snapshotMetadataChange = new SnapshotMetadataChange.Builder().fromMetadata(snapshotMetadata).build();
        return this.resolveConflict(googleApiClient, string, snapshotMetadata.getSnapshotId(), snapshotMetadataChange, snapshot.getSnapshotContents());
    }

    @Override
    public PendingResult<Snapshots.OpenSnapshotResult> resolveConflict(GoogleApiClient googleApiClient, final String string, final String string2, final SnapshotMetadataChange snapshotMetadataChange, Contents contents) {
        return googleApiClient.b(new OpenImpl(new SnapshotContents(contents)){
            final /* synthetic */ SnapshotContents ZT;

            @Override
            protected void a(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.a(this, string, string2, snapshotMetadataChange, this.ZT);
            }
        });
    }

    @Override
    public PendingResult<Snapshots.OpenSnapshotResult> resolveConflict(GoogleApiClient googleApiClient, final String string, final String string2, final SnapshotMetadataChange snapshotMetadataChange, final SnapshotContents snapshotContents) {
        return googleApiClient.b(new OpenImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.a(this, string, string2, snapshotMetadataChange, snapshotContents);
            }
        });
    }

    private static abstract class CommitImpl
    extends Games.BaseGamesApiMethodImpl<Snapshots.CommitSnapshotResult> {
        private CommitImpl() {
        }

        public Snapshots.CommitSnapshotResult ao(final Status status) {
            return new Snapshots.CommitSnapshotResult(){

                @Override
                public SnapshotMetadata getSnapshotMetadata() {
                    return null;
                }

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.ao(status);
        }

    }

    private static abstract class DeleteImpl
    extends Games.BaseGamesApiMethodImpl<Snapshots.DeleteSnapshotResult> {
        private DeleteImpl() {
        }

        public Snapshots.DeleteSnapshotResult ap(final Status status) {
            return new Snapshots.DeleteSnapshotResult(){

                @Override
                public String getSnapshotId() {
                    return null;
                }

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.ap(status);
        }

    }

    private static abstract class LoadImpl
    extends Games.BaseGamesApiMethodImpl<Snapshots.LoadSnapshotsResult> {
        private LoadImpl() {
        }

        public Snapshots.LoadSnapshotsResult aq(final Status status) {
            return new Snapshots.LoadSnapshotsResult(){

                @Override
                public SnapshotMetadataBuffer getSnapshots() {
                    return new SnapshotMetadataBuffer(DataHolder.as(14));
                }

                @Override
                public Status getStatus() {
                    return status;
                }

                @Override
                public void release() {
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.aq(status);
        }

    }

    private static abstract class OpenImpl
    extends Games.BaseGamesApiMethodImpl<Snapshots.OpenSnapshotResult> {
        private OpenImpl() {
        }

        public Snapshots.OpenSnapshotResult ar(final Status status) {
            return new Snapshots.OpenSnapshotResult(){

                @Override
                public String getConflictId() {
                    return null;
                }

                @Override
                public Snapshot getConflictingSnapshot() {
                    return null;
                }

                @Override
                public Contents getResolutionContents() {
                    return null;
                }

                @Override
                public SnapshotContents getResolutionSnapshotContents() {
                    return null;
                }

                @Override
                public Snapshot getSnapshot() {
                    return null;
                }

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.ar(status);
        }

    }

}

