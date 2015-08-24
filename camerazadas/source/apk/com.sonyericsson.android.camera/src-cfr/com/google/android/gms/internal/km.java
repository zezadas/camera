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
import com.google.android.gms.fitness.result.DataReadResult;

public interface km
extends IInterface {
    public void a(DataReadResult var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.km$a
    extends Binder
    implements km {
        public com.google.android.gms.internal.km$a() {
            this.attachInterface(this, "com.google.android.gms.fitness.internal.IDataReadCallback");
        }

        public static km ap(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IDataReadCallback");
            if (iInterface != null && iInterface instanceof km) {
                return (km)iInterface;
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
                    parcel.writeString("com.google.android.gms.fitness.internal.IDataReadCallback");
                    return true;
                }
                case 1: 
            }
            object.enforceInterface("com.google.android.gms.fitness.internal.IDataReadCallback");
            object = object.readInt() != 0 ? DataReadResult.CREATOR.createFromParcel((Parcel)object) : null;
            this.a((DataReadResult)object);
            return true;
        }

        private static class a
        implements km {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(DataReadResult dataReadResult) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IDataReadCallback");
                    if (dataReadResult != null) {
                        parcel.writeInt(1);
                        dataReadResult.writeToParcel(parcel, 0);
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
            public IBinder asBinder() {
                return this.lb;
            }
        }

    }

}

