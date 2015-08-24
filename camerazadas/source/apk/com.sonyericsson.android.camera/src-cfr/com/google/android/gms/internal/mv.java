/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;

public interface mv
extends IInterface {
    public void W(DataHolder var1) throws RemoteException;

    public void X(DataHolder var1) throws RemoteException;

    public void Y(DataHolder var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.mv$a
    extends Binder
    implements mv {
        public static mv aM(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
            if (iInterface != null && iInterface instanceof mv) {
                return (mv)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel object, int n2) throws RemoteException {
            Object var6_5 = null;
            Object var7_6 = null;
            Object var5_7 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, (Parcel)object, n2);
                }
                case 1598968902: {
                    object.writeString("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    return true;
                }
                case 1: {
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    object = var5_7;
                    if (parcel.readInt() != 0) {
                        object = DataHolder.CREATOR.z(parcel);
                    }
                    this.W((DataHolder)object);
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    object = var6_5;
                    if (parcel.readInt() != 0) {
                        object = DataHolder.CREATOR.z(parcel);
                    }
                    this.X((DataHolder)object);
                    return true;
                }
                case 3: 
            }
            parcel.enforceInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
            object = var7_6;
            if (parcel.readInt() != 0) {
                object = DataHolder.CREATOR.z(parcel);
            }
            this.Y((DataHolder)object);
            return true;
        }

        private static class a
        implements mv {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void W(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(1, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void X(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(2, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void Y(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(3, parcel, null, 1);
                    return;
                }
                finally {
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

