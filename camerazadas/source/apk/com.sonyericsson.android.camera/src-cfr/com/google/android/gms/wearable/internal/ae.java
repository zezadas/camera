/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;
import com.google.android.gms.wearable.internal.ah;
import com.google.android.gms.wearable.internal.ak;

public interface ae
extends IInterface {
    public void Z(DataHolder var1) throws RemoteException;

    public void a(ah var1) throws RemoteException;

    public void a(ak var1) throws RemoteException;

    public void b(ak var1) throws RemoteException;

    public static abstract class com.google.android.gms.wearable.internal.ae$a
    extends Binder
    implements ae {
        public com.google.android.gms.wearable.internal.ae$a() {
            this.attachInterface(this, "com.google.android.gms.wearable.internal.IWearableListener");
        }

        public static ae bS(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableListener");
            if (iInterface != null && iInterface instanceof ae) {
                return (ae)iInterface;
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
            Object var8_7 = null;
            Object var5_8 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, (Parcel)object, n2);
                }
                case 1598968902: {
                    object.writeString("com.google.android.gms.wearable.internal.IWearableListener");
                    return true;
                }
                case 1: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                    object = var5_8;
                    if (parcel.readInt() != 0) {
                        object = DataHolder.CREATOR.z(parcel);
                    }
                    this.Z((DataHolder)object);
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                    object = var6_5;
                    if (parcel.readInt() != 0) {
                        object = ah.CREATOR.createFromParcel(parcel);
                    }
                    this.a((ah)object);
                    return true;
                }
                case 3: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                    object = var7_6;
                    if (parcel.readInt() != 0) {
                        object = ak.CREATOR.createFromParcel(parcel);
                    }
                    this.a((ak)object);
                    return true;
                }
                case 4: 
            }
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
            object = var8_7;
            if (parcel.readInt() != 0) {
                object = ak.CREATOR.createFromParcel(parcel);
            }
            this.b((ak)object);
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
            public void Z(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
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
            public void a(ah ah) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
                    if (ah != null) {
                        parcel.writeInt(1);
                        ah.writeToParcel(parcel, 0);
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
            public void a(ak ak) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
                    if (ak != null) {
                        parcel.writeInt(1);
                        ak.writeToParcel(parcel, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void b(ak ak) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
                    if (ak != null) {
                        parcel.writeInt(1);
                        ak.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(4, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }
        }

    }

}

