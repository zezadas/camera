/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.az;
import com.google.android.gms.internal.cv;

public interface cu
extends IInterface {
    public void a(d var1, av var2, String var3, cv var4) throws RemoteException;

    public void a(d var1, av var2, String var3, String var4, cv var5) throws RemoteException;

    public void a(d var1, ay var2, av var3, String var4, cv var5) throws RemoteException;

    public void a(d var1, ay var2, av var3, String var4, String var5, cv var6) throws RemoteException;

    public void destroy() throws RemoteException;

    public d getView() throws RemoteException;

    public void pause() throws RemoteException;

    public void resume() throws RemoteException;

    public void showInterstitial() throws RemoteException;

    public static abstract class com.google.android.gms.internal.cu$a
    extends Binder
    implements cu {
        public com.google.android.gms.internal.cu$a() {
            this.attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        }

        public static cu m(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (iInterface != null && iInterface instanceof cu) {
                return (cu)iInterface;
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
            Object object2 = null;
            Object object3 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    d d = d.a.am(object.readStrongBinder());
                    object3 = object.readInt() != 0 ? ay.CREATOR.c((Parcel)object) : null;
                    object2 = object.readInt() != 0 ? av.CREATOR.b((Parcel)object) : null;
                    this.a(d, (ay)object3, (av)object2, object.readString(), cv.a.n(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    object2 = this.getView();
                    parcel.writeNoException();
                    object = object3;
                    if (object2 != null) {
                        object = object2.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    d d = d.a.am(object.readStrongBinder());
                    object3 = object2;
                    if (object.readInt() != 0) {
                        object3 = av.CREATOR.b((Parcel)object);
                    }
                    this.a(d, (av)object3, object.readString(), cv.a.n(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 4: {
                    object.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    this.showInterstitial();
                    parcel.writeNoException();
                    return true;
                }
                case 5: {
                    object.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    this.destroy();
                    parcel.writeNoException();
                    return true;
                }
                case 6: {
                    object.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    d d = d.a.am(object.readStrongBinder());
                    object3 = object.readInt() != 0 ? ay.CREATOR.c((Parcel)object) : null;
                    object2 = object.readInt() != 0 ? av.CREATOR.b((Parcel)object) : null;
                    this.a(d, (ay)object3, (av)object2, object.readString(), object.readString(), cv.a.n(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 7: {
                    object.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    object2 = d.a.am(object.readStrongBinder());
                    object3 = object.readInt() != 0 ? av.CREATOR.b((Parcel)object) : null;
                    this.a((d)object2, (av)object3, object.readString(), object.readString(), cv.a.n(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 8: {
                    object.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    this.pause();
                    parcel.writeNoException();
                    return true;
                }
                case 9: 
            }
            object.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            this.resume();
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements cu {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(d object, av av, String string, cv cv) throws RemoteException {
                Object var5_6 = null;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (av != null) {
                        parcel.writeInt(1);
                        av.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeString(string);
                    object = var5_6;
                    if (cv != null) {
                        object = cv.asBinder();
                    }
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
            public void a(d object, av av, String string, String string2, cv cv) throws RemoteException {
                Object var6_7 = null;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (av != null) {
                        parcel.writeInt(1);
                        av.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    object = var6_7;
                    if (cv != null) {
                        object = cv.asBinder();
                    }
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
            public void a(d object, ay ay, av av, String string, cv cv) throws RemoteException {
                Object var6_7 = null;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (ay != null) {
                        parcel.writeInt(1);
                        ay.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (av != null) {
                        parcel.writeInt(1);
                        av.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeString(string);
                    object = var6_7;
                    if (cv != null) {
                        object = cv.asBinder();
                    }
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
            public void a(d object, ay ay, av av, String string, String string2, cv cv) throws RemoteException {
                Object var7_8 = null;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (ay != null) {
                        parcel.writeInt(1);
                        ay.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (av != null) {
                        parcel.writeInt(1);
                        av.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    object = var7_8;
                    if (cv != null) {
                        object = cv.asBinder();
                    }
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

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            @Override
            public void destroy() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    this.lb.transact(5, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public d getView() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    this.lb.transact(2, parcel, parcel2, 0);
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
            public void pause() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    this.lb.transact(8, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void resume() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    this.lb.transact(9, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void showInterstitial() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    this.lb.transact(4, parcel, parcel2, 0);
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

