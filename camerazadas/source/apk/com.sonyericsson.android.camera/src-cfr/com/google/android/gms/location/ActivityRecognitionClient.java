/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.app.PendingIntent;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.internal.lz;

@Deprecated
public class ActivityRecognitionClient
implements GooglePlayServicesClient {
    private final lz aea;

    public ActivityRecognitionClient(Context context, GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.aea = new lz(context, connectionCallbacks, onConnectionFailedListener, "activity_recognition");
    }

    @Override
    public void connect() {
        this.aea.connect();
    }

    @Override
    public void disconnect() {
        this.aea.disconnect();
    }

    @Override
    public boolean isConnected() {
        return this.aea.isConnected();
    }

    @Override
    public boolean isConnecting() {
        return this.aea.isConnecting();
    }

    @Override
    public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        return this.aea.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Override
    public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.aea.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    @Override
    public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        this.aea.registerConnectionCallbacks(connectionCallbacks);
    }

    @Override
    public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.aea.registerConnectionFailedListener(onConnectionFailedListener);
    }

    public void removeActivityUpdates(PendingIntent pendingIntent) {
        try {
            this.aea.removeActivityUpdates(pendingIntent);
            return;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    public void requestActivityUpdates(long l, PendingIntent pendingIntent) {
        try {
            this.aea.requestActivityUpdates(l, pendingIntent);
            return;
        }
        catch (RemoteException var3_3) {
            throw new IllegalStateException(var3_3);
        }
    }

    @Override
    public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        this.aea.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Override
    public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.aea.unregisterConnectionFailedListener(onConnectionFailedListener);
    }
}

