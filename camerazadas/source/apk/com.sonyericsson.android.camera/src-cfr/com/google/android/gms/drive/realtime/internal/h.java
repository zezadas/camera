/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface h
extends IInterface {
    public void c(boolean var1, boolean var2) throws RemoteException;

    public static abstract class com.google.android.gms.drive.realtime.internal.h$a
    extends Binder
    implements h {
        public static h ad(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback");
            if (iInterface != null && iInterface instanceof h) {
                return (h)iInterface;
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
        public boolean onTransact(int n, Parcel parcel, Parcel parcel2, int n2) throws RemoteException {
            boolean bl = false;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, parcel2, n2);
                }
                case 1598968902: {
                    parcel2.writeString("com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback");
                    return true;
                }
                case 1: 
            }
            parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback");
            boolean bl2 = parcel.readInt() != 0;
            if (parcel.readInt() != 0) {
                bl = true;
            }
            this.c(bl2, bl);
            parcel2.writeNoException();
            return true;
        }

        private static class a
        implements h {
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
            public void c(boolean bl, boolean bl2) throws RemoteException {
                int n = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback");
                    int n2 = bl ? 1 : 0;
                    parcel.writeInt(n2);
                    n2 = bl2 ? n : 0;
                    parcel.writeInt(n2);
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var7_7) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var7_7;
                }
            }
        }

    }

}

