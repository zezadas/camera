/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.internal.OpenFileIntentSenderRequest;
import com.google.android.gms.drive.internal.ab;
import com.google.android.gms.drive.internal.q;

public class OpenFileActivityBuilder {
    public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
    private String Nw;
    private String[] Nx;
    private DriveId Ny;

    public IntentSender build(GoogleApiClient object) {
        o.a(object.isConnected(), "Client must be connected");
        if (this.Nx == null) {
            this.Nx = new String[0];
        }
        object = ((q)object.a(Drive.CU)).hY();
        try {
            object = object.a(new OpenFileIntentSenderRequest(this.Nw, this.Nx, this.Ny));
            return object;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeException("Unable to connect Drive Play Service", var1_2);
        }
    }

    public OpenFileActivityBuilder setActivityStartFolder(DriveId driveId) {
        this.Ny = o.i(driveId);
        return this;
    }

    public OpenFileActivityBuilder setActivityTitle(String string) {
        this.Nw = o.i(string);
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public OpenFileActivityBuilder setMimeType(String[] arrstring) {
        boolean bl = arrstring != null;
        o.b(bl, (Object)"mimeTypes may not be null");
        this.Nx = arrstring;
        return this;
    }
}

