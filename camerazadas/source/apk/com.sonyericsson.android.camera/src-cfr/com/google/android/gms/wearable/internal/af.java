/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.c;
import com.google.android.gms.wearable.internal.ad;
import com.google.android.gms.wearable.internal.aq;
import com.google.android.gms.wearable.internal.b;

public interface af
extends IInterface {
    public void a(ad var1) throws RemoteException;

    public void a(ad var1, Uri var2) throws RemoteException;

    public void a(ad var1, Asset var2) throws RemoteException;

    public void a(ad var1, PutDataRequest var2) throws RemoteException;

    public void a(ad var1, c var2) throws RemoteException;

    public void a(ad var1, aq var2) throws RemoteException;

    public void a(ad var1, b var2) throws RemoteException;

    public void a(ad var1, String var2) throws RemoteException;

    public void a(ad var1, String var2, String var3, byte[] var4) throws RemoteException;

    public void b(ad var1) throws RemoteException;

    public void b(ad var1, Uri var2) throws RemoteException;

    public void b(ad var1, c var2) throws RemoteException;

    public void b(ad var1, String var2) throws RemoteException;

    public void c(ad var1) throws RemoteException;

    public void c(ad var1, Uri var2) throws RemoteException;

    public void c(ad var1, String var2) throws RemoteException;

    public void d(ad var1) throws RemoteException;

    public void e(ad var1) throws RemoteException;

    public void f(ad var1) throws RemoteException;

    public void g(ad var1) throws RemoteException;

    public void h(ad var1) throws RemoteException;

    public void i(ad var1) throws RemoteException;

    public static abstract class com.google.android.gms.wearable.internal.af$a
    extends Binder
    implements af {
        public static af bT(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableService");
            if (iInterface != null && iInterface instanceof af) {
                return (af)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel parcel2, int n2) throws RemoteException {
            ad ad = null;
            ad ad2 = null;
            Object var8_7 = null;
            Object var9_8 = null;
            Object var10_9 = null;
            Object var11_10 = null;
            Object var12_11 = null;
            Object var13_12 = null;
            Object object = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, parcel2, n2);
                }
                case 1598968902: {
                    parcel2.writeString("com.google.android.gms.wearable.internal.IWearableService");
                    return true;
                }
                case 20: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    ad = ad.a.bR(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        object = c.CREATOR.createFromParcel(parcel);
                    }
                    this.a(ad, (c)object);
                    parcel2.writeNoException();
                    return true;
                }
                case 21: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    this.a(ad.a.bR(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                }
                case 22: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    this.a(ad.a.bR(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 23: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    this.b(ad.a.bR(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                }
                case 24: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    this.c(ad.a.bR(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                }
                case 6: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    ad2 = ad.a.bR(parcel.readStrongBinder());
                    object = ad;
                    if (parcel.readInt() != 0) {
                        object = PutDataRequest.CREATOR.createFromParcel(parcel);
                    }
                    this.a(ad2, (PutDataRequest)object);
                    parcel2.writeNoException();
                    return true;
                }
                case 7: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    ad = ad.a.bR(parcel.readStrongBinder());
                    object = ad2;
                    if (parcel.readInt() != 0) {
                        object = Uri.CREATOR.createFromParcel(parcel);
                    }
                    this.a(ad, (Uri)object);
                    parcel2.writeNoException();
                    return true;
                }
                case 8: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    this.b(ad.a.bR(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 9: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    ad = ad.a.bR(parcel.readStrongBinder());
                    object = var8_7;
                    if (parcel.readInt() != 0) {
                        object = Uri.CREATOR.createFromParcel(parcel);
                    }
                    this.b(ad, (Uri)object);
                    parcel2.writeNoException();
                    return true;
                }
                case 11: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    ad = ad.a.bR(parcel.readStrongBinder());
                    object = var9_8;
                    if (parcel.readInt() != 0) {
                        object = Uri.CREATOR.createFromParcel(parcel);
                    }
                    this.c(ad, (Uri)object);
                    parcel2.writeNoException();
                    return true;
                }
                case 12: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    this.a(ad.a.bR(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                }
                case 13: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    ad = ad.a.bR(parcel.readStrongBinder());
                    object = var10_9;
                    if (parcel.readInt() != 0) {
                        object = Asset.CREATOR.createFromParcel(parcel);
                    }
                    this.a(ad, (Asset)object);
                    parcel2.writeNoException();
                    return true;
                }
                case 14: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    this.c(ad.a.bR(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 15: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    this.d(ad.a.bR(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 16: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    ad = ad.a.bR(parcel.readStrongBinder());
                    object = var11_10;
                    if (parcel.readInt() != 0) {
                        object = b.CREATOR.createFromParcel(parcel);
                    }
                    this.a(ad, (b)object);
                    parcel2.writeNoException();
                    return true;
                }
                case 17: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    ad = ad.a.bR(parcel.readStrongBinder());
                    object = var12_11;
                    if (parcel.readInt() != 0) {
                        object = aq.CREATOR.createFromParcel(parcel);
                    }
                    this.a(ad, (aq)object);
                    parcel2.writeNoException();
                    return true;
                }
                case 18: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    this.e(ad.a.bR(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 19: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    this.f(ad.a.bR(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    ad = ad.a.bR(parcel.readStrongBinder());
                    object = var13_12;
                    if (parcel.readInt() != 0) {
                        object = c.CREATOR.createFromParcel(parcel);
                    }
                    this.b(ad, (c)object);
                    parcel2.writeNoException();
                    return true;
                }
                case 3: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    this.g(ad.a.bR(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 4: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    this.h(ad.a.bR(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 5: 
            }
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            this.i(ad.a.bR(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        private static class a
        implements af {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ad object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(22, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ad object, Uri uri) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (uri != null) {
                        parcel.writeInt(1);
                        uri.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(7, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ad object, Asset asset) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (asset != null) {
                        parcel.writeInt(1);
                        asset.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(13, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ad object, PutDataRequest putDataRequest) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (putDataRequest != null) {
                        parcel.writeInt(1);
                        putDataRequest.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(6, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ad object, c c) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (c != null) {
                        parcel.writeInt(1);
                        c.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(20, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ad object, aq aq) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (aq != null) {
                        parcel.writeInt(1);
                        aq.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(17, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ad object, b b) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (b != null) {
                        parcel.writeInt(1);
                        b.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(16, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ad object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(21, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ad object, String string, String string2, byte[] arrby) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeByteArray(arrby);
                    this.lb.transact(12, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void b(ad object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(8, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void b(ad object, Uri uri) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (uri != null) {
                        parcel.writeInt(1);
                        uri.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(9, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void b(ad object, c c) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (c != null) {
                        parcel.writeInt(1);
                        c.writeToParcel(parcel, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void b(ad object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(23, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void c(ad object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(14, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void c(ad object, Uri uri) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (uri != null) {
                        parcel.writeInt(1);
                        uri.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(11, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void c(ad object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(24, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void d(ad object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(15, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void e(ad object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(18, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void f(ad object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(19, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void g(ad object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(3, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void h(ad object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(4, parcel, parcel2, 0);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void i(ad object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(5, parcel, parcel2, 0);
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
        }

    }

}

