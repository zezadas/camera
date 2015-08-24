/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;

/*
 * Exception performing whole class analysis ignored.
 */
public class SnapshotMetadataEntityCreator
implements Parcelable.Creator<SnapshotMetadataEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    public SnapshotMetadataEntityCreator();

    static void a(SnapshotMetadataEntity var0, Parcel var1, int var2);

    @Override
    public SnapshotMetadataEntity createFromParcel(Parcel var1);

    public SnapshotMetadataEntity[] newArray(int var1);
}

