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
import com.google.android.gms.fitness.request.DataDeleteRequest;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.request.DataSourcesRequest;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
import com.google.android.gms.fitness.request.SessionInsertRequest;
import com.google.android.gms.fitness.request.SessionReadRequest;
import com.google.android.gms.fitness.request.StartBleScanRequest;
import com.google.android.gms.fitness.request.aa;
import com.google.android.gms.fitness.request.ad;
import com.google.android.gms.fitness.request.af;
import com.google.android.gms.fitness.request.ah;
import com.google.android.gms.fitness.request.aj;
import com.google.android.gms.fitness.request.b;
import com.google.android.gms.fitness.request.e;
import com.google.android.gms.fitness.request.j;
import com.google.android.gms.fitness.request.m;
import com.google.android.gms.fitness.request.o;
import com.google.android.gms.fitness.request.q;
import com.google.android.gms.fitness.request.u;
import com.google.android.gms.fitness.request.w;
import com.google.android.gms.fitness.request.y;
import com.google.android.gms.internal.km;
import com.google.android.gms.internal.kn;
import com.google.android.gms.internal.ko;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.kr;
import com.google.android.gms.internal.ks;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.lf;

public interface kp
extends IInterface {
    public void a(DataDeleteRequest var1, kt var2, String var3) throws RemoteException;

    public void a(DataReadRequest var1, km var2, String var3) throws RemoteException;

    public void a(DataSourcesRequest var1, kn var2, String var3) throws RemoteException;

    public void a(DataTypeCreateRequest var1, ko var2, String var3) throws RemoteException;

    public void a(SessionInsertRequest var1, kt var2, String var3) throws RemoteException;

    public void a(SessionReadRequest var1, kr var2, String var3) throws RemoteException;

    public void a(StartBleScanRequest var1, kt var2, String var3) throws RemoteException;

    public void a(aa var1, kt var2, String var3) throws RemoteException;

    public void a(ad var1, kt var2, String var3) throws RemoteException;

    public void a(af var1, kt var2, String var3) throws RemoteException;

    public void a(ah var1, kt var2, String var3) throws RemoteException;

    public void a(aj var1, kt var2, String var3) throws RemoteException;

    public void a(b var1, kt var2, String var3) throws RemoteException;

    public void a(e var1, kt var2, String var3) throws RemoteException;

    public void a(j var1, ko var2, String var3) throws RemoteException;

    public void a(m var1, kq var2, String var3) throws RemoteException;

    public void a(o var1, kt var2, String var3) throws RemoteException;

    public void a(q var1, kt var2, String var3) throws RemoteException;

    public void a(u var1, kt var2, String var3) throws RemoteException;

    public void a(w var1, kt var2, String var3) throws RemoteException;

    public void a(y var1, ks var2, String var3) throws RemoteException;

    public void a(kt var1, String var2) throws RemoteException;

    public void a(lf var1, String var2) throws RemoteException;

    public void b(kt var1, String var2) throws RemoteException;

    public static abstract class com.google.android.gms.internal.kp$a
    extends Binder
    implements kp {
        public static kp as(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            if (iInterface != null && iInterface instanceof kp) {
                return (kp)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel object, int n2) throws RemoteException {
            Object var6_5 = null;
            Object var7_6 = null;
            Object var8_7 = null;
            Object var9_8 = null;
            Object var10_9 = null;
            Object var11_10 = null;
            DataDeleteRequest dataDeleteRequest = null;
            Object var13_12 = null;
            Object var14_13 = null;
            Object var15_14 = null;
            Object var16_15 = null;
            Object var17_16 = null;
            Object var18_17 = null;
            Object var19_18 = null;
            Object var20_19 = null;
            Object var21_20 = null;
            Object var22_21 = null;
            Object var23_22 = null;
            Object var24_23 = null;
            Object var25_24 = null;
            DataDeleteRequest dataDeleteRequest2 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, (Parcel)object, n2);
                }
                case 1598968902: {
                    object.writeString("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    return true;
                }
                case 1: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = dataDeleteRequest2;
                    if (parcel.readInt() != 0) {
                        object = DataSourcesRequest.CREATOR.createFromParcel(parcel);
                    }
                    this.a((DataSourcesRequest)object, kn.a.aq(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var6_5;
                    if (parcel.readInt() != 0) {
                        object = o.CREATOR.createFromParcel(parcel);
                    }
                    this.a((o)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 3: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var7_6;
                    if (parcel.readInt() != 0) {
                        object = q.CREATOR.createFromParcel(parcel);
                    }
                    this.a((q)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 4: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var8_7;
                    if (parcel.readInt() != 0) {
                        object = af.CREATOR.createFromParcel(parcel);
                    }
                    this.a((af)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 5: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var9_8;
                    if (parcel.readInt() != 0) {
                        object = aj.CREATOR.createFromParcel(parcel);
                    }
                    this.a((aj)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 6: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var10_9;
                    if (parcel.readInt() != 0) {
                        object = m.CREATOR.createFromParcel(parcel);
                    }
                    this.a((m)object, kq.a.at(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 7: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var11_10;
                    if (parcel.readInt() != 0) {
                        object = e.CREATOR.createFromParcel(parcel);
                    }
                    this.a((e)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 19: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    dataDeleteRequest2 = dataDeleteRequest;
                    if (parcel.readInt() != 0) {
                        dataDeleteRequest2 = DataDeleteRequest.CREATOR.createFromParcel(parcel);
                    }
                    this.a(dataDeleteRequest2, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    object.writeNoException();
                    return true;
                }
                case 13: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var13_12;
                    if (parcel.readInt() != 0) {
                        object = DataTypeCreateRequest.CREATOR.createFromParcel(parcel);
                    }
                    this.a((DataTypeCreateRequest)object, ko.a.ar(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 14: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var14_13;
                    if (parcel.readInt() != 0) {
                        object = j.CREATOR.createFromParcel(parcel);
                    }
                    this.a((j)object, ko.a.ar(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 8: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var15_14;
                    if (parcel.readInt() != 0) {
                        object = DataReadRequest.CREATOR.createFromParcel(parcel);
                    }
                    this.a((DataReadRequest)object, km.a.ap(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 9: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var16_15;
                    if (parcel.readInt() != 0) {
                        object = SessionInsertRequest.CREATOR.createFromParcel(parcel);
                    }
                    this.a((SessionInsertRequest)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 10: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var17_16;
                    if (parcel.readInt() != 0) {
                        object = SessionReadRequest.CREATOR.createFromParcel(parcel);
                    }
                    this.a((SessionReadRequest)object, kr.a.au(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 11: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var18_17;
                    if (parcel.readInt() != 0) {
                        object = w.CREATOR.createFromParcel(parcel);
                    }
                    this.a((w)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 12: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var19_18;
                    if (parcel.readInt() != 0) {
                        object = y.CREATOR.createFromParcel(parcel);
                    }
                    this.a((y)object, ks.a.av(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 15: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var20_19;
                    if (parcel.readInt() != 0) {
                        object = StartBleScanRequest.CREATOR.createFromParcel(parcel);
                    }
                    this.a((StartBleScanRequest)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 16: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var21_20;
                    if (parcel.readInt() != 0) {
                        object = ad.CREATOR.createFromParcel(parcel);
                    }
                    this.a((ad)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 17: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var22_21;
                    if (parcel.readInt() != 0) {
                        object = b.CREATOR.createFromParcel(parcel);
                    }
                    this.a((b)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 18: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var23_22;
                    if (parcel.readInt() != 0) {
                        object = ah.CREATOR.createFromParcel(parcel);
                    }
                    this.a((ah)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 20: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var24_23;
                    if (parcel.readInt() != 0) {
                        object = u.CREATOR.createFromParcel(parcel);
                    }
                    this.a((u)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 21: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    object = var25_24;
                    if (parcel.readInt() != 0) {
                        object = aa.CREATOR.createFromParcel(parcel);
                    }
                    this.a((aa)object, kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 22: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    this.a(kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 23: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    this.b(kt.a.aw(parcel.readStrongBinder()), parcel.readString());
                    return true;
                }
                case 24: 
            }
            parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitnessService");
            this.a(lf.a.ax(parcel.readStrongBinder()), parcel.readString());
            return true;
        }

        private static class a
        implements kp {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(DataDeleteRequest object, kt kt, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = kt != null ? kt.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
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
            public void a(DataReadRequest object, km km, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (km != null) {
                        object = km.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(8, parcel, null, 1);
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
            public void a(DataSourcesRequest object, kn kn, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kn != null) {
                        object = kn.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
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
            public void a(DataTypeCreateRequest object, ko ko, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (ko != null) {
                        object = ko.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(13, parcel, null, 1);
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
            public void a(SessionInsertRequest object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(9, parcel, null, 1);
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
            public void a(SessionReadRequest object, kr kr, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kr != null) {
                        object = kr.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
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
            public void a(StartBleScanRequest object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(15, parcel, null, 1);
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
            public void a(aa object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(21, parcel, null, 1);
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
            public void a(ad object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(16, parcel, null, 1);
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
            public void a(af object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(4, parcel, null, 1);
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
            public void a(ah object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(18, parcel, null, 1);
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
            public void a(aj object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(5, parcel, null, 1);
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
            public void a(b object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(17, parcel, null, 1);
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
            public void a(e object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(7, parcel, null, 1);
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
            public void a(j object, ko ko, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (ko != null) {
                        object = ko.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(14, parcel, null, 1);
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
            public void a(m object, kq kq, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kq != null) {
                        object = kq.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(6, parcel, null, 1);
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
            public void a(o object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
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
            public void a(q object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(3, parcel, null, 1);
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
            public void a(u object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(20, parcel, null, 1);
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
            public void a(w object, kt kt, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (kt != null) {
                        object = kt.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(11, parcel, null, 1);
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
            public void a(y object, ks ks, String string) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (ks != null) {
                        object = ks.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(12, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void a(kt kt, String string) throws RemoteException {
                IBinder iBinder = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (kt != null) {
                        iBinder = kt.asBinder();
                    }
                    parcel.writeStrongBinder(iBinder);
                    parcel.writeString(string);
                    this.lb.transact(22, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void a(lf lf, String string) throws RemoteException {
                IBinder iBinder = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (lf != null) {
                        iBinder = lf.asBinder();
                    }
                    parcel.writeStrongBinder(iBinder);
                    parcel.writeString(string);
                    this.lb.transact(24, parcel, null, 1);
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
            public void b(kt kt, String string) throws RemoteException {
                IBinder iBinder = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitnessService");
                    if (kt != null) {
                        iBinder = kt.asBinder();
                    }
                    parcel.writeStrongBinder(iBinder);
                    parcel.writeString(string);
                    this.lb.transact(23, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }
        }

    }

}

