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
import com.google.android.gms.internal.ni;
import com.google.android.gms.internal.nk;
import com.google.android.gms.internal.nm;
import com.google.android.gms.internal.nn;
import java.util.ArrayList;
import java.util.List;

public interface nh
extends IInterface {
    public void a(String var1, nm var2, ni var3) throws RemoteException;

    public void a(String var1, nm var2, List<ni> var3) throws RemoteException;

    public void a(String var1, nm var2, byte[] var3) throws RemoteException;

    public static abstract class com.google.android.gms.internal.nh$a
    extends Binder
    implements nh {
        public static nh bC(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.playlog.internal.IPlayLogService");
            if (iInterface != null && iInterface instanceof nh) {
                return (nh)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel object, int n2) throws RemoteException {
            String string = null;
            Object var7_6 = null;
            Object object2 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, (Parcel)object, n2);
                }
                case 1598968902: {
                    object.writeString("com.google.android.gms.playlog.internal.IPlayLogService");
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("com.google.android.gms.playlog.internal.IPlayLogService");
                    string = parcel.readString();
                    object = parcel.readInt() != 0 ? nm.CREATOR.cY(parcel) : null;
                    if (parcel.readInt() != 0) {
                        object2 = ni.CREATOR.cX(parcel);
                    }
                    this.a(string, (nm)object, (ni)object2);
                    return true;
                }
                case 3: {
                    parcel.enforceInterface("com.google.android.gms.playlog.internal.IPlayLogService");
                    object2 = parcel.readString();
                    object = string;
                    if (parcel.readInt() != 0) {
                        object = nm.CREATOR.cY(parcel);
                    }
                    this.a((String)object2, (nm)object, parcel.createTypedArrayList(ni.CREATOR));
                    return true;
                }
                case 4: 
            }
            parcel.enforceInterface("com.google.android.gms.playlog.internal.IPlayLogService");
            object2 = parcel.readString();
            object = var7_6;
            if (parcel.readInt() != 0) {
                object = nm.CREATOR.cY(parcel);
            }
            this.a((String)object2, (nm)object, parcel.createByteArray());
            return true;
        }

        private static class a
        implements nh {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(String string, nm nm, ni ni) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.playlog.internal.IPlayLogService");
                    parcel.writeString(string);
                    if (nm != null) {
                        parcel.writeInt(1);
                        nm.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (ni != null) {
                        parcel.writeInt(1);
                        ni.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void a(String string, nm nm, List<ni> list) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.playlog.internal.IPlayLogService");
                    parcel.writeString(string);
                    if (nm != null) {
                        parcel.writeInt(1);
                        nm.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeTypedList(list);
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
            public void a(String string, nm nm, byte[] arrby) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.playlog.internal.IPlayLogService");
                    parcel.writeString(string);
                    if (nm != null) {
                        parcel.writeInt(1);
                        nm.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeByteArray(arrby);
                    this.lb.transact(4, parcel, null, 1);
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
        }

    }

}

