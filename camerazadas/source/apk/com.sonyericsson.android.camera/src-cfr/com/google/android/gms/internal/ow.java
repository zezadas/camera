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
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.internal.op;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.MaskedWallet;

public interface ow
extends IInterface {
    public void a(int var1, FullWallet var2, Bundle var3) throws RemoteException;

    public void a(int var1, MaskedWallet var2, Bundle var3) throws RemoteException;

    public void a(int var1, boolean var2, Bundle var3) throws RemoteException;

    public void a(Status var1, op var2, Bundle var3) throws RemoteException;

    public void i(int var1, Bundle var2) throws RemoteException;

    public static abstract class com.google.android.gms.internal.ow$a
    extends Binder
    implements ow {
        public com.google.android.gms.internal.ow$a() {
            this.attachInterface(this, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
        }

        public static ow bO(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
            if (iInterface != null && iInterface instanceof ow) {
                return (ow)iInterface;
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
                    parcel.writeString("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    n = object.readInt();
                    MaskedWallet maskedWallet = object.readInt() != 0 ? MaskedWallet.CREATOR.createFromParcel((Parcel)object) : null;
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a(n, maskedWallet, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    n = object.readInt();
                    FullWallet fullWallet = object.readInt() != 0 ? FullWallet.CREATOR.createFromParcel((Parcel)object) : null;
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a(n, fullWallet, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    n = object.readInt();
                    boolean bl = object.readInt() != 0;
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a(n, bl, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 4: {
                    object.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    n = object.readInt();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.i(n, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 5: 
            }
            object.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
            Status status = object.readInt() != 0 ? Status.CREATOR.createFromParcel((Parcel)object) : null;
            op op = object.readInt() != 0 ? op.CREATOR.createFromParcel((Parcel)object) : null;
            object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
            this.a(status, op, (Bundle)object);
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements ow {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(int n, FullWallet fullWallet, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    parcel.writeInt(n);
                    if (fullWallet != null) {
                        parcel.writeInt(1);
                        fullWallet.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(int n, MaskedWallet maskedWallet, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    parcel.writeInt(n);
                    if (maskedWallet != null) {
                        parcel.writeInt(1);
                        maskedWallet.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(int n, boolean bl, Bundle bundle) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    parcel.writeInt(n);
                    n = bl ? n2 : 0;
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var3_4) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var3_4;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(Status status, op op, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    if (status != null) {
                        parcel.writeInt(1);
                        status.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (op != null) {
                        parcel.writeInt(1);
                        op.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public IBinder asBinder() {
                return this.lb;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void i(int n, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(4, parcel, parcel2, 0);
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

