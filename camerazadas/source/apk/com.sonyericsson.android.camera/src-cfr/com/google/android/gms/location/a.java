/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.location;

import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public interface a
extends IInterface {
    public void onLocationChanged(Location var1) throws RemoteException;

    public static abstract class com.google.android.gms.location.a$a
    extends Binder
    implements com.google.android.gms.location.a {
        public com.google.android.gms.location.a$a() {
            this.attachInterface(this, "com.google.android.gms.location.ILocationListener");
        }

        public static com.google.android.gms.location.a aI(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
            if (iInterface != null && iInterface instanceof com.google.android.gms.location.a) {
                return (com.google.android.gms.location.a)iInterface;
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
                    parcel.writeString("com.google.android.gms.location.ILocationListener");
                    return true;
                }
                case 1: 
            }
            object.enforceInterface("com.google.android.gms.location.ILocationListener");
            object = object.readInt() != 0 ? Location.CREATOR.createFromParcel((Parcel)object) : null;
            this.onLocationChanged((Location)object);
            return true;
        }

        private static class a
        implements com.google.android.gms.location.a {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void onLocationChanged(Location location) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.ILocationListener");
                    if (location != null) {
                        parcel.writeInt(1);
                        location.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(1, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }
        }

    }

}

