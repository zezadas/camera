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
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.l;
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
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public class lz
extends e<lx> {
    private final me<lx> Dh;
    private final ly aeW;
    private final mw aeX;
    private final lp aeY;
    private final ie aeZ;
    private final String afa;

    public lz(Context var1, Looper var2, String var3, GoogleApiClient.ConnectionCallbacks var4, GoogleApiClient.OnConnectionFailedListener var5, String var6);

    public lz(Context var1, Looper var2, String var3, GoogleApiClient.ConnectionCallbacks var4, GoogleApiClient.OnConnectionFailedListener var5, String var6, String var7);

    public lz(Context var1, Looper var2, String var3, GoogleApiClient.ConnectionCallbacks var4, GoogleApiClient.OnConnectionFailedListener var5, String var6, String var7, String var8);

    public lz(Context var1, GooglePlayServicesClient.ConnectionCallbacks var2, GooglePlayServicesClient.OnConnectionFailedListener var3, String var4);

    static /* synthetic */ void b(lz var0);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    public void a(ma var1, LocationListener var2) throws RemoteException;

    public void a(ma var1, LocationListener var2, Looper var3) throws RemoteException;

    protected lx aL(IBinder var1);

    public void addGeofences(List<mc> var1, PendingIntent var2, LocationClient.OnAddGeofencesResultListener var3) throws RemoteException;

    public void b(ma var1, PendingIntent var2) throws RemoteException;

    @Override
    public void disconnect();

    public Location getLastLocation();

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);

    public void removeActivityUpdates(PendingIntent var1) throws RemoteException;

    public void removeGeofences(PendingIntent var1, LocationClient.OnRemoveGeofencesResultListener var2) throws RemoteException;

    public void removeGeofences(List<String> var1, LocationClient.OnRemoveGeofencesResultListener var2) throws RemoteException;

    public void removeLocationUpdates(PendingIntent var1) throws RemoteException;

    public void removeLocationUpdates(LocationListener var1) throws RemoteException;

    public void requestActivityUpdates(long var1, PendingIntent var3) throws RemoteException;

    public void requestLocationUpdates(LocationRequest var1, PendingIntent var2) throws RemoteException;

    public void requestLocationUpdates(LocationRequest var1, LocationListener var2, Looper var3) throws RemoteException;

    public void setMockLocation(Location var1) throws RemoteException;

    public void setMockMode(boolean var1) throws RemoteException;

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class a
    extends com.google.android.gms.common.internal.e.b<LocationClient.OnAddGeofencesResultListener> {
        private final int HF;
        private final String[] afb;
        final /* synthetic */ lz afc;

        public a(lz var1, LocationClient.OnAddGeofencesResultListener var2, int var3, String[] var4);

        protected void a(LocationClient.OnAddGeofencesResultListener var1);

        protected /* synthetic */ void g(Object var1);

        protected void gT();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class b
    extends lw.a {
        private LocationClient.OnAddGeofencesResultListener afd;
        private LocationClient.OnRemoveGeofencesResultListener afe;
        private lz aff;

        public b(LocationClient.OnAddGeofencesResultListener var1, lz var2);

        public b(LocationClient.OnRemoveGeofencesResultListener var1, lz var2);

        @Override
        public void onAddGeofencesResult(int var1, String[] var2) throws RemoteException;

        @Override
        public void onRemoveGeofencesByPendingIntentResult(int var1, PendingIntent var2);

        @Override
        public void onRemoveGeofencesByRequestIdsResult(int var1, String[] var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class c
    implements me<lx> {
        final /* synthetic */ lz afc;

        private c(lz var1);

        /* synthetic */ c(lz var1,  var2);

        @Override
        public void dJ();

        @Override
        public /* synthetic */ IInterface gS();

        public lx lZ();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class d
    extends com.google.android.gms.common.internal.e.b<LocationClient.OnRemoveGeofencesResultListener> {
        private final int HF;
        private final String[] afb;
        final /* synthetic */ lz afc;
        private final int afg;
        private final PendingIntent mPendingIntent;

        public d(lz var1, int var2, LocationClient.OnRemoveGeofencesResultListener var3, int var4, PendingIntent var5);

        public d(lz var1, int var2, LocationClient.OnRemoveGeofencesResultListener var3, int var4, String[] var5);

        protected void a(LocationClient.OnRemoveGeofencesResultListener var1);

        protected /* synthetic */ void g(Object var1);

        protected void gT();
    }

}

