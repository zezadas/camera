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
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.internal.ln;

public interface lo
extends IInterface {
    public void a(ln var1, UserAddressRequest var2, Bundle var3) throws RemoteException;

    public static abstract class com.google.android.gms.internal.lo$a
    extends Binder
    implements lo {
        public static lo aH(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.identity.intents.internal.IAddressService");
            if (iInterface != null && iInterface instanceof lo) {
                return (lo)iInterface;
            }
            return new a(iBinder);
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
                    parcel.writeString("com.google.android.gms.identity.intents.internal.IAddressService");
                    return true;
                }
                case 2: 
            }
            object.enforceInterface("com.google.android.gms.identity.intents.internal.IAddressService");
            ln ln = ln.a.aG(object.readStrongBinder());
            UserAddressRequest userAddressRequest = object.readInt() != 0 ? UserAddressRequest.CREATOR.createFromParcel((Parcel)object) : null;
            object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
            this.a(ln, userAddressRequest, (Bundle)object);
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements lo {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ln object, UserAddressRequest userAddressRequest, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.identity.intents.internal.IAddressService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (userAddressRequest != null) {
                        parcel.writeInt(1);
                        userAddressRequest.writeToParcel(parcel, 0);
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
                    parcel2.recycle();
                    parcel.recycle();
                    return;
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

