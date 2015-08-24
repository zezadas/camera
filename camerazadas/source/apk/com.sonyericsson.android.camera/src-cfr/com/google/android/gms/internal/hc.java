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
import com.google.android.gms.internal.hb;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface hc
extends IInterface {
    public void a(Map var1, long var2, String var4, List<hb> var5) throws RemoteException;

    public void dH() throws RemoteException;

    public String getVersion() throws RemoteException;

    public static abstract class com.google.android.gms.internal.hc$a
    extends Binder
    implements hc {
        public static hc E(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
            if (iInterface != null && iInterface instanceof hc) {
                return (hc)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.analytics.internal.IAnalyticsService");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                    this.a(object.readHashMap(this.getClass().getClassLoader()), object.readLong(), object.readString(), object.createTypedArrayList(hb.CREATOR));
                    parcel.writeNoException();
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                    this.dH();
                    parcel.writeNoException();
                    return true;
                }
                case 3: 
            }
            object.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
            object = this.getVersion();
            parcel.writeNoException();
            parcel.writeString((String)object);
            return true;
        }

        private static class a
        implements hc {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            @Override
            public void a(Map map, long l, String string, List<hb> list) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
                    parcel.writeMap(map);
                    parcel.writeLong(l);
                    parcel.writeString(string);
                    parcel.writeTypedList(list);
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            @Override
            public void dH() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
                    this.lb.transact(2, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public String getVersion() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    String string = parcel2.readString();
                    return string;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }
        }

    }

}

