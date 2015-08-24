/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.internal.c;

/*
 * Exception performing whole class analysis.
 */
public class bb
extends c {
    private final BaseImplementation.b<Status> De;

    public bb(BaseImplementation.b<Status> var1);

    @Override
    public void o(Status var1) throws RemoteException;

    @Override
    public void onSuccess() throws RemoteException;
}

