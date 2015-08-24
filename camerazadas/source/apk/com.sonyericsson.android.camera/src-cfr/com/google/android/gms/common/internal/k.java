/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public interface k
extends IInterface {
    public void b(int var1, IBinder var2, Bundle var3) throws RemoteException;

    public static abstract class com.google.android.gms.common.internal.k$a
    extends Binder
    implements k {
        public com.google.android.gms.common.internal.k$a() {
            this.attachInterface(this, "com.google.android.gms.common.internal.IGmsCallbacks");
        }

        public static k P(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
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
                    parcel.writeString("com.google.android.gms.common.internal.IGmsCallbacks");
                    return true;
                }
                case 1: 
            }
            object.enforceInterface("com.google.android.gms.common.internal.IGmsCallbacks");
            n = object.readInt();
            IBinder iBinder = object.readStrongBinder();
            object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
            this.b(n, iBinder, (Bundle)object);
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
            public void b(int n, IBinder iBinder, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsCallbacks");
                    parcel.writeInt(n);
                    parcel.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
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

