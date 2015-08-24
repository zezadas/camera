/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public interface lw
extends IInterface {
    public void onAddGeofencesResult(int var1, String[] var2) throws RemoteException;

    public void onRemoveGeofencesByPendingIntentResult(int var1, PendingIntent var2) throws RemoteException;

    public void onRemoveGeofencesByRequestIdsResult(int var1, String[] var2) throws RemoteException;

    public static abstract class com.google.android.gms.internal.lw$a
    extends Binder
    implements lw {
        public com.google.android.gms.internal.lw$a() {
            this.attachInterface(this, "com.google.android.gms.location.internal.IGeofencerCallbacks");
        }

        public static lw aJ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
            if (iInterface != null && iInterface instanceof lw) {
                return (lw)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.location.internal.IGeofencerCallbacks");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
                    this.onAddGeofencesResult(object.readInt(), object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
                    this.onRemoveGeofencesByRequestIdsResult(object.readInt(), object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 3: 
            }
            object.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
            n = object.readInt();
            object = object.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel((Parcel)object) : null;
            this.onRemoveGeofencesByPendingIntentResult(n, (PendingIntent)object);
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements lw {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            @Override
            public void onAddGeofencesResult(int n, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGeofencerCallbacks");
                    parcel.writeInt(n);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void onRemoveGeofencesByPendingIntentResult(int n, PendingIntent pendingIntent) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGeofencerCallbacks");
                    parcel.writeInt(n);
                    if (pendingIntent != null) {
                        parcel.writeInt(1);
                        pendingIntent.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void onRemoveGeofencesByRequestIdsResult(int n, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGeofencerCallbacks");
                    parcel.writeInt(n);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(2, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }
        }

    }

}

