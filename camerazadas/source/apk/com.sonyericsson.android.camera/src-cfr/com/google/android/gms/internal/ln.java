/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public interface ln
extends IInterface {
    public void g(int var1, Bundle var2) throws RemoteException;

    public static abstract class com.google.android.gms.internal.ln$a
    extends Binder
    implements ln {
        public com.google.android.gms.internal.ln$a() {
            this.attachInterface(this, "com.google.android.gms.identity.intents.internal.IAddressCallbacks");
        }

        public static ln aG(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.identity.intents.internal.IAddressCallbacks");
            if (iInterface != null && iInterface instanceof ln) {
                return (ln)iInterface;
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
                    parcel.writeString("com.google.android.gms.identity.intents.internal.IAddressCallbacks");
                    return true;
                }
                case 2: 
            }
            object.enforceInterface("com.google.android.gms.identity.intents.internal.IAddressCallbacks");
            n = object.readInt();
            object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
            this.g(n, (Bundle)object);
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements ln {
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
            public void g(int n, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.identity.intents.internal.IAddressCallbacks");
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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

