/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.DriveEvent;
import java.util.Set;

public interface DriveResource {
    public PendingResult<Status> addChangeListener(GoogleApiClient var1, ChangeListener var2);

    @Deprecated
    public PendingResult<Status> addChangeListener(GoogleApiClient var1, DriveEvent.Listener<ChangeEvent> var2);

    public PendingResult<Status> addChangeSubscription(GoogleApiClient var1);

    public DriveId getDriveId();

    public PendingResult<MetadataResult> getMetadata(GoogleApiClient var1);

    public PendingResult<DriveApi.MetadataBufferResult> listParents(GoogleApiClient var1);

    public PendingResult<Status> removeChangeListener(GoogleApiClient var1, ChangeListener var2);

    @Deprecated
    public PendingResult<Status> removeChangeListener(GoogleApiClient var1, DriveEvent.Listener<ChangeEvent> var2);

    public PendingResult<Status> removeChangeSubscription(GoogleApiClient var1);

    public PendingResult<Status> setParents(GoogleApiClient var1, Set<DriveId> var2);

    public PendingResult<MetadataResult> updateMetadata(GoogleApiClient var1, MetadataChangeSet var2);

    public static interface MetadataResult
    extends Result {
        public Metadata getMetadata();
    }

}

