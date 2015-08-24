/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.events.c;
import com.google.android.gms.drive.events.d;
import com.google.android.gms.drive.internal.AddEventListenerRequest;
import com.google.android.gms.drive.internal.DisconnectRequest;
import com.google.android.gms.drive.internal.RemoveEventListenerRequest;
import com.google.android.gms.drive.internal.ab;
import com.google.android.gms.drive.internal.ac;
import com.google.android.gms.drive.internal.ad;
import com.google.android.gms.drive.internal.bb;
import com.google.android.gms.drive.internal.o;
import com.google.android.gms.drive.internal.p;
import com.google.android.gms.drive.internal.y;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class q
extends e<ab> {
    private final String Dd;
    private final String IM;
    private final Bundle OA;
    private final boolean OB;
    private DriveId OC;
    private DriveId OD;
    final GoogleApiClient.ConnectionCallbacks OE;
    final Map<DriveId, Map<c, y>> OF = new HashMap<DriveId, Map<c, y>>();

    public q(Context object, Looper object2, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String[] arrstring, Bundle bundle) {
        super((Context)object, (Looper)object2, connectionCallbacks, onConnectionFailedListener, arrstring);
        this.Dd = com.google.android.gms.common.internal.o.b(clientSettings.getAccountNameOrDefault(), (Object)"Must call Api.ClientBuilder.setAccountName()");
        this.IM = clientSettings.getRealClientPackageName();
        this.OE = connectionCallbacks;
        this.OA = bundle;
        object2 = new Intent("com.google.android.gms.drive.events.HANDLE_EVENT");
        object2.setPackage(object.getPackageName());
        object = object.getPackageManager().queryIntentServices((Intent)object2, 0);
        switch (object.size()) {
            default: {
                throw new IllegalStateException("AndroidManifest.xml can only define one service that handles the " + object2.getAction() + " action");
            }
            case 0: {
                this.OB = false;
                return;
            }
            case 1: 
        }
        object = ((ResolveInfo)object.get((int)0)).serviceInfo;
        if (!object.exported) {
            throw new IllegalStateException("Drive event service " + object.name + " must be exported in AndroidManifest.xml");
        }
        this.OB = true;
    }

    protected ab T(IBinder iBinder) {
        return ab.a.U(iBinder);
    }

    PendingResult<Status> a(GoogleApiClient googleApiClient, final DriveId driveId, final int n) {
        com.google.android.gms.common.internal.o.b(d.a(n, driveId), (Object)"id");
        com.google.android.gms.common.internal.o.i("eventService");
        com.google.android.gms.common.internal.o.a(this.isConnected(), "Client must be connected");
        if (!this.OB) {
            throw new IllegalStateException("Application must define an exported DriveEventService subclass in AndroidManifest.xml to add event subscriptions");
        }
        return googleApiClient.b(new p.a(){

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new AddEventListenerRequest(driveId, n), null, null, (ac)new bb(this));
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    PendingResult<Status> a(GoogleApiClient object, final DriveId driveId, final int n, c object2) {
        com.google.android.gms.common.internal.o.b(d.a(n, driveId), (Object)"id");
        com.google.android.gms.common.internal.o.b(object2, (Object)"listener");
        com.google.android.gms.common.internal.o.a(this.isConnected(), "Client must be connected");
        Map<DriveId, Map<c, y>> map = this.OF;
        synchronized (map) {
            Map<c, y> map2 = this.OF.get(driveId);
            if (map2 == null) {
                map2 = new HashMap<c, y>();
                this.OF.put(driveId, map2);
            }
            y y = map2.get(object2);
            if (y == null) {
                y = new y(this.getLooper(), this.getContext(), n, (c)object2);
                map2.put((c)object2, y);
                object2 = y;
            } else {
                object2 = y;
                if (y.br(n)) {
                    return new o.m((GoogleApiClient)object, Status.Jv);
                }
            }
            object2.bq(n);
            return object.b(new p.a((y)object2){
                final /* synthetic */ y OI;

                @Override
                protected void a(q q) throws RemoteException {
                    q.hY().a(new AddEventListenerRequest(driveId, n), (ad)this.OI, null, (ac)new bb(this));
                }
            });
        }
    }

    @Override
    protected void a(int n, IBinder iBinder, Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(this.getClass().getClassLoader());
            this.OC = (DriveId)bundle.getParcelable("com.google.android.gms.drive.root_id");
            this.OD = (DriveId)bundle.getParcelable("com.google.android.gms.drive.appdata_id");
        }
        super.a(n, iBinder, bundle);
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        String string = this.getContext().getPackageName();
        com.google.android.gms.common.internal.o.i(e);
        com.google.android.gms.common.internal.o.i(string);
        com.google.android.gms.common.internal.o.i(this.gR());
        Bundle bundle = new Bundle();
        if (!string.equals(this.IM)) {
            bundle.putString("proxy_package_name", this.IM);
        }
        bundle.putAll(this.OA);
        l.a((k)e, 6171000, string, this.gR(), this.Dd, bundle);
    }

    PendingResult<Status> b(GoogleApiClient googleApiClient, final DriveId driveId, final int n) {
        com.google.android.gms.common.internal.o.b(d.a(n, driveId), (Object)"id");
        com.google.android.gms.common.internal.o.i("eventService");
        com.google.android.gms.common.internal.o.a(this.isConnected(), "Client must be connected");
        return googleApiClient.b(new p.a(){

            @Override
            protected void a(q q) throws RemoteException {
                q.hY().a(new RemoveEventListenerRequest(driveId, n), null, null, (ac)new bb(this));
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    PendingResult<Status> b(GoogleApiClient object, final DriveId driveId, final int n, c object2) {
        com.google.android.gms.common.internal.o.b(d.a(n, driveId), (Object)"id");
        com.google.android.gms.common.internal.o.a(this.isConnected(), "Client must be connected");
        com.google.android.gms.common.internal.o.b(object2, (Object)"listener");
        Map<DriveId, Map<c, y>> map = this.OF;
        synchronized (map) {
            Map<c, y> map2 = this.OF.get(driveId);
            if (map2 == null) {
                return new o.m((GoogleApiClient)object, Status.Jv);
            }
            if ((object2 = map2.remove(object2)) == null) {
                return new o.m((GoogleApiClient)object, Status.Jv);
            }
            if (!map2.isEmpty()) return object.b(new p.a((y)object2){
                final /* synthetic */ y OK;

                @Override
                protected void a(q q) throws RemoteException {
                    q.hY().a(new RemoveEventListenerRequest(driveId, n), (ad)this.OK, null, (ac)new bb(this));
                }
            });
            this.OF.remove(driveId);
            return object.b(new );
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void disconnect() {
        ab ab = (ab)this.gS();
        if (ab != null) {
            try {
                ab.a(new DisconnectRequest());
            }
            catch (RemoteException var1_2) {}
        }
        super.disconnect();
        this.OF.clear();
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.drive.internal.IDriveService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.drive.ApiService.START";
    }

    public ab hY() {
        return (ab)this.gS();
    }

    public DriveId hZ() {
        return this.OC;
    }

    public DriveId ia() {
        return this.OD;
    }

    public boolean ib() {
        return this.OB;
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.T(iBinder);
    }

}

