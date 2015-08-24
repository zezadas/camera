/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.on;
import com.google.android.gms.internal.ov;
import com.google.android.gms.internal.ow;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.d;

public interface ot
extends IInterface {
    public void a(Bundle var1, ow var2) throws RemoteException;

    public void a(on var1, Bundle var2, ow var3) throws RemoteException;

    public void a(FullWalletRequest var1, Bundle var2, ow var3) throws RemoteException;

    public void a(MaskedWalletRequest var1, Bundle var2, ov var3) throws RemoteException;

    public void a(MaskedWalletRequest var1, Bundle var2, ow var3) throws RemoteException;

    public void a(NotifyTransactionStatusRequest var1, Bundle var2) throws RemoteException;

    public void a(d var1, Bundle var2, ow var3) throws RemoteException;

    public void a(String var1, String var2, Bundle var3, ow var4) throws RemoteException;

    public void p(Bundle var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.ot$a
    extends Binder
    implements ot {
        public static ot bL(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.wallet.internal.IOwService");
            if (iInterface != null && iInterface instanceof ot) {
                return (ot)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel object2, int n2) throws RemoteException {
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, (Parcel)object2, n2);
                }
                case 1598968902: {
                    object2.writeString("com.google.android.gms.wallet.internal.IOwService");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    object2 = object.readInt() != 0 ? MaskedWalletRequest.CREATOR.createFromParcel((Parcel)object) : null;
                    Bundle bundle = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((MaskedWalletRequest)object2, bundle, ow.a.bO(object.readStrongBinder()));
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    object2 = object.readInt() != 0 ? FullWalletRequest.CREATOR.createFromParcel((Parcel)object) : null;
                    Bundle bundle = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((FullWalletRequest)object2, bundle, ow.a.bO(object.readStrongBinder()));
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    String string = object.readString();
                    String string2 = object.readString();
                    object2 = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a(string, string2, (Bundle)object2, ow.a.bO(object.readStrongBinder()));
                    return true;
                }
                case 4: {
                    object.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    object2 = object.readInt() != 0 ? NotifyTransactionStatusRequest.CREATOR.createFromParcel((Parcel)object) : null;
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((NotifyTransactionStatusRequest)object2, (Bundle)object);
                    return true;
                }
                case 5: {
                    object.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    object2 = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((Bundle)object2, ow.a.bO(object.readStrongBinder()));
                    return true;
                }
                case 6: {
                    object.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    object2 = object.readInt() != 0 ? d.CREATOR.createFromParcel((Parcel)object) : null;
                    Bundle bundle = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((d)object2, bundle, ow.a.bO(object.readStrongBinder()));
                    return true;
                }
                case 7: {
                    object.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    object2 = object.readInt() != 0 ? MaskedWalletRequest.CREATOR.createFromParcel((Parcel)object) : null;
                    Bundle bundle = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((MaskedWalletRequest)object2, bundle, ov.a.bN(object.readStrongBinder()));
                    return true;
                }
                case 8: {
                    object.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    object2 = object.readInt() != 0 ? on.CREATOR.createFromParcel((Parcel)object) : null;
                    Bundle bundle = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((on)object2, bundle, ow.a.bO(object.readStrongBinder()));
                    return true;
                }
                case 9: 
            }
            object.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
            object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
            this.p((Bundle)object);
            return true;
        }

        private static class a
        implements ot {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(Bundle object, ow ow) throws RemoteException {
                Object var3_4 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var3_4;
                    if (ow != null) {
                        object = ow.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(on object, Bundle bundle, ow ow) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (ow != null) {
                        object = ow.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(FullWalletRequest object, Bundle bundle, ow ow) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (ow != null) {
                        object = ow.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(MaskedWalletRequest object, Bundle bundle, ov ov) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (ov != null) {
                        object = ov.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(MaskedWalletRequest object, Bundle bundle, ow ow) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (ow != null) {
                        object = ow.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(NotifyTransactionStatusRequest notifyTransactionStatusRequest, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (notifyTransactionStatusRequest != null) {
                        parcel.writeInt(1);
                        notifyTransactionStatusRequest.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
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
            public void a(d object, Bundle bundle, ow ow) throws RemoteException {
                Object var4_5 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var4_5;
                    if (ow != null) {
                        object = ow.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
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
            public void a(String object, String string, Bundle bundle, ow ow) throws RemoteException {
                Object var5_6 = null;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    parcel.writeString((String)object);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = var5_6;
                    if (ow != null) {
                        object = ow.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(3, parcel, null, 1);
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void p(Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(9, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }
        }

    }

}

