/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.events;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.events.ResourceEvent;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class CompletionEvent
implements SafeParcelable,
ResourceEvent {
    public static final Parcelable.Creator<CompletionEvent> CREATOR;
    public static final int STATUS_CONFLICT = 2;
    public static final int STATUS_FAILURE = 1;
    public static final int STATUS_SUCCESS = 0;
    final int BR;
    final String Dd;
    final int Fa;
    final DriveId MW;
    final ParcelFileDescriptor NN;
    final ParcelFileDescriptor NO;
    final MetadataBundle NP;
    final ArrayList<String> NQ;
    final IBinder NR;
    private boolean NS;
    private boolean NT;
    private boolean NU;

    static;

    CompletionEvent(int var1, DriveId var2, String var3, ParcelFileDescriptor var4, ParcelFileDescriptor var5, MetadataBundle var6, ArrayList<String> var7, int var8, IBinder var9);

    private void L(boolean var1);

    private void hU();

    @Override
    public int describeContents();

    public void dismiss();

    public String getAccountName();

    public InputStream getBaseContentsInputStream();

    @Override
    public DriveId getDriveId();

    public InputStream getModifiedContentsInputStream();

    public MetadataChangeSet getModifiedMetadataChangeSet();

    public int getStatus();

    public List<String> getTrackingTags();

    @Override
    public int getType();

    public void snooze();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

