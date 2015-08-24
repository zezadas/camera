/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.a;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

@Deprecated
public class Contents
implements SafeParcelable {
    public static final Parcelable.Creator<Contents> CREATOR = new a();
    final int BR;
    final ParcelFileDescriptor KE;
    final int MV;
    final DriveId MW;
    final boolean MX;
    private boolean MY = false;
    private boolean MZ = false;
    private boolean mClosed = false;
    final int uQ;

    Contents(int n, ParcelFileDescriptor parcelFileDescriptor, int n2, int n3, DriveId driveId, boolean bl) {
        this.BR = n;
        this.KE = parcelFileDescriptor;
        this.uQ = n2;
        this.MV = n3;
        this.MW = driveId;
        this.MX = bl;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public DriveId getDriveId() {
        return this.MW;
    }

    public InputStream getInputStream() {
        if (this.mClosed) {
            throw new IllegalStateException("Contents have been closed, cannot access the input stream.");
        }
        if (this.MV != 268435456) {
            throw new IllegalStateException("getInputStream() can only be used with contents opened with MODE_READ_ONLY.");
        }
        if (this.MY) {
            throw new IllegalStateException("getInputStream() can only be called once per Contents instance.");
        }
        this.MY = true;
        return new FileInputStream(this.KE.getFileDescriptor());
    }

    public int getMode() {
        return this.MV;
    }

    public OutputStream getOutputStream() {
        if (this.mClosed) {
            throw new IllegalStateException("Contents have been closed, cannot access the output stream.");
        }
        if (this.MV != 536870912) {
            throw new IllegalStateException("getOutputStream() can only be used with contents opened with MODE_WRITE_ONLY.");
        }
        if (this.MZ) {
            throw new IllegalStateException("getOutputStream() can only be called once per Contents instance.");
        }
        this.MZ = true;
        return new FileOutputStream(this.KE.getFileDescriptor());
    }

    public ParcelFileDescriptor getParcelFileDescriptor() {
        if (this.mClosed) {
            throw new IllegalStateException("Contents have been closed, cannot access the output stream.");
        }
        return this.KE;
    }

    public int getRequestId() {
        return this.uQ;
    }

    public void hJ() {
        this.mClosed = true;
    }

    public boolean hK() {
        return this.mClosed;
    }

    public boolean hL() {
        return this.MX;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n);
    }
}

