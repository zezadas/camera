/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.az;
import com.google.android.gms.internal.ct;

public interface be
extends IInterface {
    public IBinder a(d var1, ay var2, String var3, ct var4, int var5) throws RemoteException;

    public static abstract class com.google.android.gms.internal.be$a
    extends Binder
    implements be {
        public static be g(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            if (iInterface != null && iInterface instanceof be) {
                return (be)iInterface;
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
                    parcel.writeString("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    return true;
                }
                case 1: 
            }
            object.enforceInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            d d = d.a.am(object.readStrongBinder());
            ay ay = object.readInt() != 0 ? ay.CREATOR.c((Parcel)object) : null;
            object = this.a(d, ay, object.readString(), ct.a.l(object.readStrongBinder()), object.readInt());
            parcel.writeNoException();
            parcel.writeStrongBinder((IBinder)object);
            return true;
        }

        private static class a
        implements be {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public IBinder a(d object, ay ay, String string, ct ct, int n) throws RemoteException {
                Object var6_7 = null;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (ay != null) {
                        parcel.writeInt(1);
                        ay.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeString(string);
                    object = var6_7;
                    if (ct != null) {
                        object = ct.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readStrongBinder();
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

