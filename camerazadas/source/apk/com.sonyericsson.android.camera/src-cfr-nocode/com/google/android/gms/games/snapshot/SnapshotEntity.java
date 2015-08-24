/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotEntityCreator;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class SnapshotEntity
implements SafeParcelable,
Snapshot {
    public static final SnapshotEntityCreator CREATOR;
    private final int BR;
    private final SnapshotMetadataEntity adh;
    private final SnapshotContents adi;

    static;

    SnapshotEntity(int var1, SnapshotMetadata var2, SnapshotContents var3);

    public SnapshotEntity(SnapshotMetadata var1, SnapshotContents var2);

    static boolean a(Snapshot var0, Object var1);

    static int b(Snapshot var0);

    static String c(Snapshot var0);

    private boolean isClosed();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public Snapshot freeze();

    @Override
    public Contents getContents();

    @Override
    public SnapshotMetadata getMetadata();

    @Override
    public SnapshotContents getSnapshotContents();

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isDataValid();

    @Override
    public boolean modifyBytes(int var1, byte[] var2, int var3, int var4);

    @Override
    public byte[] readFully();

    public String toString();

    @Override
    public boolean writeBytes(byte[] var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

