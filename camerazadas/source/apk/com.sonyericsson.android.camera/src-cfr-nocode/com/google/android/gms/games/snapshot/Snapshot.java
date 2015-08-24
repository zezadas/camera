/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotMetadata;

public interface Snapshot
extends Parcelable,
Freezable<Snapshot> {
    @Deprecated
    public Contents getContents();

    public SnapshotMetadata getMetadata();

    public SnapshotContents getSnapshotContents();

    @Deprecated
    public boolean modifyBytes(int var1, byte[] var2, int var3, int var4);

    @Deprecated
    public byte[] readFully();

    @Deprecated
    public boolean writeBytes(byte[] var1);
}

