/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.service;

import android.os.RemoteException;
import com.google.android.gms.fitness.data.DataPoint;
import java.util.List;

public interface SensorEventDispatcher {
    public void publish(DataPoint var1) throws RemoteException;

    public void publish(List<DataPoint> var1) throws RemoteException;
}

