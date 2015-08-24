/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;

public interface Snapshots {
    public static final int DISPLAY_LIMIT_NONE = -1;
    public static final String EXTRA_SNAPSHOT_METADATA = "com.google.android.gms.games.SNAPSHOT_METADATA";
    public static final String EXTRA_SNAPSHOT_NEW = "com.google.android.gms.games.SNAPSHOT_NEW";

    public PendingResult<CommitSnapshotResult> commitAndClose(GoogleApiClient var1, Snapshot var2, SnapshotMetadataChange var3);

    public PendingResult<DeleteSnapshotResult> delete(GoogleApiClient var1, SnapshotMetadata var2);

    public void discardAndClose(GoogleApiClient var1, Snapshot var2);

    public int getMaxCoverImageSize(GoogleApiClient var1);

    public int getMaxDataSize(GoogleApiClient var1);

    public Intent getSelectSnapshotIntent(GoogleApiClient var1, String var2, boolean var3, boolean var4, int var5);

    public SnapshotMetadata getSnapshotFromBundle(Bundle var1);

    public PendingResult<LoadSnapshotsResult> load(GoogleApiClient var1, boolean var2);

    public PendingResult<OpenSnapshotResult> open(GoogleApiClient var1, SnapshotMetadata var2);

    public PendingResult<OpenSnapshotResult> open(GoogleApiClient var1, String var2, boolean var3);

    public PendingResult<OpenSnapshotResult> resolveConflict(GoogleApiClient var1, String var2, Snapshot var3);

    @Deprecated
    public PendingResult<OpenSnapshotResult> resolveConflict(GoogleApiClient var1, String var2, String var3, SnapshotMetadataChange var4, Contents var5);

    public PendingResult<OpenSnapshotResult> resolveConflict(GoogleApiClient var1, String var2, String var3, SnapshotMetadataChange var4, SnapshotContents var5);

    public static interface CommitSnapshotResult
    extends Result {
        public SnapshotMetadata getSnapshotMetadata();
    }

    public static interface DeleteSnapshotResult
    extends Result {
        public String getSnapshotId();
    }

    public static interface LoadSnapshotsResult
    extends Releasable,
    Result {
        public SnapshotMetadataBuffer getSnapshots();
    }

    public static interface OpenSnapshotResult
    extends Result {
        public String getConflictId();

        public Snapshot getConflictingSnapshot();

        @Deprecated
        public Contents getResolutionContents();

        public SnapshotContents getResolutionSnapshotContents();

        public Snapshot getSnapshot();
    }

}

