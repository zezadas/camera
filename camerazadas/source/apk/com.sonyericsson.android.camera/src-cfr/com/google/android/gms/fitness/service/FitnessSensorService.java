/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.service;

import android.app.AppOpsManager;
import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.result.DataSourcesResult;
import com.google.android.gms.fitness.service.FitnessSensorServiceRequest;
import com.google.android.gms.internal.kc;
import com.google.android.gms.internal.kn;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.lg;
import com.google.android.gms.internal.li;
import com.google.android.gms.internal.lk;
import java.util.List;

public abstract class FitnessSensorService
extends Service {
    public static final String SERVICE_INTERFACE = "com.google.android.gms.fitness.service.FitnessSensorService";
    private a Va;

    @Override
    public final IBinder onBind(Intent intent) {
        if ("com.google.android.gms.fitness.service.FitnessSensorService".equals(intent.getAction())) {
            if (Log.isLoggable("FitnessSensorService", 3)) {
                Log.d("FitnessSensorService", "Intent " + intent + " received by " + this.getClass().getName());
            }
            return this.Va.asBinder();
        }
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        this.Va = new a(this);
    }

    public abstract List<DataSource> onFindDataSources(List<DataType> var1);

    public abstract boolean onRegister(FitnessSensorServiceRequest var1);

    public abstract boolean onUnregister(DataSource var1);

    private static class a
    extends lk.a {
        private final FitnessSensorService Vb;

        private a(FitnessSensorService fitnessSensorService) {
            this.Vb = fitnessSensorService;
        }

        /*
         * Enabled aggressive block sorting
         */
        private void jM() throws SecurityException {
            int n = Binder.getCallingUid();
            if (kc.hI()) {
                ((AppOpsManager)this.Vb.getSystemService("appops")).checkPackage(n, "com.google.android.gms");
                return;
            }
            String[] arrstring = this.Vb.getPackageManager().getPackagesForUid(n);
            if (arrstring == null) throw new SecurityException("Unauthorized caller");
            {
                int n2 = arrstring.length;
                for (n = 0; n < n2; ++n) {
                    if (arrstring[n].equals("com.google.android.gms")) return;
                    {
                        continue;
                    }
                }
            }
            throw new SecurityException("Unauthorized caller");
        }

        @Override
        public void a(FitnessSensorServiceRequest fitnessSensorServiceRequest, kt kt) throws RemoteException {
            this.jM();
            if (this.Vb.onRegister(fitnessSensorServiceRequest)) {
                kt.k(Status.Jv);
                return;
            }
            kt.k(new Status(13));
        }

        @Override
        public void a(lg lg, kn kn) throws RemoteException {
            this.jM();
            kn.a(new DataSourcesResult(this.Vb.onFindDataSources(lg.getDataTypes()), Status.Jv));
        }

        @Override
        public void a(li li, kt kt) throws RemoteException {
            this.jM();
            if (this.Vb.onUnregister(li.getDataSource())) {
                kt.k(Status.Jv);
                return;
            }
            kt.k(new Status(13));
        }
    }

}

