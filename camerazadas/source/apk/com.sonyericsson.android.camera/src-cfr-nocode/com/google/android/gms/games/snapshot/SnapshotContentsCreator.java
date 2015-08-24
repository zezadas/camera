/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.snapshot.SnapshotContents;

/*
 * Exception performing whole class analysis ignored.
 */
public class SnapshotContentsCreator
implements Parcelable.Creator<SnapshotContents> {
    public static final int CONTENT_DESCRIPTION = 0;

    public SnapshotContentsCreator();

    static void a(SnapshotContents var0, Parcel var1, int var2);

    @Override
    public SnapshotContents createFromParcel(Parcel var1);

    public SnapshotContents[] newArray(int var1);
}

