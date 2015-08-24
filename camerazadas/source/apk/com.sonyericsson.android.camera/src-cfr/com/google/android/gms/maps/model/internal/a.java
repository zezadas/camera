/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model.internal;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

public interface a
extends IInterface {
    public d b(Bitmap var1) throws RemoteException;

    public d c(float var1) throws RemoteException;

    public d ca(String var1) throws RemoteException;

    public d cb(String var1) throws RemoteException;

    public d cc(String var1) throws RemoteException;

    public d eN(int var1) throws RemoteException;

    public d mS() throws RemoteException;

    public static abstract class com.google.android.gms.maps.model.internal.a$a
    extends Binder
    implements com.google.android.gms.maps.model.internal.a {
        public static com.google.android.gms.maps.model.internal.a bp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
            if (iInterface != null && iInterface instanceof com.google.android.gms.maps.model.internal.a) {
                return (com.google.android.gms.maps.model.internal.a)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            Object var7_5 = null;
            Object var8_6 = null;
            Object var9_7 = null;
            d d = null;
            Object var10_9 = null;
            d d2 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    object = this.eN(object.readInt());
                    parcel.writeNoException();
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    d = this.ca(object.readString());
                    parcel.writeNoException();
                    object = d2;
                    if (d != null) {
                        object = d.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    d = this.cb(object.readString());
                    parcel.writeNoException();
                    object = var7_5;
                    if (d != null) {
                        object = d.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 4: {
                    object.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    d = this.mS();
                    parcel.writeNoException();
                    object = var8_6;
                    if (d != null) {
                        object = d.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 5: {
                    object.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    d = this.c(object.readFloat());
                    parcel.writeNoException();
                    object = var9_7;
                    if (d != null) {
                        object = d.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 6: {
                    object.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    object = object.readInt() != 0 ? Bitmap.CREATOR.createFromParcel((Parcel)object) : null;
                    d2 = this.b((Bitmap)object);
                    parcel.writeNoException();
                    object = d;
                    if (d2 != null) {
                        object = d2.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 7: 
            }
            object.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
            d = this.cc(object.readString());
            parcel.writeNoException();
            object = var10_9;
            if (d != null) {
                object = d.asBinder();
            }
            parcel.writeStrongBinder((IBinder)object);
            return true;
        }

        private static class a
        implements com.google.android.gms.maps.model.internal.a {
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
            public d b(Bitmap object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(6, parcel, parcel2, 0);
                    parcel2.readException();
                    object = d.a.am(parcel2.readStrongBinder());
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public d c(float f) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    parcel.writeFloat(f);
                    this.lb.transact(5, parcel, parcel2, 0);
                    parcel2.readException();
                    d d = d.a.am(parcel2.readStrongBinder());
                    return d;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public d ca(String object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    parcel.writeString((String)object);
                    this.lb.transact(2, parcel, parcel2, 0);
                    parcel2.readException();
                    object = d.a.am(parcel2.readStrongBinder());
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public d cb(String object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    parcel.writeString((String)object);
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    object = d.a.am(parcel2.readStrongBinder());
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public d cc(String object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    parcel.writeString((String)object);
                    this.lb.transact(7, parcel, parcel2, 0);
                    parcel2.readException();
                    object = d.a.am(parcel2.readStrongBinder());
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public d eN(int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    parcel.writeInt(n);
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    d d = d.a.am(parcel2.readStrongBinder());
                    return d;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public d mS() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
                    this.lb.transact(4, parcel, parcel2, 0);
                    parcel2.readException();
                    d d = d.a.am(parcel2.readStrongBinder());
                    return d;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }
        }

    }

}

