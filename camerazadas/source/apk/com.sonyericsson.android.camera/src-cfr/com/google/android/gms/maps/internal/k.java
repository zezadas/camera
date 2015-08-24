/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.i;

public interface k
extends IInterface {
    public void onMapLongClick(LatLng var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.internal.k$a
    extends Binder
    implements k {
        public com.google.android.gms.maps.internal.k$a() {
            this.attachInterface(this, "com.google.android.gms.maps.internal.IOnMapLongClickListener");
        }

        public static k bb(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMapLongClickListener");
            if (iInterface != null && iInterface instanceof k) {
                return (k)iInterface;
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
                    parcel.writeString("com.google.android.gms.maps.internal.IOnMapLongClickListener");
                    return true;
                }
                case 1: 
            }
            object.enforceInterface("com.google.android.gms.maps.internal.IOnMapLongClickListener");
            object = object.readInt() != 0 ? LatLng.CREATOR.cM((Parcel)object) : null;
            this.onMapLongClick((LatLng)object);
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements k {
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
            public void onMapLongClick(LatLng latLng) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMapLongClickListener");
                    if (latLng != null) {
                        parcel.writeInt(1);
                        latLng.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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

