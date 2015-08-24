/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.snapshot.SnapshotEntity;

/*
 * Exception performing whole class analysis ignored.
 */
public class SnapshotEntityCreator
implements Parcelable.Creator<SnapshotEntity> {
    public static final int CONTENT_DESCRIPTION = 0;

    public SnapshotEntityCreator();

    static void a(SnapshotEntity var0, Parcel var1, int var2);

    @Override
    public SnapshotEntity createFromParcel(Parcel var1);

    public SnapshotEntity[] newArray(int var1);
}

