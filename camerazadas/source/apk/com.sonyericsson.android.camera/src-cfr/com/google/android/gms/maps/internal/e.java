/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.CameraPosition;

public interface e
extends IInterface {
    public void onCameraChange(CameraPosition var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.internal.e$a
    extends Binder
    implements e {
        public com.google.android.gms.maps.internal.e$a() {
            this.attachInterface(this, "com.google.android.gms.maps.internal.IOnCameraChangeListener");
        }

        public static e aV(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnCameraChangeListener");
            if (iInterface != null && iInterface instanceof e) {
                return (e)iInterface;
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
                    parcel.writeString("com.google.android.gms.maps.internal.IOnCameraChangeListener");
                    return true;
                }
                case 1: 
            }
            object.enforceInterface("com.google.android.gms.maps.internal.IOnCameraChangeListener");
            object = object.readInt() != 0 ? CameraPosition.CREATOR.cI((Parcel)object) : null;
            this.onCameraChange((CameraPosition)object);
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements e {
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
            public void onCameraChange(CameraPosition cameraPosition) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IOnCameraChangeListener");
                    if (cameraPosition != null) {
                        parcel.writeInt(1);
                        cameraPosition.writeToParcel(parcel, 0);
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

