/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.internal.c;

public class bb
extends c {
    private final BaseImplementation.b<Status> De;

    public bb(BaseImplementation.b<Status> b) {
        this.De = b;
    }

    @Override
    public void o(Status status) throws RemoteException {
        this.De.b(status);
    }

    @Override
    public void onSuccess() throws RemoteException {
        this.De.b(Status.Jv);
    }
}

