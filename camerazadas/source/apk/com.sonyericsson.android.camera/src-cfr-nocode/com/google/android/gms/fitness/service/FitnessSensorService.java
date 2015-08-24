/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.service.FitnessSensorServiceRequest;
import com.google.android.gms.internal.kn;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.lg;
import com.google.android.gms.internal.li;
import com.google.android.gms.internal.lk;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class FitnessSensorService
extends Service {
    public static final String SERVICE_INTERFACE = "com.google.android.gms.fitness.service.FitnessSensorService";
    private a Va;

    public FitnessSensorService();

    @Override
    public final IBinder onBind(Intent var1);

    @Override
    public void onCreate();

    public abstract List<DataSource> onFindDataSources(List<DataType> var1);

    public abstract boolean onRegister(FitnessSensorServiceRequest var1);

    public abstract boolean onUnregister(DataSource var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends lk.a {
        private final FitnessSensorService Vb;

        private a(FitnessSensorService var1);

        /* synthetic */ a(FitnessSensorService var1,  var2);

        private void jM() throws SecurityException;

        @Override
        public void a(FitnessSensorServiceRequest var1, kt var2) throws RemoteException;

        @Override
        public void a(lg var1, kn var2) throws RemoteException;

        @Override
        public void a(li var1, kt var2) throws RemoteException;
    }

}

