/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.events.c;
import com.google.android.gms.drive.internal.ab;
import com.google.android.gms.drive.internal.p;
import com.google.android.gms.drive.internal.y;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public class q
extends e<ab> {
    private final String Dd;
    private final String IM;
    private final Bundle OA;
    private final boolean OB;
    private DriveId OC;
    private DriveId OD;
    final GoogleApiClient.ConnectionCallbacks OE;
    final Map<DriveId, Map<c, y>> OF;

    public q(Context var1, Looper var2, ClientSettings var3, GoogleApiClient.ConnectionCallbacks var4, GoogleApiClient.OnConnectionFailedListener var5, String[] var6, Bundle var7);

    protected ab T(IBinder var1);

    PendingResult<Status> a(GoogleApiClient var1, DriveId var2, int var3);

    PendingResult<Status> a(GoogleApiClient var1, DriveId var2, int var3, c var4);

    @Override
    protected void a(int var1, IBinder var2, Bundle var3);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    PendingResult<Status> b(GoogleApiClient var1, DriveId var2, int var3);

    PendingResult<Status> b(GoogleApiClient var1, DriveId var2, int var3, c var4);

    @Override
    public void disconnect();

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    public ab hY();

    public DriveId hZ();

    public DriveId ia();

    public boolean ib();

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);

}

