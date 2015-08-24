/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.service;

import android.os.RemoteException;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.k;
import com.google.android.gms.fitness.service.SensorEventDispatcher;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
class b
implements SensorEventDispatcher {
    private final k UA;

    b(k var1);

    @Override
    public void publish(DataPoint var1) throws RemoteException;

    @Override
    public void publish(List<DataPoint> var1) throws RemoteException;
}

