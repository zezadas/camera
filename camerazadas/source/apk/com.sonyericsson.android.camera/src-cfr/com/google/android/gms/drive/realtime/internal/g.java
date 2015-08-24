/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;
import com.google.android.gms.drive.realtime.internal.event.ParcelableEventList;

public interface g
extends IInterface {
    public void a(DataHolder var1, ParcelableEventList var2) throws RemoteException;

    public void o(Status var1) throws RemoteException;

    public static abstract class com.google.android.gms.drive.realtime.internal.g$a
    extends Binder
    implements g {
        public static g ac(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback");
            if (iInterface != null && iInterface instanceof g) {
                return (g)iInterface;
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
            void var5_10;
            Object var5_5 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback");
                    return true;
                }
                case 1: {
                    void var5_7;
                    object.enforceInterface("com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback");
                    if (object.readInt() != 0) {
                        DataHolder dataHolder = DataHolder.CREATOR.z((Parcel)object);
                    } else {
                        Object var5_8 = null;
                    }
                    object = object.readInt() != 0 ? ParcelableEventList.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((DataHolder)var5_7, (ParcelableEventList)object);
                    parcel.writeNoException();
                    return true;
                }
                case 2: 
            }
            object.enforceInterface("com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback");
            if (object.readInt() != 0) {
                Status status = Status.CREATOR.createFromParcel((Parcel)object);
            }
            this.o((Status)var5_10);
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements g {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(DataHolder dataHolder, ParcelableEventList parcelableEventList) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (parcelableEventList != null) {
                        parcel.writeInt(1);
                        parcelableEventList.writeToParcel(parcel, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void o(Status status) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IDataHolderEventCallback");
                    if (status != null) {
                        parcel.writeInt(1);
                        status.writeToParcel(parcel, 0);
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
        }

    }

}

