/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.events;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.events.ResourceEvent;
import com.google.android.gms.drive.events.b;
import com.google.android.gms.drive.internal.ae;
import com.google.android.gms.drive.internal.v;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.jy;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;

public final class CompletionEvent
implements SafeParcelable,
ResourceEvent {
    public static final Parcelable.Creator<CompletionEvent> CREATOR = new b();
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
    private boolean NS = false;
    private boolean NT = false;
    private boolean NU = false;

    CompletionEvent(int n, DriveId driveId, String string, ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, MetadataBundle metadataBundle, ArrayList<String> arrayList, int n2, IBinder iBinder) {
        this.BR = n;
        this.MW = driveId;
        this.Dd = string;
        this.NN = parcelFileDescriptor;
        this.NO = parcelFileDescriptor2;
        this.NP = metadataBundle;
        this.NQ = arrayList;
        this.Fa = n2;
        this.NR = iBinder;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void L(boolean bl) {
        this.hU();
        this.NU = true;
        jy.a(this.NN);
        jy.a(this.NO);
        if (this.NR == null) {
            StringBuilder stringBuilder = new StringBuilder().append("No callback on ");
            String string = bl ? "snooze" : "dismiss";
            v.q("CompletionEvent", stringBuilder.append(string).toString());
            return;
        }
        try {
            ae.a.X(this.NR).L(bl);
            return;
        }
        catch (RemoteException var3_3) {
            StringBuilder stringBuilder = new StringBuilder().append("RemoteException on ");
            String string = bl ? "snooze" : "dismiss";
            v.q("CompletionEvent", stringBuilder.append(string).append(": ").append(var3_3).toString());
            return;
        }
    }

    private void hU() {
        if (this.NU) {
            throw new IllegalStateException("Event has already been dismissed or snoozed.");
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public void dismiss() {
        this.L(false);
    }

    public String getAccountName() {
        this.hU();
        return this.Dd;
    }

    public InputStream getBaseContentsInputStream() {
        this.hU();
        if (this.NN == null) {
            return null;
        }
        if (this.NS) {
            throw new IllegalStateException("getBaseInputStream() can only be called once per CompletionEvent instance.");
        }
        this.NS = true;
        return new FileInputStream(this.NN.getFileDescriptor());
    }

    @Override
    public DriveId getDriveId() {
        this.hU();
        return this.MW;
    }

    public InputStream getModifiedContentsInputStream() {
        this.hU();
        if (this.NO == null) {
            return null;
        }
        if (this.NT) {
            throw new IllegalStateException("getModifiedInputStream() can only be called once per CompletionEvent instance.");
        }
        this.NT = true;
        return new FileInputStream(this.NO.getFileDescriptor());
    }

    public MetadataChangeSet getModifiedMetadataChangeSet() {
        this.hU();
        if (this.NP != null) {
            return new MetadataChangeSet(this.NP);
        }
        return null;
    }

    public int getStatus() {
        this.hU();
        return this.Fa;
    }

    public List<String> getTrackingTags() {
        this.hU();
        return new ArrayList<String>(this.NQ);
    }

    @Override
    public int getType() {
        return 2;
    }

    public void snooze() {
        this.L(true);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String toString() {
        String string;
        if (this.NQ == null) {
            string = "<null>";
            do {
                return String.format(Locale.US, "CompletionEvent [id=%s, status=%s, trackingTag=%s]", this.MW, this.Fa, string);
                break;
            } while (true);
        }
        string = "'" + TextUtils.join((CharSequence)"','", this.NQ) + "'";
        return String.format(Locale.US, "CompletionEvent [id=%s, status=%s, trackingTag=%s]", this.MW, this.Fa, string);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        b.a(this, parcel, n);
    }
}

