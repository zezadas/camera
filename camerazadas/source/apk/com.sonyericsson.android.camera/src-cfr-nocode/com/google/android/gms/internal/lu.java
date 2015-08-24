/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.lz;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;

/*
 * Exception performing whole class analysis ignored.
 */
public class lu
implements FusedLocationProviderApi {
    public lu();

    @Override
    public Location getLastLocation(GoogleApiClient var1);

    @Override
    public PendingResult<Status> removeLocationUpdates(GoogleApiClient var1, PendingIntent var2);

    @Override
    public PendingResult<Status> removeLocationUpdates(GoogleApiClient var1, LocationListener var2);

    @Override
    public PendingResult<Status> requestLocationUpdates(GoogleApiClient var1, LocationRequest var2, PendingIntent var3);

    @Override
    public PendingResult<Status> requestLocationUpdates(GoogleApiClient var1, LocationRequest var2, LocationListener var3);

    @Override
    public PendingResult<Status> requestLocationUpdates(GoogleApiClient var1, LocationRequest var2, LocationListener var3, Looper var4);

    @Override
    public PendingResult<Status> setMockLocation(GoogleApiClient var1, Location var2);

    @Override
    public PendingResult<Status> setMockMode(GoogleApiClient var1, boolean var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class a
    extends LocationServices.a<Status> {
        private a();

        /* synthetic */ a( var1);

        @Override
        public /* synthetic */ Result c(Status var1);

        public Status d(Status var1);
    }

}

