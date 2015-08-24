/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;
import com.google.android.gms.games.internal.IRoomServiceCallbacks;

public interface IRoomService
extends IInterface {
    public void Q(boolean var1) throws RemoteException;

    public void a(IBinder var1, IRoomServiceCallbacks var2) throws RemoteException;

    public void a(DataHolder var1, boolean var2) throws RemoteException;

    public void a(byte[] var1, String var2, int var3) throws RemoteException;

    public void a(byte[] var1, String[] var2) throws RemoteException;

    public void bN(String var1) throws RemoteException;

    public void bO(String var1) throws RemoteException;

    public void c(String var1, String var2, String var3) throws RemoteException;

    public void kG() throws RemoteException;

    public void kH() throws RemoteException;

    public void kI() throws RemoteException;

    public void kJ() throws RemoteException;

    public void t(String var1, int var2) throws RemoteException;

    public void u(String var1, int var2) throws RemoteException;

    public static abstract class Stub
    extends Binder
    implements IRoomService {
        public Stub() {
            this.attachInterface(this, "com.google.android.gms.games.internal.IRoomService");
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel object, int n2) throws RemoteException {
            boolean bl = false;
            boolean bl2 = false;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, (Parcel)object, n2);
                }
                case 1598968902: {
                    object.writeString("com.google.android.gms.games.internal.IRoomService");
                    return true;
                }
                case 1001: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    this.a(parcel.readStrongBinder(), IRoomServiceCallbacks.Stub.aE(parcel.readStrongBinder()));
                    return true;
                }
                case 1002: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    this.kG();
                    return true;
                }
                case 1003: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    this.kH();
                    return true;
                }
                case 1004: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    this.c(parcel.readString(), parcel.readString(), parcel.readString());
                    return true;
                }
                case 1005: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    this.kI();
                    return true;
                }
                case 1006: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    object = parcel.readInt() != 0 ? DataHolder.CREATOR.z(parcel) : null;
                    if (parcel.readInt() != 0) {
                        bl2 = true;
                    }
                    this.a((DataHolder)object, bl2);
                    return true;
                }
                case 1007: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    this.kJ();
                    return true;
                }
                case 1008: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    bl2 = bl;
                    if (parcel.readInt() != 0) {
                        bl2 = true;
                    }
                    this.Q(bl2);
                    return true;
                }
                case 1009: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    this.a(parcel.createByteArray(), parcel.readString(), parcel.readInt());
                    return true;
                }
                case 1010: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    this.a(parcel.createByteArray(), parcel.createStringArray());
                    return true;
                }
                case 1011: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    this.t(parcel.readString(), parcel.readInt());
                    return true;
                }
                case 1012: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    this.u(parcel.readString(), parcel.readInt());
                    return true;
                }
                case 1013: {
                    parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                    this.bN(parcel.readString());
                    return true;
                }
                case 1014: 
            }
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            this.bO(parcel.readString());
            return true;
        }

        private static class Proxy
        implements IRoomService {
            private IBinder lb;

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void Q(boolean bl) throws RemoteException {
                int n = 1;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    if (!bl) {
                        n = 0;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(1008, parcel, null, 1);
                    parcel.recycle();
                    return;
                }
                catch (Throwable var4_4) {
                    parcel.recycle();
                    throw var4_4;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(IBinder iBinder, IRoomServiceCallbacks iRoomServiceCallbacks) throws RemoteException {
                Object var3_4 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    parcel.writeStrongBinder(iBinder);
                    iBinder = var3_4;
                    if (iRoomServiceCallbacks != null) {
                        iBinder = iRoomServiceCallbacks.asBinder();
                    }
                    parcel.writeStrongBinder(iBinder);
                    this.lb.transact(1001, parcel, null, 1);
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
            public void a(DataHolder dataHolder, boolean bl) throws RemoteException {
                int n = 1;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                }
                catch (Throwable var1_2) {
                    parcel.recycle();
                    throw var1_2;
                }
                if (!bl) {
                    n = 0;
                }
                parcel.writeInt(n);
                this.lb.transact(1006, parcel, null, 1);
                parcel.recycle();
            }

            @Override
            public void a(byte[] arrby, String string, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    parcel.writeByteArray(arrby);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    this.lb.transact(1009, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void a(byte[] arrby, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    parcel.writeByteArray(arrby);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(1010, parcel, null, 1);
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
            public void bN(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    parcel.writeString(string);
                    this.lb.transact(1013, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void bO(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    parcel.writeString(string);
                    this.lb.transact(1014, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void c(String string, String string2, String string3) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeString(string3);
                    this.lb.transact(1004, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void kG() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    this.lb.transact(1002, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void kH() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    this.lb.transact(1003, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void kI() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    this.lb.transact(1005, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void kJ() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    this.lb.transact(1007, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void t(String string, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    this.lb.transact(1011, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void u(String string, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    this.lb.transact(1012, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }
        }

    }

}

