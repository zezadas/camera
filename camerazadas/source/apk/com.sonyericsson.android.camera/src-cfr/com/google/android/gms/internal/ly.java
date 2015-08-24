/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.lx;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.me;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class ly {
    private final me<lx> Dh;
    private ContentProviderClient aeR = null;
    private boolean aeS = false;
    private HashMap<LocationListener, b> aeT = new HashMap();
    private final Context mContext;

    public ly(Context context, me<lx> me) {
        this.mContext = context;
        this.Dh = me;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private b a(LocationListener locationListener, Looper looper) {
        if (looper == null) {
            o.b(Looper.myLooper(), (Object)"Can't create handler inside thread that has not called Looper.prepare()");
        }
        HashMap<LocationListener, b> hashMap = this.aeT;
        synchronized (hashMap) {
            b b;
            b b2 = b = this.aeT.get(locationListener);
            if (b == null) {
                b2 = new b(locationListener, looper);
            }
            this.aeT.put(locationListener, b2);
            return b2;
        }
    }

    public void a(ma ma, LocationListener object, Looper looper) throws RemoteException {
        this.Dh.dJ();
        object = this.a((LocationListener)object, looper);
        this.Dh.gS().a(ma, (com.google.android.gms.location.a)object);
    }

    public void b(ma ma, PendingIntent pendingIntent) throws RemoteException {
        this.Dh.dJ();
        this.Dh.gS().a(ma, pendingIntent);
    }

    public Location getLastLocation() {
        this.Dh.dJ();
        try {
            Location location = this.Dh.gS().bW(this.mContext.getPackageName());
            return location;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void lY() {
        if (!this.aeS) return;
        try {
            this.setMockMode(false);
            return;
        }
        catch (RemoteException var1_1) {
            throw new IllegalStateException(var1_1);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void removeAllListeners() {
        Iterator<b> iterator;
        try {
            HashMap<LocationListener, b> hashMap = this.aeT;
            // MONITORENTER : hashMap
            iterator = this.aeT.values().iterator();
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
        do {
            if (!iterator.hasNext()) {
                this.aeT.clear();
                // MONITOREXIT : hashMap
                return;
            }
            b b = iterator.next();
            if (b == null) continue;
            this.Dh.gS().a(b);
        } while (true);
    }

    public void removeLocationUpdates(PendingIntent pendingIntent) throws RemoteException {
        this.Dh.dJ();
        this.Dh.gS().a(pendingIntent);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void removeLocationUpdates(LocationListener object) throws RemoteException {
        this.Dh.dJ();
        o.b(object, (Object)"Invalid null listener");
        HashMap<LocationListener, b> hashMap = this.aeT;
        synchronized (hashMap) {
            object = this.aeT.remove(object);
            if (this.aeR != null && this.aeT.isEmpty()) {
                this.aeR.release();
                this.aeR = null;
            }
            if (object != null) {
                object.release();
                this.Dh.gS().a((com.google.android.gms.location.a)object);
            }
            return;
        }
    }

    public void requestLocationUpdates(LocationRequest locationRequest, PendingIntent pendingIntent) throws RemoteException {
        this.Dh.dJ();
        this.Dh.gS().a(locationRequest, pendingIntent);
    }

    public void requestLocationUpdates(LocationRequest locationRequest, LocationListener object, Looper looper) throws RemoteException {
        this.Dh.dJ();
        object = this.a((LocationListener)object, looper);
        this.Dh.gS().a(locationRequest, (com.google.android.gms.location.a)object);
    }

    public void setMockLocation(Location location) throws RemoteException {
        this.Dh.dJ();
        this.Dh.gS().setMockLocation(location);
    }

    public void setMockMode(boolean bl) throws RemoteException {
        this.Dh.dJ();
        this.Dh.gS().setMockMode(bl);
        this.aeS = bl;
    }

    private static class a
    extends Handler {
        private final LocationListener aeU;

        public a(LocationListener locationListener) {
            this.aeU = locationListener;
        }

        public a(LocationListener locationListener, Looper looper) {
            super(looper);
            this.aeU = locationListener;
        }

        @Override
        public void handleMessage(Message parcelable) {
            switch (parcelable.what) {
                default: {
                    Log.e("LocationClientHelper", "unknown message in LocationHandler.handleMessage");
                    return;
                }
                case 1: 
            }
            parcelable = new Location((Location)parcelable.obj);
            this.aeU.onLocationChanged((Location)parcelable);
        }
    }

    private static class b
    extends a.a {
        private Handler aeV;

        /*
         * Enabled aggressive block sorting
         */
        b(LocationListener object, Looper looper) {
            object = looper == null ? new a((LocationListener)object) : new a((LocationListener)object, looper);
            this.aeV = object;
        }

        @Override
        public void onLocationChanged(Location location) {
            if (this.aeV == null) {
                Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
                return;
            }
            Message message = Message.obtain();
            message.what = 1;
            message.obj = location;
            this.aeV.sendMessage(message);
        }

        public void release() {
            this.aeV = null;
        }
    }

}

