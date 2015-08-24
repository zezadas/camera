/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.DataTypeResult;

public interface ko
extends IInterface {
    public void a(DataTypeResult var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.ko$a
    extends Binder
    implements ko {
        public com.google.android.gms.internal.ko$a() {
            this.attachInterface(this, "com.google.android.gms.fitness.internal.IDataTypeCallback");
        }

        public static ko ar(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IDataTypeCallback");
            if (iInterface != null && iInterface instanceof ko) {
                return (ko)iInterface;
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
                    parcel.writeString("com.google.android.gms.fitness.internal.IDataTypeCallback");
                    return true;
                }
                case 1: 
            }
            object.enforceInterface("com.google.android.gms.fitness.internal.IDataTypeCallback");
            object = object.readInt() != 0 ? DataTypeResult.CREATOR.createFromParcel((Parcel)object) : null;
            this.a((DataTypeResult)object);
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements ko {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(DataTypeResult dataTypeResult) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IDataTypeCallback");
                    if (dataTypeResult != null) {
                        parcel.writeInt(1);
                        dataTypeResult.writeToParcel(parcel, 0);
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

            @Override
            public IBinder asBinder() {
                return this.lb;
            }
        }

    }

}

