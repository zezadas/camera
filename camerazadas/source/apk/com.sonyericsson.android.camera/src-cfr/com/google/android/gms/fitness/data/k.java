/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.data.DataPoint;

public interface k
extends IInterface {
    public void c(DataPoint var1) throws RemoteException;

    public static abstract class com.google.android.gms.fitness.data.k$a
    extends Binder
    implements k {
        public com.google.android.gms.fitness.data.k$a() {
            this.attachInterface(this, "com.google.android.gms.fitness.data.IDataSourceListener");
        }

        public static k an(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.data.IDataSourceListener");
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
                    parcel.writeString("com.google.android.gms.fitness.data.IDataSourceListener");
                    return true;
                }
                case 1: 
            }
            object.enforceInterface("com.google.android.gms.fitness.data.IDataSourceListener");
            object = object.readInt() != 0 ? DataPoint.CREATOR.createFromParcel((Parcel)object) : null;
            this.c((DataPoint)object);
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
            public void c(DataPoint dataPoint) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.data.IDataSourceListener");
                    if (dataPoint != null) {
                        parcel.writeInt(1);
                        dataPoint.writeToParcel(parcel, 0);
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

