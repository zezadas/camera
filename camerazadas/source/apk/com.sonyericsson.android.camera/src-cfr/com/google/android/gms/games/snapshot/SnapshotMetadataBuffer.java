/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataRef;

public final class SnapshotMetadataBuffer
extends DataBuffer<SnapshotMetadata> {
    public SnapshotMetadataBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override
    public SnapshotMetadata get(int n) {
        return new SnapshotMetadataRef(this.II, n);
    }
}

