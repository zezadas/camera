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
import android.os.RemoteException;
import com.google.android.gms.internal.lx;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.me;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.a;
import java.util.HashMap;

/*
 * Exception performing whole class analysis.
 */
public class ly {
    private final me<lx> Dh;
    private ContentProviderClient aeR;
    private boolean aeS;
    private HashMap<LocationListener, b> aeT;
    private final Context mContext;

    public ly(Context var1, me<lx> var2);

    private b a(LocationListener var1, Looper var2);

    public void a(ma var1, LocationListener var2, Looper var3) throws RemoteException;

    public void b(ma var1, PendingIntent var2) throws RemoteException;

    public Location getLastLocation();

    public void lY();

    public void removeAllListeners();

    public void removeLocationUpdates(PendingIntent var1) throws RemoteException;

    public void removeLocationUpdates(LocationListener var1) throws RemoteException;

    public void requestLocationUpdates(LocationRequest var1, PendingIntent var2) throws RemoteException;

    public void requestLocationUpdates(LocationRequest var1, LocationListener var2, Looper var3) throws RemoteException;

    public void setMockLocation(Location var1) throws RemoteException;

    public void setMockMode(boolean var1) throws RemoteException;

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends Handler {
        private final LocationListener aeU;

        public a(LocationListener var1);

        public a(LocationListener var1, Looper var2);

        @Override
        public void handleMessage(Message var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class b
    extends a.a {
        private Handler aeV;

        b(LocationListener var1, Looper var2);

        @Override
        public void onLocationChanged(Location var1);

        public void release();
    }

}

