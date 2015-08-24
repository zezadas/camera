/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface eg
extends IInterface {
    public String getProductId() throws RemoteException;

    public void recordPlayBillingResolution(int var1) throws RemoteException;

    public void recordResolution(int var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.eg$a
    extends Binder
    implements eg {
        public com.google.android.gms.internal.eg$a() {
            this.attachInterface(this, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
        }

        public static eg s(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
            if (iInterface != null && iInterface instanceof eg) {
                return (eg)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    object = this.getProductId();
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    this.recordResolution(object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 3: 
            }
            object.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
            this.recordPlayBillingResolution(object.readInt());
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements eg {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            @Override
            public String getProductId() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    String string = parcel2.readString();
                    return string;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void recordPlayBillingResolution(int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    parcel.writeInt(n);
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void recordResolution(int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    parcel.writeInt(n);
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

