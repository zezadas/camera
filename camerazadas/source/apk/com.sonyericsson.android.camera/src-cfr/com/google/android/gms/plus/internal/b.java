/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;
import com.google.android.gms.internal.jp;
import com.google.android.gms.internal.jq;
import com.google.android.gms.internal.nz;
import com.google.android.gms.internal.oa;

public interface b
extends IInterface {
    public void a(int var1, Bundle var2, Bundle var3) throws RemoteException;

    public void a(int var1, Bundle var2, ParcelFileDescriptor var3) throws RemoteException;

    public void a(int var1, Bundle var2, jp var3) throws RemoteException;

    public void a(int var1, nz var2) throws RemoteException;

    public void a(DataHolder var1, String var2) throws RemoteException;

    public void a(DataHolder var1, String var2, String var3) throws RemoteException;

    public void aB(Status var1) throws RemoteException;

    public void ce(String var1) throws RemoteException;

    public void cf(String var1) throws RemoteException;

    public void h(int var1, Bundle var2) throws RemoteException;

    public static abstract class com.google.android.gms.plus.internal.b$a
    extends Binder
    implements b {
        public com.google.android.gms.plus.internal.b$a() {
            this.attachInterface(this, "com.google.android.gms.plus.internal.IPlusCallbacks");
        }

        public static b bE(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
            if (iInterface != null && iInterface instanceof b) {
                return (b)iInterface;
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
            void var5_29;
            jp jp = null;
            Object var7_6 = null;
            Object var8_7 = null;
            Object var9_8 = null;
            Object var5_9 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.plus.internal.IPlusCallbacks");
                    return true;
                }
                case 1: {
                    void var5_11;
                    object.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    n = object.readInt();
                    if (object.readInt() != 0) {
                        Bundle bundle = Bundle.CREATOR.createFromParcel((Parcel)object);
                    } else {
                        Object var5_12 = null;
                    }
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a(n, (Bundle)var5_11, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 2: {
                    void var5_14;
                    object.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    n = object.readInt();
                    if (object.readInt() != 0) {
                        Bundle bundle = Bundle.CREATOR.createFromParcel((Parcel)object);
                    } else {
                        Object var5_15 = null;
                    }
                    object = object.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a(n, (Bundle)var5_14, (ParcelFileDescriptor)object);
                    parcel.writeNoException();
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    this.ce(object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 4: {
                    void var5_17;
                    object.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    if (object.readInt() != 0) {
                        DataHolder dataHolder = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.a((DataHolder)var5_17, object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5: {
                    void var5_19;
                    object.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    n = object.readInt();
                    if (object.readInt() != 0) {
                        Bundle bundle = Bundle.CREATOR.createFromParcel((Parcel)object);
                    } else {
                        Object var5_20 = null;
                    }
                    if (object.readInt() != 0) {
                        jp = jp.CREATOR.M((Parcel)object);
                    }
                    this.a(n, (Bundle)var5_19, jp);
                    parcel.writeNoException();
                    return true;
                }
                case 6: {
                    void var5_23;
                    object.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    Object var5_21 = var7_6;
                    if (object.readInt() != 0) {
                        DataHolder dataHolder = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.a((DataHolder)var5_23, object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 7: {
                    object.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    n = object.readInt();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.h(n, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 8: {
                    object.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    this.cf(object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 9: {
                    void var5_26;
                    object.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    n = object.readInt();
                    Object var5_24 = var8_7;
                    if (object.readInt() != 0) {
                        nz nz = nz.CREATOR.dd((Parcel)object);
                    }
                    this.a(n, (nz)var5_26);
                    parcel.writeNoException();
                    return true;
                }
                case 10: 
            }
            object.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
            Object var5_27 = var9_8;
            if (object.readInt() != 0) {
                Status status = Status.CREATOR.createFromParcel((Parcel)object);
            }
            this.aB((Status)var5_29);
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements b {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(int n, Bundle bundle, Bundle bundle2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (bundle2 != null) {
                        parcel.writeInt(1);
                        bundle2.writeToParcel(parcel, 0);
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
            public void a(int n, Bundle bundle, ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (parcelFileDescriptor != null) {
                        parcel.writeInt(1);
                        parcelFileDescriptor.writeToParcel(parcel, 0);
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
            public void a(int n, Bundle bundle, jp jp) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (jp != null) {
                        parcel.writeInt(1);
                        jp.writeToParcel(parcel, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(int n, nz nz) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                    parcel.writeInt(n);
                    if (nz != null) {
                        parcel.writeInt(1);
                        nz.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(9, parcel, parcel2, 0);
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
            public void a(DataHolder dataHolder, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeString(string);
                    this.lb.transact(4, parcel, parcel2, 0);
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
            public void a(DataHolder dataHolder, String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(6, parcel, parcel2, 0);
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
            public void aB(Status status) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                    if (status != null) {
                        parcel.writeInt(1);
                        status.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(10, parcel, parcel2, 0);
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

            @Override
            public void ce(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void cf(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(8, parcel, parcel2, 0);
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
            public void h(int n, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(7, parcel, parcel2, 0);
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

