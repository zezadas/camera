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
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.or;
import com.google.android.gms.internal.os;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

public interface ou
extends IInterface {
    public or a(d var1, c var2, WalletFragmentOptions var3, os var4) throws RemoteException;

    public static abstract class com.google.android.gms.internal.ou$a
    extends Binder
    implements ou {
        public static ou bM(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
            if (iInterface != null && iInterface instanceof ou) {
                return (ou)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            Object var6_5 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
                    return true;
                }
                case 1: 
            }
            object.enforceInterface("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
            d d = d.a.am(object.readStrongBinder());
            c c = c.a.al(object.readStrongBinder());
            Object object2 = object.readInt() != 0 ? WalletFragmentOptions.CREATOR.createFromParcel((Parcel)object) : null;
            object2 = this.a(d, c, (WalletFragmentOptions)object2, os.a.bK(object.readStrongBinder()));
            parcel.writeNoException();
            object = var6_5;
            if (object2 != null) {
                object = object2.asBinder();
            }
            parcel.writeStrongBinder((IBinder)object);
            return true;
        }

        private static class a
        implements ou {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public or a(d object, c c, WalletFragmentOptions walletFragmentOptions, os os) throws RemoteException {
                Object var5_6 = null;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    object = c != null ? c.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (walletFragmentOptions != null) {
                        parcel.writeInt(1);
                        walletFragmentOptions.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var5_6;
                    if (os != null) {
                        object = os.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    object = or.a.bJ(parcel2.readStrongBinder());
                    parcel2.recycle();
                    parcel.recycle();
                    return object;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            @Override
            public IBinder asBinder() {
                return this.lb;
            }
        }

    }

}

