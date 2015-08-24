/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.ab;
import com.google.android.gms.wearable.internal.ao;
import com.google.android.gms.wearable.internal.as;
import com.google.android.gms.wearable.internal.au;
import com.google.android.gms.wearable.internal.p;
import com.google.android.gms.wearable.internal.r;
import com.google.android.gms.wearable.internal.t;
import com.google.android.gms.wearable.internal.v;
import com.google.android.gms.wearable.internal.x;
import com.google.android.gms.wearable.internal.z;

public interface ad
extends IInterface {
    public void a(Status var1) throws RemoteException;

    public void a(ab var1) throws RemoteException;

    public void a(ao var1) throws RemoteException;

    public void a(as var1) throws RemoteException;

    public void a(au var1) throws RemoteException;

    public void a(p var1) throws RemoteException;

    public void a(r var1) throws RemoteException;

    public void a(t var1) throws RemoteException;

    public void a(v var1) throws RemoteException;

    public void a(x var1) throws RemoteException;

    public void a(z var1) throws RemoteException;

    public void aa(DataHolder var1) throws RemoteException;

    public static abstract class com.google.android.gms.wearable.internal.ad$a
    extends Binder
    implements ad {
        public com.google.android.gms.wearable.internal.ad$a() {
            this.attachInterface(this, "com.google.android.gms.wearable.internal.IWearableCallbacks");
        }

        public static ad bR(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (iInterface != null && iInterface instanceof ad) {
                return (ad)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel parcel2, int n2) throws RemoteException {
            r r = null;
            r r2 = null;
            r r3 = null;
            r r4 = null;
            r r5 = null;
            r r6 = null;
            r r7 = null;
            r r8 = null;
            r r9 = null;
            r r10 = null;
            r r11 = null;
            SafeParcelable safeParcelable = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, parcel2, n2);
                }
                case 1598968902: {
                    parcel2.writeString("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        safeParcelable = r.CREATOR.createFromParcel(parcel);
                    }
                    this.a((r)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 13: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    safeParcelable = r;
                    if (parcel.readInt() != 0) {
                        safeParcelable = t.CREATOR.createFromParcel(parcel);
                    }
                    this.a((t)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 3: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    safeParcelable = r2;
                    if (parcel.readInt() != 0) {
                        safeParcelable = ao.CREATOR.createFromParcel(parcel);
                    }
                    this.a((ao)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 4: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    safeParcelable = r3;
                    if (parcel.readInt() != 0) {
                        safeParcelable = x.CREATOR.createFromParcel(parcel);
                    }
                    this.a((x)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 5: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    safeParcelable = r4;
                    if (parcel.readInt() != 0) {
                        safeParcelable = DataHolder.CREATOR.z(parcel);
                    }
                    this.aa((DataHolder)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 6: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    safeParcelable = r5;
                    if (parcel.readInt() != 0) {
                        safeParcelable = p.CREATOR.createFromParcel(parcel);
                    }
                    this.a((p)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 7: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    safeParcelable = r6;
                    if (parcel.readInt() != 0) {
                        safeParcelable = as.CREATOR.createFromParcel(parcel);
                    }
                    this.a((as)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 8: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    safeParcelable = r7;
                    if (parcel.readInt() != 0) {
                        safeParcelable = z.CREATOR.createFromParcel(parcel);
                    }
                    this.a((z)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 9: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    safeParcelable = r8;
                    if (parcel.readInt() != 0) {
                        safeParcelable = ab.CREATOR.createFromParcel(parcel);
                    }
                    this.a((ab)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 10: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    safeParcelable = r9;
                    if (parcel.readInt() != 0) {
                        safeParcelable = v.CREATOR.createFromParcel(parcel);
                    }
                    this.a((v)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 11: {
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    safeParcelable = r10;
                    if (parcel.readInt() != 0) {
                        safeParcelable = Status.CREATOR.createFromParcel(parcel);
                    }
                    this.a((Status)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 12: 
            }
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
            safeParcelable = r11;
            if (parcel.readInt() != 0) {
                safeParcelable = au.CREATOR.createFromParcel(parcel);
            }
            this.a((au)safeParcelable);
            parcel2.writeNoException();
            return true;
        }

        private static class a
        implements ad {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(Status status) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (status != null) {
                        parcel.writeInt(1);
                        status.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(11, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ab ab) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (ab != null) {
                        parcel.writeInt(1);
                        ab.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(9, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ao ao) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (ao != null) {
                        parcel.writeInt(1);
                        ao.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(as as) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (as != null) {
                        parcel.writeInt(1);
                        as.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(7, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(au au) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (au != null) {
                        parcel.writeInt(1);
                        au.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(p p) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (p != null) {
                        parcel.writeInt(1);
                        p.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(6, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(r r) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (r != null) {
                        parcel.writeInt(1);
                        r.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(2, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(t t) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (t != null) {
                        parcel.writeInt(1);
                        t.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(13, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(v v) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (v != null) {
                        parcel.writeInt(1);
                        v.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(10, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(x x) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (x != null) {
                        parcel.writeInt(1);
                        x.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(4, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(z z) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (z != null) {
                        parcel.writeInt(1);
                        z.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(8, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void aa(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public IBinder asBinder() {
                return this.lb;
            }
        }

    }

}

