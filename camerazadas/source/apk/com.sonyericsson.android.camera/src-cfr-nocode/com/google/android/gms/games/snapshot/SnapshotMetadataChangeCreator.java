/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;

/*
 * Exception performing whole class analysis ignored.
 */
public class SnapshotMetadataChangeCreator
implements Parcelable.Creator<SnapshotMetadataChange> {
    public static final int CONTENT_DESCRIPTION = 0;

    public SnapshotMetadataChangeCreator();

    static void a(SnapshotMetadataChange var0, Parcel var1, int var2);

    @Override
    public SnapshotMetadataChange createFromParcel(Parcel var1);

    public SnapshotMetadataChange[] newArray(int var1);
}

