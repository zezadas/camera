/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.content.Context;
import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.internal.CreateFileIntentSenderRequest;
import com.google.android.gms.drive.internal.ab;
import com.google.android.gms.drive.internal.q;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class h {
    private String Nw;
    private DriveId Ny;
    protected MetadataChangeSet Oi;
    private Integer Oj;
    private final int Ok;

    public h(int n) {
        this.Ok = n;
    }

    public void a(DriveId driveId) {
        this.Ny = o.i(driveId);
    }

    public void a(MetadataChangeSet metadataChangeSet) {
        this.Oi = o.i(metadataChangeSet);
    }

    public void bi(String string) {
        this.Nw = o.i(string);
    }

    public void bk(int n) {
        this.Oj = n;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public IntentSender build(GoogleApiClient object) {
        o.b(this.Oi, (Object)"Must provide initial metadata to CreateFileActivityBuilder.");
        o.a(object.isConnected(), "Client must be connected");
        object = (q)object.a(Drive.CU);
        this.Oi.hS().setContext(object.getContext());
        object = object.hY();
        int n = this.Oj == null ? -1 : this.Oj;
        try {
            return object.a(new CreateFileIntentSenderRequest(this.Oi.hS(), n, this.Nw, this.Ny, this.Ok));
        }
        catch (RemoteException var1_2) {
            throw new RuntimeException("Unable to connect Drive Play Service", var1_2);
        }
    }
}

