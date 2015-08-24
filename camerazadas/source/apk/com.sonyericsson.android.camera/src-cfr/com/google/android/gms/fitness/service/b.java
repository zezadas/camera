/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.service;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.k;
import com.google.android.gms.fitness.service.SensorEventDispatcher;
import java.util.Iterator;
import java.util.List;

class b
implements SensorEventDispatcher {
    private final k UA;

    b(k k) {
        this.UA = o.i(k);
    }

    @Override
    public void publish(DataPoint dataPoint) throws RemoteException {
        this.UA.c(dataPoint);
    }

    @Override
    public void publish(List<DataPoint> object) throws RemoteException {
        object = object.iterator();
        while (object.hasNext()) {
            this.publish((DataPoint)object.next());
        }
    }
}

