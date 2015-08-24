/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotEntityCreator;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import java.io.IOException;

public final class SnapshotEntity
implements SafeParcelable,
Snapshot {
    public static final SnapshotEntityCreator CREATOR = new SnapshotEntityCreator();
    private final int BR;
    private final SnapshotMetadataEntity adh;
    private final SnapshotContents adi;

    SnapshotEntity(int n, SnapshotMetadata snapshotMetadata, SnapshotContents snapshotContents) {
        this.BR = n;
        this.adh = new SnapshotMetadataEntity(snapshotMetadata);
        this.adi = snapshotContents;
    }

    public SnapshotEntity(SnapshotMetadata snapshotMetadata, SnapshotContents snapshotContents) {
        this(2, snapshotMetadata, snapshotContents);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean a(Snapshot snapshot, Object object) {
        boolean bl = true;
        if (!(object instanceof Snapshot)) {
            return false;
        }
        boolean bl2 = bl;
        if (snapshot == object) return bl2;
        if (!n.equal((object = (Snapshot)object).getMetadata(), snapshot.getMetadata())) return false;
        bl2 = bl;
        if (n.equal(object.getSnapshotContents(), snapshot.getSnapshotContents())) return bl2;
        return false;
    }

    static int b(Snapshot snapshot) {
        return n.hashCode(snapshot.getMetadata(), snapshot.getSnapshotContents());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static String c(Snapshot snapshot) {
        boolean bl;
        n.a a = n.h(snapshot).a("Metadata", snapshot.getMetadata());
        if (snapshot.getSnapshotContents() != null) {
            bl = true;
            do {
                return a.a("HasContents", bl).toString();
                break;
            } while (true);
        }
        bl = false;
        return a.a("HasContents", bl).toString();
    }

    private boolean isClosed() {
        return this.adi.isClosed();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        return SnapshotEntity.a(this, object);
    }

    @Override
    public Snapshot freeze() {
        return this;
    }

    @Override
    public Contents getContents() {
        if (this.isClosed()) {
            return null;
        }
        return this.adi.getContents();
    }

    @Override
    public SnapshotMetadata getMetadata() {
        return this.adh;
    }

    @Override
    public SnapshotContents getSnapshotContents() {
        if (this.isClosed()) {
            return null;
        }
        return this.adi;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return SnapshotEntity.b(this);
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    @Override
    public boolean modifyBytes(int n, byte[] arrby, int n2, int n3) {
        return this.adi.modifyBytes(n, arrby, n2, n3);
    }

    @Override
    public byte[] readFully() {
        try {
            byte[] arrby = this.adi.readFully();
            return arrby;
        }
        catch (IOException var1_2) {
            throw new RuntimeException(var1_2);
        }
    }

    public String toString() {
        return SnapshotEntity.c(this);
    }

    @Override
    public boolean writeBytes(byte[] arrby) {
        return this.adi.writeBytes(arrby);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        SnapshotEntityCreator.a(this, parcel, n);
    }
}

