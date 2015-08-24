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
import com.google.android.gms.cast.LaunchOptions;

public interface in
extends IInterface {
    public void a(double var1, double var3, boolean var5) throws RemoteException;

    public void a(String var1, LaunchOptions var2) throws RemoteException;

    public void a(String var1, String var2, long var3) throws RemoteException;

    public void a(String var1, byte[] var2, long var3) throws RemoteException;

    public void a(boolean var1, double var2, boolean var4) throws RemoteException;

    public void aH(String var1) throws RemoteException;

    public void aI(String var1) throws RemoteException;

    public void aJ(String var1) throws RemoteException;

    public void disconnect() throws RemoteException;

    public void f(String var1, boolean var2) throws RemoteException;

    public void fD() throws RemoteException;

    public void fP() throws RemoteException;

    public void l(String var1, String var2) throws RemoteException;

    public static abstract class com.google.android.gms.internal.in$a
    extends Binder
    implements in {
        public static in M(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            if (iInterface != null && iInterface instanceof in) {
                return (in)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel object2, int n2) throws RemoteException {
            boolean bl = false;
            boolean bl2 = false;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, (Parcel)object2, n2);
                }
                case 1598968902: {
                    object2.writeString("com.google.android.gms.cast.internal.ICastDeviceController");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.disconnect();
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    object2 = object.readString();
                    if (object.readInt() != 0) {
                        bl2 = true;
                    }
                    this.f((String)object2, bl2);
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.l(object.readString(), object.readString());
                    return true;
                }
                case 4: {
                    object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.fP();
                    return true;
                }
                case 5: {
                    object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.aH(object.readString());
                    return true;
                }
                case 6: {
                    object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.fD();
                    return true;
                }
                case 7: {
                    object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    double d = object.readDouble();
                    double d2 = object.readDouble();
                    bl2 = object.readInt() != 0;
                    this.a(d, d2, bl2);
                    return true;
                }
                case 8: {
                    object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    bl2 = object.readInt() != 0;
                    double d = object.readDouble();
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.a(bl2, d, bl);
                    return true;
                }
                case 9: {
                    object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.a(object.readString(), object.readString(), object.readLong());
                    return true;
                }
                case 10: {
                    object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.a(object.readString(), object.createByteArray(), object.readLong());
                    return true;
                }
                case 11: {
                    object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.aI(object.readString());
                    return true;
                }
                case 12: {
                    object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.aJ(object.readString());
                    return true;
                }
                case 13: 
            }
            object.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            object2 = object.readString();
            object = object.readInt() != 0 ? LaunchOptions.CREATOR.createFromParcel((Parcel)object) : null;
            this.a((String)object2, (LaunchOptions)object);
            return true;
        }

        private static class a
        implements in {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(double d, double d2, boolean bl) throws RemoteException {
                int n = 1;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    parcel.writeDouble(d);
                    parcel.writeDouble(d2);
                    if (!bl) {
                        n = 0;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(7, parcel, null, 1);
                    parcel.recycle();
                    return;
                }
                catch (Throwable var8_6) {
                    parcel.recycle();
                    throw var8_6;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(String string, LaunchOptions launchOptions) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    parcel.writeString(string);
                    if (launchOptions != null) {
                        parcel.writeInt(1);
                        launchOptions.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(13, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void a(String string, String string2, long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeLong(l);
                    this.lb.transact(9, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void a(String string, byte[] arrby, long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    parcel.writeString(string);
                    parcel.writeByteArray(arrby);
                    parcel.writeLong(l);
                    this.lb.transact(10, parcel, null, 1);
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
            public void a(boolean bl, double d, boolean bl2) throws RemoteException {
                int n = 1;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    int n2 = bl ? 1 : 0;
                    parcel.writeInt(n2);
                    parcel.writeDouble(d);
                    n2 = bl2 ? n : 0;
                    parcel.writeInt(n2);
                    this.lb.transact(8, parcel, null, 1);
                    parcel.recycle();
                    return;
                }
                catch (Throwable var8_7) {
                    parcel.recycle();
                    throw var8_7;
                }
            }

            @Override
            public void aH(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    parcel.writeString(string);
                    this.lb.transact(5, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void aI(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    parcel.writeString(string);
                    this.lb.transact(11, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void aJ(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    parcel.writeString(string);
                    this.lb.transact(12, parcel, null, 1);
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

            @Override
            public void disconnect() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
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
            public void f(String string, boolean bl) throws RemoteException {
                int n = 1;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    parcel.writeString(string);
                    if (!bl) {
                        n = 0;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(2, parcel, null, 1);
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel.recycle();
                    throw var1_2;
                }
            }

            @Override
            public void fD() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.lb.transact(6, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void fP() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.lb.transact(4, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void l(String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(3, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }
        }

    }

}

