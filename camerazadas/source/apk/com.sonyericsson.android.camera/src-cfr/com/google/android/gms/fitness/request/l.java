/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.data.BleDevice;

public interface l
extends IInterface {
    public void onDeviceFound(BleDevice var1) throws RemoteException;

    public void onScanStopped() throws RemoteException;

    public static abstract class com.google.android.gms.fitness.request.l$a
    extends Binder
    implements l {
        public com.google.android.gms.fitness.request.l$a() {
            this.attachInterface(this, "com.google.android.gms.fitness.request.IBleScanCallback");
        }

        public static l ay(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.request.IBleScanCallback");
            if (iInterface != null && iInterface instanceof l) {
                return (l)iInterface;
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
                    parcel.writeString("com.google.android.gms.fitness.request.IBleScanCallback");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.fitness.request.IBleScanCallback");
                    object = object.readInt() != 0 ? BleDevice.CREATOR.createFromParcel((Parcel)object) : null;
                    this.onDeviceFound((BleDevice)object);
                    return true;
                }
                case 2: 
            }
            object.enforceInterface("com.google.android.gms.fitness.request.IBleScanCallback");
            this.onScanStopped();
            return true;
        }

        private static class a
        implements l {
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
            public void onDeviceFound(BleDevice bleDevice) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.request.IBleScanCallback");
                    if (bleDevice != null) {
                        parcel.writeInt(1);
                        bleDevice.writeToParcel(parcel, 0);
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

            @Override
            public void onScanStopped() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.request.IBleScanCallback");
                    this.lb.transact(2, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }
        }

    }

}

