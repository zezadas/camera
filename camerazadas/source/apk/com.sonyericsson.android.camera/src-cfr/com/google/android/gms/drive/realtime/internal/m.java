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
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.realtime.internal.BeginCompoundOperationRequest;
import com.google.android.gms.drive.realtime.internal.EndCompoundOperationRequest;
import com.google.android.gms.drive.realtime.internal.ParcelableIndexReference;
import com.google.android.gms.drive.realtime.internal.c;
import com.google.android.gms.drive.realtime.internal.d;
import com.google.android.gms.drive.realtime.internal.e;
import com.google.android.gms.drive.realtime.internal.f;
import com.google.android.gms.drive.realtime.internal.g;
import com.google.android.gms.drive.realtime.internal.h;
import com.google.android.gms.drive.realtime.internal.i;
import com.google.android.gms.drive.realtime.internal.j;
import com.google.android.gms.drive.realtime.internal.k;
import com.google.android.gms.drive.realtime.internal.l;
import com.google.android.gms.drive.realtime.internal.n;
import com.google.android.gms.drive.realtime.internal.o;

public interface m
extends IInterface {
    public void a(int var1, j var2) throws RemoteException;

    public void a(BeginCompoundOperationRequest var1, o var2) throws RemoteException;

    public void a(EndCompoundOperationRequest var1, j var2) throws RemoteException;

    public void a(EndCompoundOperationRequest var1, o var2) throws RemoteException;

    public void a(ParcelableIndexReference var1, n var2) throws RemoteException;

    public void a(c var1) throws RemoteException;

    public void a(d var1) throws RemoteException;

    public void a(e var1) throws RemoteException;

    public void a(h var1) throws RemoteException;

    public void a(i var1) throws RemoteException;

    public void a(j var1) throws RemoteException;

    public void a(l var1) throws RemoteException;

    public void a(o var1) throws RemoteException;

    public void a(String var1, int var2, int var3, g var4) throws RemoteException;

    public void a(String var1, int var2, int var3, j var4) throws RemoteException;

    public void a(String var1, int var2, DataHolder var3, g var4) throws RemoteException;

    public void a(String var1, int var2, DataHolder var3, j var4) throws RemoteException;

    public void a(String var1, int var2, o var3) throws RemoteException;

    public void a(String var1, int var2, String var3, int var4, j var5) throws RemoteException;

    public void a(String var1, int var2, String var3, j var4) throws RemoteException;

    public void a(String var1, DataHolder var2, j var3) throws RemoteException;

    public void a(String var1, f var2) throws RemoteException;

    public void a(String var1, j var2) throws RemoteException;

    public void a(String var1, k var2) throws RemoteException;

    public void a(String var1, l var2) throws RemoteException;

    public void a(String var1, n var2) throws RemoteException;

    public void a(String var1, o var2) throws RemoteException;

    public void a(String var1, String var2, f var3) throws RemoteException;

    public void a(String var1, String var2, g var3) throws RemoteException;

    public void a(String var1, String var2, j var3) throws RemoteException;

    public void b(c var1) throws RemoteException;

    public void b(j var1) throws RemoteException;

    public void b(l var1) throws RemoteException;

    public void b(o var1) throws RemoteException;

    public void b(String var1, f var2) throws RemoteException;

    public void b(String var1, l var2) throws RemoteException;

    public void b(String var1, n var2) throws RemoteException;

    public void b(String var1, o var2) throws RemoteException;

    public void c(c var1) throws RemoteException;

    public void c(String var1, l var2) throws RemoteException;

    public void d(c var1) throws RemoteException;

    public static abstract class com.google.android.gms.drive.realtime.internal.m$a
    extends Binder
    implements m {
        public static m ai(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
            if (iInterface != null && iInterface instanceof m) {
                return (m)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel parcel2, int n2) throws RemoteException {
            String string = null;
            String string2 = null;
            String string3 = null;
            String string4 = null;
            String string5 = null;
            String string6 = null;
            Object object = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, parcel2, n2);
                }
                case 1598968902: {
                    parcel2.writeString("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    return true;
                }
                case 1: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), n.a.aj(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(c.a.Y(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 3: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(o.a.ak(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 33: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.b(c.a.Y(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 35: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.b(o.a.ak(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 40: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(l.a.ah(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 4: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), parcel.readString(), f.a.ab(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 5: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), l.a.ah(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 6: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    string = parcel.readString();
                    if (parcel.readInt() != 0) {
                        object = DataHolder.CREATOR.z(parcel);
                    }
                    this.a(string, (DataHolder)object, j.a.af(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 7: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), j.a.af(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 20: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), f.a.ab(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 21: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), parcel.readString(), g.a.ac(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 8: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.b(parcel.readString(), l.a.ah(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 9: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.b(parcel.readString(), n.a.aj(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 10: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), parcel.readInt(), parcel.readString(), j.a.af(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 11: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), parcel.readInt(), parcel.readInt(), j.a.af(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 12: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), parcel.readString(), j.a.af(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 13: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.b(parcel.readString(), f.a.ab(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 14: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.c(parcel.readString(), l.a.ah(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 15: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    string2 = parcel.readString();
                    n = parcel.readInt();
                    object = string;
                    if (parcel.readInt() != 0) {
                        object = DataHolder.CREATOR.z(parcel);
                    }
                    this.a(string2, n, (DataHolder)object, j.a.af(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 16: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    string = parcel.readString();
                    n = parcel.readInt();
                    object = string2;
                    if (parcel.readInt() != 0) {
                        object = DataHolder.CREATOR.z(parcel);
                    }
                    this.a(string, n, (DataHolder)object, g.a.ac(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 17: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), parcel.readInt(), parcel.readInt(), g.a.ac(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 37: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt(), j.a.af(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 18: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = string3;
                    if (parcel.readInt() != 0) {
                        object = BeginCompoundOperationRequest.CREATOR.createFromParcel(parcel);
                    }
                    this.a((BeginCompoundOperationRequest)object, o.a.ak(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 41: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = string4;
                    if (parcel.readInt() != 0) {
                        object = EndCompoundOperationRequest.CREATOR.createFromParcel(parcel);
                    }
                    this.a((EndCompoundOperationRequest)object, j.a.af(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 22: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(j.a.af(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 23: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.b(j.a.af(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 24: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.c(c.a.Y(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 25: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.d(c.a.Y(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 26: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = string5;
                    if (parcel.readInt() != 0) {
                        object = ParcelableIndexReference.CREATOR.createFromParcel(parcel);
                    }
                    this.a((ParcelableIndexReference)object, n.a.aj(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 27: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), k.a.ag(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 28: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), parcel.readInt(), o.a.ak(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 29: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.b(l.a.ah(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 30: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readInt(), j.a.af(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 31: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(e.a.aa(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 32: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(d.a.Z(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 34: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(i.a.ae(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 36: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(h.a.ad(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 38: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.a(parcel.readString(), o.a.ak(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 39: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.b(parcel.readString(), o.a.ak(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 19: 
            }
            parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
            object = string6;
            if (parcel.readInt() != 0) {
                object = EndCompoundOperationRequest.CREATOR.createFromParcel(parcel);
            }
            this.a((EndCompoundOperationRequest)object, o.a.ak(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        private static class a
        implements m {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(int n, j object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeInt(n);
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(30, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var2_3) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var2_3;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(BeginCompoundOperationRequest object, o o) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = o != null ? o.asBinder() : null;
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
            public void a(EndCompoundOperationRequest object, j j) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = j != null ? j.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(41, parcel, parcel2, 0);
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
            public void a(EndCompoundOperationRequest object, o o) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = o != null ? o.asBinder() : null;
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
            public void a(ParcelableIndexReference object, n n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = n != null ? n.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(26, parcel, parcel2, 0);
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
            public void a(c object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(d object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(32, parcel, parcel2, 0);
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
            public void a(e object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(31, parcel, parcel2, 0);
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
            public void a(h object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(36, parcel, parcel2, 0);
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
            public void a(i object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(34, parcel, parcel2, 0);
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
            public void a(j object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
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
            public void a(l object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(40, parcel, parcel2, 0);
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
            public void a(o object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
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
            public void a(String object, int n, int n2, g g) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    object = g != null ? g.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(String object, int n, int n2, j j) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    object = j != null ? j.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(String object, int n, DataHolder dataHolder, g g) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    parcel.writeInt(n);
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = g != null ? g.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(String object, int n, DataHolder dataHolder, j j) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    parcel.writeInt(n);
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = j != null ? j.asBinder() : null;
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
            public void a(String object, int n, o o) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    parcel.writeInt(n);
                    object = o != null ? o.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(28, parcel, parcel2, 0);
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
            public void a(String object, int n, String string, int n2, j j) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    parcel.writeInt(n2);
                    object = j != null ? j.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(37, parcel, parcel2, 0);
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
            public void a(String object, int n, String string, j j) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    object = j != null ? j.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(10, parcel, parcel2, 0);
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
            public void a(String object, DataHolder dataHolder, j j) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = j != null ? j.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(String object, f f) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    object = f != null ? f.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(String object, j j) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    object = j != null ? j.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(String object, k k) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    object = k != null ? k.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(27, parcel, parcel2, 0);
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
            public void a(String object, l l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    object = l != null ? l.asBinder() : null;
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(String object, n n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    object = n != null ? n.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(1, parcel, parcel2, 0);
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
            public void a(String object, o o) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    object = o != null ? o.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(38, parcel, parcel2, 0);
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
            public void a(String object, String string, f f) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    parcel.writeString(string);
                    object = f != null ? f.asBinder() : null;
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
            public void a(String object, String string, g g) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    parcel.writeString(string);
                    object = g != null ? g.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(String object, String string, j j) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    parcel.writeString(string);
                    object = j != null ? j.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void b(c object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(33, parcel, parcel2, 0);
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
            public void b(j object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void b(l object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(29, parcel, parcel2, 0);
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
            public void b(o object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(35, parcel, parcel2, 0);
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
            public void b(String object, f f) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    object = f != null ? f.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void b(String object, l l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    object = l != null ? l.asBinder() : null;
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
            public void b(String object, n n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    object = n != null ? n.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void b(String object, o o) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    object = o != null ? o.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(39, parcel, parcel2, 0);
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
            public void c(c object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
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
            public void c(String object, l l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    parcel.writeString((String)object);
                    object = l != null ? l.asBinder() : null;
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
            public void d(c object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(25, parcel, parcel2, 0);
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

