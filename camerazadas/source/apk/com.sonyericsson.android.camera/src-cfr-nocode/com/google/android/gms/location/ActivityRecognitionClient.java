/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.internal.lz;

/*
 * Exception performing whole class analysis.
 */
@Deprecated
public class ActivityRecognitionClient
implements GooglePlayServicesClient {
    private final lz aea;

    public ActivityRecognitionClient(Context var1, GooglePlayServicesClient.ConnectionCallbacks var2, GooglePlayServicesClient.OnConnectionFailedListener var3);

    @Override
    public void connect();

    @Override
    public void disconnect();

    @Override
    public boolean isConnected();

    @Override
    public boolean isConnecting();

    @Override
    public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks var1);

    @Override
    public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener var1);

    @Override
    public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks var1);

    @Override
    public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener var1);

    public void removeActivityUpdates(PendingIntent var1);

    public void requestActivityUpdates(long var1, PendingIntent var3);

    @Override
    public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks var1);

    @Override
    public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener var1);
}

