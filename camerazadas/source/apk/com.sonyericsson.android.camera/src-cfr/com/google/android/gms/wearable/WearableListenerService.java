/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataEventBuffer;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.MessageEvent;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.internal.ae;
import com.google.android.gms.wearable.internal.ah;
import com.google.android.gms.wearable.internal.ak;

public abstract class WearableListenerService
extends Service
implements DataApi.DataListener,
MessageApi.MessageListener,
NodeApi.NodeListener {
    public static final String BIND_LISTENER_INTENT_ACTION = "com.google.android.gms.wearable.BIND_LISTENER";
    private String BZ;
    private IBinder LZ;
    private volatile int NX = -1;
    private Handler avc;
    private Object avd = new Object();
    private boolean ave;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean bc(int n) {
        boolean bl = false;
        String[] arrstring = this.getPackageManager().getPackagesForUid(n);
        boolean bl2 = bl;
        if (arrstring == null) return bl2;
        n = 0;
        do {
            bl2 = bl;
            if (n >= arrstring.length) return bl2;
            if ("com.google.android.gms".equals(arrstring[n])) {
                return true;
            }
            ++n;
        } while (true);
    }

    private void pU() throws SecurityException {
        int n = Binder.getCallingUid();
        if (n == this.NX) {
            return;
        }
        if (GooglePlayServicesUtil.b(this.getPackageManager(), "com.google.android.gms") && this.bc(n)) {
            this.NX = n;
            return;
        }
        throw new SecurityException("Caller is not GooglePlayServices");
    }

    @Override
    public final IBinder onBind(Intent intent) {
        if ("com.google.android.gms.wearable.BIND_LISTENER".equals(intent.getAction())) {
            return this.LZ;
        }
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        if (Log.isLoggable("WearableLS", 3)) {
            Log.d("WearableLS", "onCreate: " + this.getPackageName());
        }
        this.BZ = this.getPackageName();
        HandlerThread handlerThread = new HandlerThread("WearableListenerService");
        handlerThread.start();
        this.avc = new Handler(handlerThread.getLooper());
        this.LZ = new a();
    }

    @Override
    public void onDataChanged(DataEventBuffer dataEventBuffer) {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onDestroy() {
        Object object = this.avd;
        synchronized (object) {
            this.ave = true;
            this.avc.getLooper().quit();
        }
        super.onDestroy();
    }

    @Override
    public void onMessageReceived(MessageEvent messageEvent) {
    }

    @Override
    public void onPeerConnected(Node node) {
    }

    @Override
    public void onPeerDisconnected(Node node) {
    }

    private class a
    extends ae.a {
        private a() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void Z(final DataHolder dataHolder) {
            if (Log.isLoggable("WearableLS", 3)) {
                Log.d("WearableLS", "onDataItemChanged: " + WearableListenerService.this.BZ + ": " + dataHolder);
            }
            WearableListenerService.this.pU();
            Object object = WearableListenerService.this.avd;
            synchronized (object) {
                if (WearableListenerService.this.ave) {
                    dataHolder.close();
                    return;
                }
                WearableListenerService.this.avc.post(new Runnable(){

                    @Override
                    public void run() {
                        DataEventBuffer dataEventBuffer = new DataEventBuffer(dataHolder);
                        try {
                            WearableListenerService.this.onDataChanged(dataEventBuffer);
                            return;
                        }
                        finally {
                            dataEventBuffer.release();
                        }
                    }
                });
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void a(final ah ah) {
            if (Log.isLoggable("WearableLS", 3)) {
                Log.d("WearableLS", "onMessageReceived: " + ah);
            }
            WearableListenerService.this.pU();
            Object object = WearableListenerService.this.avd;
            synchronized (object) {
                if (WearableListenerService.this.ave) {
                    return;
                }
                WearableListenerService.this.avc.post(new Runnable(){

                    @Override
                    public void run() {
                        WearableListenerService.this.onMessageReceived(ah);
                    }
                });
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void a(final ak ak) {
            if (Log.isLoggable("WearableLS", 3)) {
                Log.d("WearableLS", "onPeerConnected: " + WearableListenerService.this.BZ + ": " + ak);
            }
            WearableListenerService.this.pU();
            Object object = WearableListenerService.this.avd;
            synchronized (object) {
                if (WearableListenerService.this.ave) {
                    return;
                }
                WearableListenerService.this.avc.post(new Runnable(){

                    @Override
                    public void run() {
                        WearableListenerService.this.onPeerConnected(ak);
                    }
                });
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void b(final ak ak) {
            if (Log.isLoggable("WearableLS", 3)) {
                Log.d("WearableLS", "onPeerDisconnected: " + WearableListenerService.this.BZ + ": " + ak);
            }
            WearableListenerService.this.pU();
            Object object = WearableListenerService.this.avd;
            synchronized (object) {
                if (WearableListenerService.this.ave) {
                    return;
                }
                WearableListenerService.this.avc.post(new Runnable(){

                    @Override
                    public void run() {
                        WearableListenerService.this.onPeerDisconnected(ak);
                    }
                });
                return;
            }
        }

    }

}

