/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.lw;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mc;
import com.google.android.gms.internal.mf;
import com.google.android.gms.internal.mh;
import com.google.android.gms.internal.mj;
import com.google.android.gms.internal.ml;
import com.google.android.gms.internal.mn;
import com.google.android.gms.internal.mr;
import com.google.android.gms.internal.mt;
import com.google.android.gms.internal.mv;
import com.google.android.gms.internal.mx;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.c;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.List;

public interface lx
extends IInterface {
    public void a(long var1, boolean var3, PendingIntent var4) throws RemoteException;

    public void a(PendingIntent var1) throws RemoteException;

    public void a(PendingIntent var1, lw var2, String var3) throws RemoteException;

    public void a(Location var1, int var2) throws RemoteException;

    public void a(lw var1, String var2) throws RemoteException;

    public void a(ma var1, PendingIntent var2) throws RemoteException;

    public void a(ma var1, com.google.android.gms.location.a var2) throws RemoteException;

    public void a(mh var1, mx var2, PendingIntent var3) throws RemoteException;

    public void a(mj var1, mx var2, mv var3) throws RemoteException;

    public void a(ml var1, mx var2) throws RemoteException;

    public void a(mn var1, mx var2, PendingIntent var3) throws RemoteException;

    public void a(mr var1, mx var2, mv var3) throws RemoteException;

    public void a(mt var1, LatLngBounds var2, List<String> var3, mx var4, mv var5) throws RemoteException;

    public void a(mx var1, PendingIntent var2) throws RemoteException;

    public void a(LocationRequest var1, PendingIntent var2) throws RemoteException;

    public void a(LocationRequest var1, com.google.android.gms.location.a var2) throws RemoteException;

    public void a(LocationRequest var1, com.google.android.gms.location.a var2, String var3) throws RemoteException;

    public void a(com.google.android.gms.location.a var1) throws RemoteException;

    public void a(LatLng var1, mj var2, mx var3, mv var4) throws RemoteException;

    public void a(LatLngBounds var1, int var2, mj var3, mx var4, mv var5) throws RemoteException;

    public void a(LatLngBounds var1, int var2, String var3, mj var4, mx var5, mv var6) throws RemoteException;

    public void a(String var1, mx var2, mv var3) throws RemoteException;

    public void a(String var1, LatLngBounds var2, mf var3, mx var4, mv var5) throws RemoteException;

    public void a(List<mc> var1, PendingIntent var2, lw var3, String var4) throws RemoteException;

    public void a(String[] var1, lw var2, String var3) throws RemoteException;

    public void b(mx var1, PendingIntent var2) throws RemoteException;

    public void b(String var1, mx var2, mv var3) throws RemoteException;

    public Location bW(String var1) throws RemoteException;

    public c bX(String var1) throws RemoteException;

    public Location lV() throws RemoteException;

    public IBinder lW() throws RemoteException;

    public IBinder lX() throws RemoteException;

    public void removeActivityUpdates(PendingIntent var1) throws RemoteException;

    public void setMockLocation(Location var1) throws RemoteException;

    public void setMockMode(boolean var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.lx$a
    extends Binder
    implements lx {
        public static lx aK(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements lx {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(long var1, boolean var3, PendingIntent var4) throws RemoteException;

            @Override
            public void a(PendingIntent var1) throws RemoteException;

            @Override
            public void a(PendingIntent var1, lw var2, String var3) throws RemoteException;

            @Override
            public void a(Location var1, int var2) throws RemoteException;

            @Override
            public void a(lw var1, String var2) throws RemoteException;

            @Override
            public void a(ma var1, PendingIntent var2) throws RemoteException;

            @Override
            public void a(ma var1, com.google.android.gms.location.a var2) throws RemoteException;

            @Override
            public void a(mh var1, mx var2, PendingIntent var3) throws RemoteException;

            @Override
            public void a(mj var1, mx var2, mv var3) throws RemoteException;

            @Override
            public void a(ml var1, mx var2) throws RemoteException;

            @Override
            public void a(mn var1, mx var2, PendingIntent var3) throws RemoteException;

            @Override
            public void a(mr var1, mx var2, mv var3) throws RemoteException;

            @Override
            public void a(mt var1, LatLngBounds var2, List<String> var3, mx var4, mv var5) throws RemoteException;

            @Override
            public void a(mx var1, PendingIntent var2) throws RemoteException;

            @Override
            public void a(LocationRequest var1, PendingIntent var2) throws RemoteException;

            @Override
            public void a(LocationRequest var1, com.google.android.gms.location.a var2) throws RemoteException;

            @Override
            public void a(LocationRequest var1, com.google.android.gms.location.a var2, String var3) throws RemoteException;

            @Override
            public void a(com.google.android.gms.location.a var1) throws RemoteException;

            @Override
            public void a(LatLng var1, mj var2, mx var3, mv var4) throws RemoteException;

            @Override
            public void a(LatLngBounds var1, int var2, mj var3, mx var4, mv var5) throws RemoteException;

            @Override
            public void a(LatLngBounds var1, int var2, String var3, mj var4, mx var5, mv var6) throws RemoteException;

            @Override
            public void a(String var1, mx var2, mv var3) throws RemoteException;

            @Override
            public void a(String var1, LatLngBounds var2, mf var3, mx var4, mv var5) throws RemoteException;

            @Override
            public void a(List<mc> var1, PendingIntent var2, lw var3, String var4) throws RemoteException;

            @Override
            public void a(String[] var1, lw var2, String var3) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(mx var1, PendingIntent var2) throws RemoteException;

            @Override
            public void b(String var1, mx var2, mv var3) throws RemoteException;

            @Override
            public Location bW(String var1) throws RemoteException;

            @Override
            public c bX(String var1) throws RemoteException;

            @Override
            public Location lV() throws RemoteException;

            @Override
            public IBinder lW() throws RemoteException;

            @Override
            public IBinder lX() throws RemoteException;

            @Override
            public void removeActivityUpdates(PendingIntent var1) throws RemoteException;

            @Override
            public void setMockLocation(Location var1) throws RemoteException;

            @Override
            public void setMockMode(boolean var1) throws RemoteException;
        }

    }

}

