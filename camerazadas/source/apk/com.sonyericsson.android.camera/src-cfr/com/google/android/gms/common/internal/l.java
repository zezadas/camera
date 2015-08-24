/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.internal.k;

public interface l
extends IInterface {
    public void a(k var1, int var2) throws RemoteException;

    public void a(k var1, int var2, String var3) throws RemoteException;

    public void a(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void a(k var1, int var2, String var3, IBinder var4, Bundle var5) throws RemoteException;

    public void a(k var1, int var2, String var3, String var4) throws RemoteException;

    public void a(k var1, int var2, String var3, String var4, String var5, String[] var6) throws RemoteException;

    public void a(k var1, int var2, String var3, String var4, String[] var5) throws RemoteException;

    public void a(k var1, int var2, String var3, String var4, String[] var5, Bundle var6) throws RemoteException;

    public void a(k var1, int var2, String var3, String var4, String[] var5, String var6, Bundle var7) throws RemoteException;

    public void a(k var1, int var2, String var3, String var4, String[] var5, String var6, IBinder var7, String var8, Bundle var9) throws RemoteException;

    public void a(k var1, int var2, String var3, String[] var4, String var5, Bundle var6) throws RemoteException;

    public void b(k var1, int var2, String var3) throws RemoteException;

    public void b(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void b(k var1, int var2, String var3, String var4, String[] var5) throws RemoteException;

    public void c(k var1, int var2, String var3) throws RemoteException;

    public void c(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void d(k var1, int var2, String var3) throws RemoteException;

    public void d(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void e(k var1, int var2, String var3) throws RemoteException;

    public void e(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void f(k var1, int var2, String var3) throws RemoteException;

    public void f(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void g(k var1, int var2, String var3) throws RemoteException;

    public void g(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void h(k var1, int var2, String var3) throws RemoteException;

    public void h(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void i(k var1, int var2, String var3) throws RemoteException;

    public void i(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void j(k var1, int var2, String var3) throws RemoteException;

    public void j(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void k(k var1, int var2, String var3) throws RemoteException;

    public void k(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void l(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void m(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void n(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void o(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void p(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void q(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void r(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void s(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public void t(k var1, int var2, String var3, Bundle var4) throws RemoteException;

    public static abstract class com.google.android.gms.common.internal.l$a
    extends Binder
    implements l {
        public static l Q(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (iInterface != null && iInterface instanceof l) {
                return (l)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            Object object2 = null;
            Object object3 = null;
            String[] arrstring = null;
            String string = null;
            IBinder iBinder = null;
            String string2 = null;
            Object var12_11 = null;
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
            Object object4 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object4 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object2 = object.readString();
                    object3 = object.readString();
                    arrstring = object.createStringArray();
                    string = object.readString();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((k)object4, n, (String)object2, (String)object3, arrstring, string, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.a((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.a(k.a.P(object.readStrongBinder()), object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 4: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.a(k.a.P(object.readStrongBinder()), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 5: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object3 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    arrstring = object.readString();
                    object4 = object2;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.b((k)object3, n, (String)arrstring, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 6: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    arrstring = object.readString();
                    object4 = object3;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.c((k)object2, n, (String)arrstring, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 7: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = arrstring;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.d((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 8: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = string;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.e((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 9: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object4 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object2 = object.readString();
                    object3 = object.readString();
                    arrstring = object.createStringArray();
                    string = object.readString();
                    iBinder = object.readStrongBinder();
                    string2 = object.readString();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((k)object4, n, (String)object2, (String)object3, arrstring, string, iBinder, string2, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 10: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.a(k.a.P(object.readStrongBinder()), object.readInt(), object.readString(), object.readString(), object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 11: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = iBinder;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.f((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 12: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = string2;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.g((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 13: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = var12_11;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.h((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 14: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = var13_12;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.i((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 15: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = var14_13;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.j((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 16: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = var15_14;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.k((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 17: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = var16_15;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.l((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 18: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = var17_16;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.m((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 19: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object4 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object2 = object.readString();
                    object3 = object.readStrongBinder();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((k)object4, n, (String)object2, (IBinder)object3, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 20: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object4 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object2 = object.readString();
                    object3 = object.createStringArray();
                    arrstring = object.readString();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((k)object4, n, (String)object2, (String[])object3, (String)arrstring, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 21: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.b(k.a.P(object.readStrongBinder()), object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 22: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.c(k.a.P(object.readStrongBinder()), object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 23: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = var18_17;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.n((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 24: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.d(k.a.P(object.readStrongBinder()), object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 25: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = var19_18;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.o((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 26: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.e(k.a.P(object.readStrongBinder()), object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 27: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = var20_19;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.p((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 28: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.b(k.a.P(object.readStrongBinder()), object.readInt(), object.readString(), object.readString(), object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 30: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object4 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object2 = object.readString();
                    object3 = object.readString();
                    arrstring = object.createStringArray();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((k)object4, n, (String)object2, (String)object3, arrstring, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 31: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.f(k.a.P(object.readStrongBinder()), object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 32: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.g(k.a.P(object.readStrongBinder()), object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 33: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.a(k.a.P(object.readStrongBinder()), object.readInt(), object.readString(), object.readString(), object.readString(), object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 34: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.a(k.a.P(object.readStrongBinder()), object.readInt(), object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 35: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.h(k.a.P(object.readStrongBinder()), object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 36: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.i(k.a.P(object.readStrongBinder()), object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 37: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = var21_20;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.q((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 38: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = var22_21;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.r((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 40: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.j(k.a.P(object.readStrongBinder()), object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 41: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object2 = k.a.P(object.readStrongBinder());
                    n = object.readInt();
                    object3 = object.readString();
                    object4 = var23_22;
                    if (object.readInt() != 0) {
                        object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.s((k)object2, n, (String)object3, (Bundle)object4);
                    parcel.writeNoException();
                    return true;
                }
                case 42: {
                    object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.k(k.a.P(object.readStrongBinder()), object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 43: 
            }
            object.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            object2 = k.a.P(object.readStrongBinder());
            n = object.readInt();
            object3 = object.readString();
            object4 = var24_23;
            if (object.readInt() != 0) {
                object4 = Bundle.CREATOR.createFromParcel((Parcel)object);
            }
            this.t((k)object2, n, (String)object3, (Bundle)object4);
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements l {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(k object, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
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
            public void a(k object, int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
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
            public void a(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
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
            public void a(k object, int n, String string, IBinder iBinder, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    parcel.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void a(k object, int n, String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    parcel.writeString(string2);
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
            public void a(k object, int n, String string, String string2, String string3, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeString(string3);
                    parcel.writeStringArray(arrstring);
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
            public void a(k object, int n, String string, String string2, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeStringArray(arrstring);
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
            public void a(k object, int n, String string, String string2, String[] arrstring, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeStringArray(arrstring);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(30, parcel, parcel2, 0);
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
            public void a(k object, int n, String string, String string2, String[] arrstring, String string3, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeStringArray(arrstring);
                    parcel.writeString(string3);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void a(k object, int n, String string, String string2, String[] arrstring, String string3, IBinder iBinder, String string4, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeStringArray(arrstring);
                    parcel.writeString(string3);
                    parcel.writeStrongBinder(iBinder);
                    parcel.writeString(string4);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
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
            public void a(k object, int n, String string, String[] arrstring, String string2, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    parcel.writeStringArray(arrstring);
                    parcel.writeString(string2);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
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

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void b(k object, int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
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
            public void b(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void b(k object, int n, String string, String string2, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeStringArray(arrstring);
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
            public void c(k object, int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
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
            public void c(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
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
            public void d(k object, int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
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
            public void d(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
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
            public void e(k object, int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
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
            public void e(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void f(k object, int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
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
            public void f(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
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
            public void g(k object, int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
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
            public void g(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void h(k object, int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
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
            public void h(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
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
            public void i(k object, int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
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
            public void i(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void j(k object, int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
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
            public void j(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void k(k object, int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    this.lb.transact(42, parcel, parcel2, 0);
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
            public void k(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
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
            public void l(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
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
            public void m(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void n(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void o(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void p(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void q(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void r(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void s(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void t(k object, int n, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(43, parcel, parcel2, 0);
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

