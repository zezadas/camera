/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface lw
extends IInterface {
    public void onAddGeofencesResult(int var1, String[] var2) throws RemoteException;

    public void onRemoveGeofencesByPendingIntentResult(int var1, PendingIntent var2) throws RemoteException;

    public void onRemoveGeofencesByRequestIdsResult(int var1, String[] var2) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.internal.lw$a
    extends Binder
    implements lw {
        public com.google.android.gms.internal.lw$a();

        public static lw aJ(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements lw {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public void onAddGeofencesResult(int var1, String[] var2) throws RemoteException;

            @Override
            public void onRemoveGeofencesByPendingIntentResult(int var1, PendingIntent var2) throws RemoteException;

            @Override
            public void onRemoveGeofencesByRequestIdsResult(int var1, String[] var2) throws RemoteException;
        }

    }

}

