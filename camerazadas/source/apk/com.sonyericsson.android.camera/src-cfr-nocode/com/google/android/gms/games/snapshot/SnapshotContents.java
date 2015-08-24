/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.snapshot.SnapshotContentsCreator;
import java.io.IOException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class SnapshotContents
implements SafeParcelable {
    public static final SnapshotContentsCreator CREATOR;
    private static final Object adg;
    private final int BR;
    private Contents Ox;

    static;

    SnapshotContents(int var1, Contents var2);

    public SnapshotContents(Contents var1);

    private boolean a(int var1, byte[] var2, int var3, int var4, boolean var5);

    public void close();

    @Override
    public int describeContents();

    public Contents getContents();

    public ParcelFileDescriptor getParcelFileDescriptor();

    public int getVersionCode();

    public boolean isClosed();

    public boolean modifyBytes(int var1, byte[] var2, int var3, int var4);

    public byte[] readFully() throws IOException;

    public boolean writeBytes(byte[] var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

