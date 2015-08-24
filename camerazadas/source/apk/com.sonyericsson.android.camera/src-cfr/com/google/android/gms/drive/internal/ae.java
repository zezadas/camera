/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ae
extends IInterface {
    public void L(boolean var1) throws RemoteException;

    public static abstract class com.google.android.gms.drive.internal.ae$a
    extends Binder
    implements ae {
        public static ae X(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.internal.IEventReleaseCallback");
            if (iInterface != null && iInterface instanceof ae) {
                return (ae)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel parcel2, int n2) throws RemoteException {
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, parcel2, n2);
                }
                case 1598968902: {
                    parcel2.writeString("com.google.android.gms.drive.internal.IEventReleaseCallback");
                    return true;
                }
                case 1: 
            }
            parcel.enforceInterface("com.google.android.gms.drive.internal.IEventReleaseCallback");
            boolean bl = parcel.readInt() != 0;
            this.L(bl);
            return true;
        }

        private static class a
        implements ae {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void L(boolean bl) throws RemoteException {
                int n = 1;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IEventReleaseCallback");
                    if (!bl) {
                        n = 0;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(1, parcel, null, 1);
                    parcel.recycle();
                    return;
                }
                catch (Throwable var4_4) {
                    parcel.recycle();
                    throw var4_4;
                }
            }

            @Override
            public IBinder asBinder() {
                return this.lb;
            }
        }

    }

}

