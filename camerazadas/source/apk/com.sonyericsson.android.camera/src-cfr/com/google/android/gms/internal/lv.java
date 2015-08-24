/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.lz;
import com.google.android.gms.internal.mc;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.GeofencingApi;
import com.google.android.gms.location.LocationClient;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationStatusCodes;
import java.util.ArrayList;
import java.util.List;

public class lv
implements GeofencingApi {
    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public PendingResult<Status> addGeofences(GoogleApiClient googleApiClient, final List<Geofence> arrayList, final PendingIntent pendingIntent) {
        if (arrayList != null) {
            ArrayList<mc> arrayList2 = new ArrayList<mc>(arrayList.size());
            for (Geofence geofence : arrayList) {
                o.b(geofence instanceof mc, (Object)"Geofence must be created using Geofence.Builder.");
                arrayList2.add((mc)geofence);
            }
            arrayList = arrayList2;
            do {
                return googleApiClient.b(new a(){

                    @Override
                    protected void a(lz lz) throws RemoteException {
                        LocationClient.OnAddGeofencesResultListener onAddGeofencesResultListener = new LocationClient.OnAddGeofencesResultListener(){

                            @Override
                            public void onAddGeofencesResult(int n, String[] arrstring) {
                                1.this.b(LocationStatusCodes.eg(n));
                            }
                        };
                        lz.addGeofences(arrayList, pendingIntent, onAddGeofencesResultListener);
                    }

                });
                break;
            } while (true);
        }
        arrayList = null;
        return googleApiClient.b(new );
    }

    @Override
    public PendingResult<Status> removeGeofences(GoogleApiClient googleApiClient, final PendingIntent pendingIntent) {
        return googleApiClient.b(new a(){

            @Override
            protected void a(lz lz) throws RemoteException {
                LocationClient.OnRemoveGeofencesResultListener onRemoveGeofencesResultListener = new LocationClient.OnRemoveGeofencesResultListener(){

                    @Override
                    public void onRemoveGeofencesByPendingIntentResult(int n, PendingIntent pendingIntent) {
                        2.this.b(LocationStatusCodes.eg(n));
                    }

                    @Override
                    public void onRemoveGeofencesByRequestIdsResult(int n, String[] arrstring) {
                        Log.wtf("GeofencingImpl", "Request ID callback shouldn't have been called");
                    }
                };
                lz.removeGeofences(pendingIntent, onRemoveGeofencesResultListener);
            }

        });
    }

    @Override
    public PendingResult<Status> removeGeofences(GoogleApiClient googleApiClient, final List<String> list) {
        return googleApiClient.b(new a(){

            @Override
            protected void a(lz lz) throws RemoteException {
                LocationClient.OnRemoveGeofencesResultListener onRemoveGeofencesResultListener = new LocationClient.OnRemoveGeofencesResultListener(){

                    @Override
                    public void onRemoveGeofencesByPendingIntentResult(int n, PendingIntent pendingIntent) {
                        Log.wtf("GeofencingImpl", "PendingIntent callback shouldn't have been called");
                    }

                    @Override
                    public void onRemoveGeofencesByRequestIdsResult(int n, String[] arrstring) {
                        3.this.b(LocationStatusCodes.eg(n));
                    }
                };
                lz.removeGeofences(list, onRemoveGeofencesResultListener);
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

