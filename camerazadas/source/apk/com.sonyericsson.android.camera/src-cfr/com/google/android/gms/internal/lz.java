/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.google.android.gms.common.internal.e.b
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ie;
import com.google.android.gms.internal.lp;
import com.google.android.gms.internal.lw;
import com.google.android.gms.internal.lx;
import com.google.android.gms.internal.ly;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mc;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.mw;
import com.google.android.gms.location.LocationClient;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationStatusCodes;
import java.util.List;

public class lz
extends e<lx> {
    private final me<lx> Dh;
    private final ly aeW;
    private final mw aeX;
    private final lp aeY;
    private final ie aeZ;
    private final String afa;

    public lz(Context context, Looper looper, String string, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String string2) {
        this(context, looper, string, connectionCallbacks, onConnectionFailedListener, string2, null);
    }

    public lz(Context context, Looper looper, String string, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String string2, String string3) {
        this(context, looper, string, connectionCallbacks, onConnectionFailedListener, string2, string3, null);
    }

    public lz(Context context, Looper looper, String string, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String string2, String string3, String string4) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, new String[0]);
        this.Dh = new c();
        this.aeW = new ly(context, this.Dh);
        this.afa = string2;
        this.aeX = new mw(string, this.Dh, string3);
        this.aeY = lp.a(context, string3, string4, this.Dh);
        this.aeZ = ie.a(context, this.Dh);
    }

    public lz(Context context, GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener, String string) {
        super(context, connectionCallbacks, onConnectionFailedListener, new String[0]);
        this.Dh = new c();
        this.aeW = new ly(context, this.Dh);
        this.afa = string;
        this.aeX = new mw(context.getPackageName(), this.Dh, null);
        this.aeY = lp.a(context, null, null, this.Dh);
        this.aeZ = ie.a(context, this.Dh);
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.afa);
        l.e(e, 6171000, this.getContext().getPackageName(), bundle);
    }

    public void a(ma ma, LocationListener locationListener) throws RemoteException {
        this.a(ma, locationListener, null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(ma ma, LocationListener locationListener, Looper looper) throws RemoteException {
        ly ly = this.aeW;
        synchronized (ly) {
            this.aeW.a(ma, locationListener, looper);
            return;
        }
    }

    protected lx aL(IBinder iBinder) {
        return lx.a.aK(iBinder);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void addGeofences(List<mc> list, PendingIntent pendingIntent, LocationClient.OnAddGeofencesResultListener object) throws RemoteException {
        this.dJ();
        boolean bl = list != null && list.size() > 0;
        o.b(bl, (Object)"At least one geofence must be specified.");
        o.b(pendingIntent, (Object)"PendingIntent must be specified.");
        o.b(object, (Object)"OnAddGeofencesResultListener not provided.");
        object = object == null ? null : new b((LocationClient.OnAddGeofencesResultListener)object, this);
        ((lx)this.gS()).a(list, pendingIntent, (lw)object, this.getContext().getPackageName());
    }

    public void b(ma ma, PendingIntent pendingIntent) throws RemoteException {
        this.aeW.b(ma, pendingIntent);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void disconnect() {
        ly ly = this.aeW;
        synchronized (ly) {
            if (this.isConnected()) {
                this.aeW.removeAllListeners();
                this.aeW.lY();
            }
            super.disconnect();
            return;
        }
    }

    public Location getLastLocation() {
        return this.aeW.getLastLocation();
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.aL(iBinder);
    }

    public void removeActivityUpdates(PendingIntent pendingIntent) throws RemoteException {
        this.dJ();
        o.i(pendingIntent);
        ((lx)this.gS()).removeActivityUpdates(pendingIntent);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void removeGeofences(PendingIntent pendingIntent, LocationClient.OnRemoveGeofencesResultListener object) throws RemoteException {
        this.dJ();
        o.b(pendingIntent, (Object)"PendingIntent must be specified.");
        o.b(object, (Object)"OnRemoveGeofencesResultListener not provided.");
        object = object == null ? null : new b((LocationClient.OnRemoveGeofencesResultListener)object, this);
        ((lx)this.gS()).a(pendingIntent, (lw)object, this.getContext().getPackageName());
    }

    /*
     * Enabled aggressive block sorting
     */
    public void removeGeofences(List<String> object, LocationClient.OnRemoveGeofencesResultListener onRemoveGeofencesResultListener) throws RemoteException {
        this.dJ();
        boolean bl = object != null && object.size() > 0;
        o.b(bl, (Object)"geofenceRequestIds can't be null nor empty.");
        o.b(onRemoveGeofencesResultListener, (Object)"OnRemoveGeofencesResultListener not provided.");
        String[] arrstring = object.toArray(new String[0]);
        object = onRemoveGeofencesResultListener == null ? null : new b(onRemoveGeofencesResultListener, this);
        ((lx)this.gS()).a(arrstring, (lw)object, this.getContext().getPackageName());
    }

    public void removeLocationUpdates(PendingIntent pendingIntent) throws RemoteException {
        this.aeW.removeLocationUpdates(pendingIntent);
    }

    public void removeLocationUpdates(LocationListener locationListener) throws RemoteException {
        this.aeW.removeLocationUpdates(locationListener);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void requestActivityUpdates(long l, PendingIntent pendingIntent) throws RemoteException {
        this.dJ();
        o.i(pendingIntent);
        boolean bl = l >= 0;
        o.b(bl, (Object)"detectionIntervalMillis must be >= 0");
        ((lx)this.gS()).a(l, true, pendingIntent);
    }

    public void requestLocationUpdates(LocationRequest locationRequest, PendingIntent pendingIntent) throws RemoteException {
        this.aeW.requestLocationUpdates(locationRequest, pendingIntent);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void requestLocationUpdates(LocationRequest locationRequest, LocationListener locationListener, Looper looper) throws RemoteException {
        ly ly = this.aeW;
        synchronized (ly) {
            this.aeW.requestLocationUpdates(locationRequest, locationListener, looper);
            return;
        }
    }

    public void setMockLocation(Location location) throws RemoteException {
        this.aeW.setMockLocation(location);
    }

    public void setMockMode(boolean bl) throws RemoteException {
        this.aeW.setMockMode(bl);
    }

    private final class a
    extends com.google.android.gms.common.internal.e.b<LocationClient.OnAddGeofencesResultListener> {
        private final int HF;
        private final String[] afb;

        public a(LocationClient.OnAddGeofencesResultListener onAddGeofencesResultListener, int n, String[] arrstring) {
            super(onAddGeofencesResultListener);
            this.HF = LocationStatusCodes.ef(n);
            this.afb = arrstring;
        }

        protected void a(LocationClient.OnAddGeofencesResultListener onAddGeofencesResultListener) {
            if (onAddGeofencesResultListener != null) {
                onAddGeofencesResultListener.onAddGeofencesResult(this.HF, this.afb);
            }
        }

        protected /* synthetic */ void g(Object object) {
            this.a((LocationClient.OnAddGeofencesResultListener)object);
        }

        protected void gT() {
        }
    }

    private static final class b
    extends lw.a {
        private LocationClient.OnAddGeofencesResultListener afd;
        private LocationClient.OnRemoveGeofencesResultListener afe;
        private lz aff;

        public b(LocationClient.OnAddGeofencesResultListener onAddGeofencesResultListener, lz lz) {
            this.afd = onAddGeofencesResultListener;
            this.afe = null;
            this.aff = lz;
        }

        public b(LocationClient.OnRemoveGeofencesResultListener onRemoveGeofencesResultListener, lz lz) {
            this.afe = onRemoveGeofencesResultListener;
            this.afd = null;
            this.aff = lz;
        }

        @Override
        public void onAddGeofencesResult(int n, String[] arrstring) throws RemoteException {
            if (this.aff == null) {
                Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
                return;
            }
            lz lz = this.aff;
            lz lz2 = this.aff;
            lz2.getClass();
            lz.a((e.b)lz2.new a(this.afd, n, arrstring));
            this.aff = null;
            this.afd = null;
            this.afe = null;
        }

        @Override
        public void onRemoveGeofencesByPendingIntentResult(int n, PendingIntent pendingIntent) {
            if (this.aff == null) {
                Log.wtf("LocationClientImpl", "onRemoveGeofencesByPendingIntentResult called multiple times");
                return;
            }
            lz lz = this.aff;
            lz lz2 = this.aff;
            lz2.getClass();
            lz.a((e.b)new d(lz2, 1, this.afe, n, pendingIntent));
            this.aff = null;
            this.afd = null;
            this.afe = null;
        }

        @Override
        public void onRemoveGeofencesByRequestIdsResult(int n, String[] arrstring) {
            if (this.aff == null) {
                Log.wtf("LocationClientImpl", "onRemoveGeofencesByRequestIdsResult called multiple times");
                return;
            }
            lz lz = this.aff;
            lz lz2 = this.aff;
            lz2.getClass();
            lz.a((e.b)new d(lz2, 2, this.afe, n, arrstring));
            this.aff = null;
            this.afd = null;
            this.afe = null;
        }
    }

    private final class c
    implements me<lx> {
        private c() {
        }

        @Override
        public void dJ() {
            lz.this.dJ();
        }

        @Override
        public /* synthetic */ IInterface gS() {
            return this.lZ();
        }

        public lx lZ() {
            return (lx)lz.this.gS();
        }
    }

    private final class d
    extends com.google.android.gms.common.internal.e.b<LocationClient.OnRemoveGeofencesResultListener> {
        private final int HF;
        private final String[] afb;
        final /* synthetic */ lz afc;
        private final int afg;
        private final PendingIntent mPendingIntent;

        /*
         * Enabled aggressive block sorting
         */
        public d(lz lz, int n, LocationClient.OnRemoveGeofencesResultListener onRemoveGeofencesResultListener, int n2, PendingIntent pendingIntent) {
            boolean bl = true;
            this.afc = lz;
            super(onRemoveGeofencesResultListener);
            if (n != 1) {
                bl = false;
            }
            com.google.android.gms.common.internal.a.I(bl);
            this.afg = n;
            this.HF = LocationStatusCodes.ef(n2);
            this.mPendingIntent = pendingIntent;
            this.afb = null;
        }

        /*
         * Enabled aggressive block sorting
         */
        public d(lz lz, int n, LocationClient.OnRemoveGeofencesResultListener onRemoveGeofencesResultListener, int n2, String[] arrstring) {
            this.afc = lz;
            super(onRemoveGeofencesResultListener);
            boolean bl = n == 2;
            com.google.android.gms.common.internal.a.I(bl);
            this.afg = n;
            this.HF = LocationStatusCodes.ef(n2);
            this.afb = arrstring;
            this.mPendingIntent = null;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        protected void a(LocationClient.OnRemoveGeofencesResultListener onRemoveGeofencesResultListener) {
            if (onRemoveGeofencesResultListener == null) return;
            switch (this.afg) {
                default: {
                    Log.wtf("LocationClientImpl", "Unsupported action: " + this.afg);
                    return;
                }
                case 1: {
                    onRemoveGeofencesResultListener.onRemoveGeofencesByPendingIntentResult(this.HF, this.mPendingIntent);
                    return;
                }
                case 2: 
            }
            onRemoveGeofencesResultListener.onRemoveGeofencesByRequestIdsResult(this.HF, this.afb);
        }

        protected /* synthetic */ void g(Object object) {
            this.a((LocationClient.OnRemoveGeofencesResultListener)object);
        }

        protected void gT() {
        }
    }

}

