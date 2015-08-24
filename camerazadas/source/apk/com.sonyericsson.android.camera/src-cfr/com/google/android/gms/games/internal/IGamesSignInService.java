/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.games.internal.IGamesSignInCallbacks;

public interface IGamesSignInService
extends IInterface {
    public void a(IGamesSignInCallbacks var1, String var2, String var3) throws RemoteException;

    public void a(IGamesSignInCallbacks var1, String var2, String var3, String var4) throws RemoteException;

    public void a(IGamesSignInCallbacks var1, String var2, String var3, String var4, String[] var5) throws RemoteException;

    public void a(IGamesSignInCallbacks var1, String var2, String var3, String[] var4) throws RemoteException;

    public void a(IGamesSignInCallbacks var1, String var2, String var3, String[] var4, String var5) throws RemoteException;

    public void b(IGamesSignInCallbacks var1, String var2, String var3, String var4) throws RemoteException;

    public String bL(String var1) throws RemoteException;

    public String bM(String var1) throws RemoteException;

    public String h(String var1, boolean var2) throws RemoteException;

    public void w(String var1, String var2) throws RemoteException;

    public static abstract class Stub
    extends Binder
    implements IGamesSignInService {
        public Stub() {
            this.attachInterface(this, "com.google.android.gms.games.internal.IGamesSignInService");
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
                    parcel.writeString("com.google.android.gms.games.internal.IGamesSignInService");
                    return true;
                }
                case 5001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                    object = this.bL(object.readString());
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 5002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                    object = this.bM(object.readString());
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 5009: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                    String string = object.readString();
                    boolean bl = object.readInt() != 0;
                    object = this.h(string, bl);
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 5003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                    this.a(IGamesSignInCallbacks.Stub.aC(object.readStrongBinder()), object.readString(), object.readString(), object.createStringArray(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5004: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                    this.a(IGamesSignInCallbacks.Stub.aC(object.readStrongBinder()), object.readString(), object.readString(), object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 5005: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                    this.a(IGamesSignInCallbacks.Stub.aC(object.readStrongBinder()), object.readString(), object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5006: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                    this.a(IGamesSignInCallbacks.Stub.aC(object.readStrongBinder()), object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5007: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                    this.b(IGamesSignInCallbacks.Stub.aC(object.readStrongBinder()), object.readString(), object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5008: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                    this.a(IGamesSignInCallbacks.Stub.aC(object.readStrongBinder()), object.readString(), object.readString(), object.readString(), object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 9001: 
            }
            object.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
            this.w(object.readString(), object.readString());
            parcel.writeNoException();
            return true;
        }

        private static class Proxy
        implements IGamesSignInService {
            private IBinder lb;

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(IGamesSignInCallbacks object, String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(5006, parcel, parcel2, 0);
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
            public void a(IGamesSignInCallbacks object, String string, String string2, String string3) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeString(string3);
                    this.lb.transact(5005, parcel, parcel2, 0);
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
            public void a(IGamesSignInCallbacks object, String string, String string2, String string3, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeString(string3);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(5008, parcel, parcel2, 0);
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
            public void a(IGamesSignInCallbacks object, String string, String string2, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(5004, parcel, parcel2, 0);
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
            public void a(IGamesSignInCallbacks object, String string, String string2, String[] arrstring, String string3) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeStringArray(arrstring);
                    parcel.writeString(string3);
                    this.lb.transact(5003, parcel, parcel2, 0);
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
            public void b(IGamesSignInCallbacks object, String string, String string2, String string3) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeString(string3);
                    this.lb.transact(5007, parcel, parcel2, 0);
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
            public String bL(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
                    parcel.writeString(string);
                    this.lb.transact(5001, parcel, parcel2, 0);
                    parcel2.readException();
                    string = parcel2.readString();
                    return string;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public String bM(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
                    parcel.writeString(string);
                    this.lb.transact(5002, parcel, parcel2, 0);
                    parcel2.readException();
                    string = parcel2.readString();
                    return string;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public String h(String string, boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel = Parcel.obtain();
                    parcel2 = Parcel.obtain();
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
                    parcel.writeString(string);
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel.writeInt(n);
                    this.lb.transact(5009, parcel, parcel2, 0);
                    parcel2.readException();
                    string = parcel2.readString();
                    return string;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void w(String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(9001, parcel, parcel2, 0);
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

