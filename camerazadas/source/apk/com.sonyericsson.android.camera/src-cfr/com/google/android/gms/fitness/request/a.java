/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.l;
import java.util.HashMap;
import java.util.Map;

public class a
extends l.a {
    private final BleScanCallback Uf;

    private a(BleScanCallback bleScanCallback) {
        this.Uf = o.i(bleScanCallback);
    }

    @Override
    public void onDeviceFound(BleDevice bleDevice) throws RemoteException {
        this.Uf.onDeviceFound(bleDevice);
    }

    @Override
    public void onScanStopped() throws RemoteException {
        this.Uf.onScanStopped();
    }

    public static class a {
        private static final a Ug = new a();
        private final Map<BleScanCallback, a> Uh = new HashMap<BleScanCallback, a>();

        private a() {
        }

        public static a je() {
            return Ug;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public a a(BleScanCallback bleScanCallback) {
            Map<BleScanCallback, a> map = this.Uh;
            synchronized (map) {
                a a;
                a a2 = a = this.Uh.get(bleScanCallback);
                if (a == null) {
                    a2 = new a(bleScanCallback);
                    this.Uh.put(bleScanCallback, a2);
                }
                return a2;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public a b(BleScanCallback object) {
            Map<BleScanCallback, a> map = this.Uh;
            synchronized (map) {
                a a = this.Uh.get(object);
                if (a == null) return new a((BleScanCallback)object);
                return a;
            }
        }
    }

}

