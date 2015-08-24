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
import com.google.android.gms.fitness.result.SessionStopResult;

public interface ks
extends IInterface {
    public void a(SessionStopResult var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.ks$a
    extends Binder
    implements ks {
        public com.google.android.gms.internal.ks$a() {
            this.attachInterface(this, "com.google.android.gms.fitness.internal.ISessionStopCallback");
        }

        public static ks av(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.ISessionStopCallback");
            if (iInterface != null && iInterface instanceof ks) {
                return (ks)iInterface;
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
                    parcel.writeString("com.google.android.gms.fitness.internal.ISessionStopCallback");
                    return true;
                }
                case 1: 
            }
            object.enforceInterface("com.google.android.gms.fitness.internal.ISessionStopCallback");
            object = object.readInt() != 0 ? SessionStopResult.CREATOR.createFromParcel((Parcel)object) : null;
            this.a((SessionStopResult)object);
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements ks {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(SessionStopResult sessionStopResult) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.ISessionStopCallback");
                    if (sessionStopResult != null) {
                        parcel.writeInt(1);
                        sessionStopResult.writeToParcel(parcel, 0);
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

            @Override
            public IBinder asBinder() {
                return this.lb;
            }
        }

    }

}

