/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface j
extends IInterface {
    public void onMapLoaded() throws RemoteException;

    public static abstract class com.google.android.gms.maps.internal.j$a
    extends Binder
    implements j {
        public com.google.android.gms.maps.internal.j$a() {
            this.attachInterface(this, "com.google.android.gms.maps.internal.IOnMapLoadedCallback");
        }

        public static j ba(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
            if (iInterface != null && iInterface instanceof j) {
                return (j)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel parcel2, int n2) throws RemoteException {
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, parcel2, n2);
                }
                case 1598968902: {
                    parcel2.writeString("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
                    return true;
                }
                case 1: 
            }
            parcel.enforceInterface("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
            this.onMapLoaded();
            parcel2.writeNoException();
            return true;
        }

        private static class a
        implements j {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            @Override
            public void onMapLoaded() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
                    this.lb.transact(1, parcel, parcel2, 0);
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

