/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.RemoteException;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.l;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public class a
extends l.a {
    private final BleScanCallback Uf;

    private a(BleScanCallback var1);

    /* synthetic */ a(BleScanCallback var1,  var2);

    @Override
    public void onDeviceFound(BleDevice var1) throws RemoteException;

    @Override
    public void onScanStopped() throws RemoteException;

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private static final a Ug;
        private final Map<BleScanCallback, a> Uh;

        static;

        private a();

        public static a je();

        public a a(BleScanCallback var1);

        public a b(BleScanCallback var1);
    }

}

