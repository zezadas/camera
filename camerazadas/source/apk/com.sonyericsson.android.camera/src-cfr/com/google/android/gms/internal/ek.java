/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public interface ek
extends IInterface {
    public void finishPurchase() throws RemoteException;

    public String getProductId() throws RemoteException;

    public Intent getPurchaseData() throws RemoteException;

    public int getResultCode() throws RemoteException;

    public boolean isVerified() throws RemoteException;

    public static abstract class com.google.android.gms.internal.ek$a
    extends Binder
    implements ek {
        public com.google.android.gms.internal.ek$a() {
            this.attachInterface(this, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
        }

        public static ek w(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
            if (iInterface != null && iInterface instanceof ek) {
                return (ek)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            int n3 = 0;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
                    object = this.getProductId();
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
                    object = this.getPurchaseData();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
                    n = this.getResultCode();
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 4: {
                    object.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
                    boolean bl = this.isVerified();
                    parcel.writeNoException();
                    n = n3;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 5: 
            }
            object.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
            this.finishPurchase();
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements ek {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            @Override
            public void finishPurchase() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
                    this.lb.transact(5, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public String getProductId() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public Intent getPurchaseData() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
                    this.lb.transact(2, parcel, parcel2, 0);
                    parcel2.readException();
                    Intent intent = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return intent;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public int getResultCode() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public boolean isVerified() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
                    this.lb.transact(4, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    if (n != 0) {
                        bl = true;
                    }
                    parcel2.recycle();
                    parcel.recycle();
                    return bl;
                }
                catch (Throwable var5_5) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var5_5;
                }
            }
        }

    }

}

