/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.lz;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;

public class lu
implements FusedLocationProviderApi {
    @Override
    public Location getLastLocation(GoogleApiClient object) {
        object = LocationServices.e((GoogleApiClient)object);
        try {
            object = object.getLastLocation();
            return object;
        }
        catch (Exception var1_2) {
            return null;
        }
    }

    @Override
    public PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, final PendingIntent pendingIntent) {
        return googleApiClient.b(new a(){

            @Override
            protected void a(lz lz) throws RemoteException {
                lz.removeLocationUpdates(pendingIntent);
                this.b(Status.Jv);
            }
        });
    }

    @Override
    public PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, final LocationListener locationListener) {
        return googleApiClient.b(new a(){

            @Override
            protected void a(lz lz) throws RemoteException {
                lz.removeLocationUpdates(locationListener);
                this.b(Status.Jv);
            }
        });
    }

    @Override
    public PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, final LocationRequest locationRequest, final PendingIntent pendingIntent) {
        return googleApiClient.b(new a(){

            @Override
            protected void a(lz lz) throws RemoteException {
                lz.requestLocationUpdates(locationRequest, pendingIntent);
                this.b(Status.Jv);
            }
        });
    }

    @Override
    public PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, final LocationRequest locationRequest, final LocationListener locationListener) {
        return googleApiClient.b(new a(){

            @Override
            protected void a(lz lz) throws RemoteException {
                lz.requestLocationUpdates(locationRequest, locationListener, null);
                this.b(Status.Jv);
            }
        });
    }

    @Override
    public PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, final LocationRequest locationRequest, final LocationListener locationListener, final Looper looper) {
        return googleApiClient.b(new a(){

            @Override
            protected void a(lz lz) throws RemoteException {
                lz.requestLocationUpdates(locationRequest, locationListener, looper);
                this.b(Status.Jv);
            }
        });
    }

    @Override
    public PendingResult<Status> setMockLocation(GoogleApiClient googleApiClient, final Location location) {
        return googleApiClient.b(new a(){

            @Override
            protected void a(lz lz) throws RemoteException {
                lz.setMockLocation(location);
                this.b(Status.Jv);
            }
        });
    }

    @Override
    public PendingResult<Status> setMockMode(GoogleApiClient googleApiClient, final boolean bl) {
        return googleApiClient.b(new a(){

            @Override
            protected void a(lz lz) throws RemoteException {
                lz.setMockMode(bl);
                this.b(Status.Jv);
            }
        });
    }

    private static abstract class a
    extends LocationServices.a<Status> {
        private a() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        public Status d(Status status) {
            return status;
        }
    }

}

