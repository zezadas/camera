/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.games.internal.ConnectionInfo;
import com.google.android.gms.games.internal.ConnectionInfoCreator;

public interface IRoomServiceCallbacks
extends IInterface {
    public void a(ParcelFileDescriptor var1, int var2) throws RemoteException;

    public void a(ConnectionInfo var1) throws RemoteException;

    public void a(String var1, byte[] var2, int var3) throws RemoteException;

    public void a(String var1, String[] var2) throws RemoteException;

    public void aD(IBinder var1) throws RemoteException;

    public void b(String var1, String[] var2) throws RemoteException;

    public void bP(String var1) throws RemoteException;

    public void bQ(String var1) throws RemoteException;

    public void bR(String var1) throws RemoteException;

    public void bS(String var1) throws RemoteException;

    public void bT(String var1) throws RemoteException;

    public void bU(String var1) throws RemoteException;

    public void c(int var1, int var2, String var3) throws RemoteException;

    public void c(String var1, byte[] var2) throws RemoteException;

    public void c(String var1, String[] var2) throws RemoteException;

    public void d(String var1, String[] var2) throws RemoteException;

    public void dF(int var1) throws RemoteException;

    public void e(String var1, String[] var2) throws RemoteException;

    public void f(String var1, String[] var2) throws RemoteException;

    public void g(String var1, String[] var2) throws RemoteException;

    public void i(String var1, boolean var2) throws RemoteException;

    public void kK() throws RemoteException;

    public void kL() throws RemoteException;

    public void onP2PConnected(String var1) throws RemoteException;

    public void onP2PDisconnected(String var1) throws RemoteException;

    public void v(String var1, int var2) throws RemoteException;

    public static abstract class Stub
    extends Binder
    implements IRoomServiceCallbacks {
        public Stub() {
            this.attachInterface(this, "com.google.android.gms.games.internal.IRoomServiceCallbacks");
        }

        public static IRoomServiceCallbacks aE(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            if (iInterface != null && iInterface instanceof IRoomServiceCallbacks) {
                return (IRoomServiceCallbacks)iInterface;
            }
            return new Proxy(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel object, int n2) throws RemoteException {
            Object var7_5 = null;
            Object var6_6 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, (Parcel)object, n2);
                }
                case 1598968902: {
                    object.writeString("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    return true;
                }
                case 1001: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.c(parcel.readInt(), parcel.readInt(), parcel.readString());
                    return true;
                }
                case 1002: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.a(parcel.readString(), parcel.createByteArray(), parcel.readInt());
                    return true;
                }
                case 1003: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.bP(parcel.readString());
                    return true;
                }
                case 1004: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.bQ(parcel.readString());
                    return true;
                }
                case 1005: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.bR(parcel.readString());
                    return true;
                }
                case 1006: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.bS(parcel.readString());
                    return true;
                }
                case 1007: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.bT(parcel.readString());
                    return true;
                }
                case 1008: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.a(parcel.readString(), parcel.createStringArray());
                    return true;
                }
                case 1009: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.b(parcel.readString(), parcel.createStringArray());
                    return true;
                }
                case 1010: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.c(parcel.readString(), parcel.createStringArray());
                    return true;
                }
                case 1011: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.d(parcel.readString(), parcel.createStringArray());
                    return true;
                }
                case 1012: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.e(parcel.readString(), parcel.createStringArray());
                    return true;
                }
                case 1013: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.f(parcel.readString(), parcel.createStringArray());
                    return true;
                }
                case 1014: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.onP2PConnected(parcel.readString());
                    return true;
                }
                case 1015: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.onP2PDisconnected(parcel.readString());
                    return true;
                }
                case 1016: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.kK();
                    return true;
                }
                case 1017: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.g(parcel.readString(), parcel.createStringArray());
                    return true;
                }
                case 1018: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.c(parcel.readString(), parcel.createByteArray());
                    return true;
                }
                case 1019: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.bU(parcel.readString());
                    return true;
                }
                case 1020: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.dF(parcel.readInt());
                    return true;
                }
                case 1021: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.aD(parcel.readStrongBinder());
                    return true;
                }
                case 1022: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    object = var6_6;
                    if (parcel.readInt() != 0) {
                        object = ConnectionInfo.CREATOR.cf(parcel);
                    }
                    this.a((ConnectionInfo)object);
                    return true;
                }
                case 1023: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.kL();
                    return true;
                }
                case 1024: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    object = var7_5;
                    if (parcel.readInt() != 0) {
                        object = ParcelFileDescriptor.CREATOR.createFromParcel(parcel);
                    }
                    this.a((ParcelFileDescriptor)object, parcel.readInt());
                    return true;
                }
                case 1025: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.v(parcel.readString(), parcel.readInt());
                    return true;
                }
                case 1026: 
            }
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            object = parcel.readString();
            boolean bl = parcel.readInt() != 0;
            this.i((String)object, bl);
            return true;
        }

        private static class Proxy
        implements IRoomServiceCallbacks {
            private IBinder lb;

            Proxy(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ParcelFileDescriptor parcelFileDescriptor, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    if (parcelFileDescriptor != null) {
                        parcel.writeInt(1);
                        parcelFileDescriptor.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeInt(n);
                    this.lb.transact(1024, parcel, null, 1);
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
            public void a(ConnectionInfo connectionInfo) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    if (connectionInfo != null) {
                        parcel.writeInt(1);
                        connectionInfo.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(1022, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void a(String string, byte[] arrby, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    parcel.writeByteArray(arrby);
                    parcel.writeInt(n);
                    this.lb.transact(1002, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void a(String string, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(1008, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void aD(IBinder iBinder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeStrongBinder(iBinder);
                    this.lb.transact(1021, parcel, null, 1);
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
            public void b(String string, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(1009, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void bP(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(1003, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void bQ(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(1004, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void bR(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(1005, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void bS(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(1006, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void bT(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(1007, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void bU(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(1019, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void c(int n, int n2, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    parcel.writeString(string);
                    this.lb.transact(1001, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void c(String string, byte[] arrby) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    parcel.writeByteArray(arrby);
                    this.lb.transact(1018, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void c(String string, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(1010, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void d(String string, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(1011, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void dF(int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeInt(n);
                    this.lb.transact(1020, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void e(String string, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(1012, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void f(String string, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(1013, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void g(String string, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(1017, parcel, null, 1);
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
            public void i(String string, boolean bl) throws RemoteException {
                int n = 1;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    if (!bl) {
                        n = 0;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(1026, parcel, null, 1);
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel.recycle();
                    throw var1_2;
                }
            }

            @Override
            public void kK() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.lb.transact(1016, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void kL() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    this.lb.transact(1023, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void onP2PConnected(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(1014, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void onP2PDisconnected(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(1015, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void v(String string, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    this.lb.transact(1025, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }
        }

    }

}

