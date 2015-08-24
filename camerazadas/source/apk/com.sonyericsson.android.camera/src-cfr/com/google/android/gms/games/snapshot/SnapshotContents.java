/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.internal.GamesLog;
import com.google.android.gms.games.snapshot.SnapshotContentsCreator;
import com.google.android.gms.internal.jy;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.FileChannel;

public final class SnapshotContents
implements SafeParcelable {
    public static final SnapshotContentsCreator CREATOR;
    private static final Object adg;
    private final int BR;
    private Contents Ox;

    static {
        adg = new Object();
        CREATOR = new SnapshotContentsCreator();
    }

    SnapshotContents(int n, Contents contents) {
        this.BR = n;
        this.Ox = contents;
    }

    public SnapshotContents(Contents contents) {
        this(1, contents);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private boolean a(int n, byte[] arrby, int n2, int n3, boolean bl) {
        boolean bl2 = !this.isClosed();
        o.a(bl2, "Must provide a previously opened SnapshotContents");
        Object object = adg;
        synchronized (object) {
            Closeable closeable = new FileOutputStream(this.Ox.getParcelFileDescriptor().getFileDescriptor());
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream((OutputStream)closeable);
            try {
                closeable = closeable.getChannel();
                closeable.position(n);
                bufferedOutputStream.write(arrby, n2, n3);
                if (bl) {
                    closeable.truncate(arrby.length);
                }
                bufferedOutputStream.flush();
                return true;
            }
            catch (IOException var2_3) {
                GamesLog.a("SnapshotContents", "Failed to write snapshot data", var2_3);
                return false;
            }
        }
    }

    public void close() {
        this.Ox.hJ();
        this.Ox = null;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Contents getContents() {
        return this.Ox;
    }

    /*
     * Enabled aggressive block sorting
     */
    public ParcelFileDescriptor getParcelFileDescriptor() {
        boolean bl = !this.isClosed();
        o.a(bl, "Cannot mutate closed contents!");
        return this.Ox.getParcelFileDescriptor();
    }

    public int getVersionCode() {
        return this.BR;
    }

    public boolean isClosed() {
        if (this.Ox == null) {
            return true;
        }
        return false;
    }

    public boolean modifyBytes(int n, byte[] arrby, int n2, int n3) {
        return this.a(n, arrby, n2, arrby.length, false);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public byte[] readFully() throws IOException {
        boolean bl = false;
        if (!this.isClosed()) {
            bl = true;
        }
        o.a(bl, "Must provide a previously opened Snapshot");
        Object object = adg;
        synchronized (object) {
            FileInputStream fileInputStream = new FileInputStream(this.Ox.getParcelFileDescriptor().getFileDescriptor());
            BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
            try {
                fileInputStream.getChannel().position(0);
                bufferedInputStream = (BufferedInputStream)jy.a(bufferedInputStream, false);
                fileInputStream.getChannel().position(0);
                return bufferedInputStream;
            }
            catch (IOException var3_4) {
                GamesLog.b("SnapshotContents", "Failed to read snapshot data", var3_4);
                throw var3_4;
            }
        }
    }

    public boolean writeBytes(byte[] arrby) {
        return this.a(0, arrby, 0, arrby.length, true);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        SnapshotContentsCreator.a(this, parcel, n);
    }
}

