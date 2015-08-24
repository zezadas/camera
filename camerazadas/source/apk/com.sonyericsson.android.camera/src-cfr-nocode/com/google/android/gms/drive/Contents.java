/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import java.io.InputStream;
import java.io.OutputStream;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@Deprecated
public class Contents
implements SafeParcelable {
    public static final Parcelable.Creator<Contents> CREATOR;
    final int BR;
    final ParcelFileDescriptor KE;
    final int MV;
    final DriveId MW;
    final boolean MX;
    private boolean MY;
    private boolean MZ;
    private boolean mClosed;
    final int uQ;

    static;

    Contents(int var1, ParcelFileDescriptor var2, int var3, int var4, DriveId var5, boolean var6);

    @Override
    public int describeContents();

    public DriveId getDriveId();

    public InputStream getInputStream();

    public int getMode();

    public OutputStream getOutputStream();

    public ParcelFileDescriptor getParcelFileDescriptor();

    public int getRequestId();

    public void hJ();

    public boolean hK();

    public boolean hL();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

