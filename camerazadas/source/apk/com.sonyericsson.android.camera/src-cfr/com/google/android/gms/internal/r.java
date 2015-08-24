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
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsRequestCreator;
import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.auth.AccountChangeEventsResponseCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public interface r
extends IInterface {
    public Bundle a(String var1, Bundle var2) throws RemoteException;

    public Bundle a(String var1, String var2, Bundle var3) throws RemoteException;

    public AccountChangeEventsResponse a(AccountChangeEventsRequest var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.r$a
    extends Binder
    implements r {
        public static r a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
            if (iInterface != null && iInterface instanceof r) {
                return (r)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            String string = null;
            String string2 = null;
            Object object2 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.auth.IAuthManagerService");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.auth.IAuthManagerService");
                    string = object.readString();
                    string2 = object.readString();
                    if (object.readInt() != 0) {
                        object2 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    object = this.a(string, string2, (Bundle)object2);
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        do {
                            return true;
                            break;
                        } while (true);
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.auth.IAuthManagerService");
                    string2 = object.readString();
                    object2 = string;
                    if (object.readInt() != 0) {
                        object2 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    object = this.a(string2, (Bundle)object2);
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        do {
                            return true;
                            break;
                        } while (true);
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 3: 
            }
            object.enforceInterface("com.google.android.auth.IAuthManagerService");
            object2 = string2;
            if (object.readInt() != 0) {
                object2 = AccountChangeEventsRequest.CREATOR.createFromParcel((Parcel)object);
            }
            object = this.a((AccountChangeEventsRequest)object2);
            parcel.writeNoException();
            if (object != null) {
                parcel.writeInt(1);
                object.writeToParcel(parcel, 1);
                do {
                    return true;
                    break;
                } while (true);
            }
            parcel.writeInt(0);
            return true;
        }

        private static class a
        implements r {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public Bundle a(String object, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
                    parcel.writeString((String)object);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(2, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel2) : null;
                    return object;
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
            public Bundle a(String object, String string, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
                    parcel.writeString((String)object);
                    parcel.writeString(string);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel2) : null;
                    return object;
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
            public AccountChangeEventsResponse a(AccountChangeEventsRequest safeParcelable) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
                    if (safeParcelable != null) {
                        parcel.writeInt(1);
                        safeParcelable.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    safeParcelable = parcel2.readInt() != 0 ? AccountChangeEventsResponse.CREATOR.createFromParcel(parcel2) : null;
                    return safeParcelable;
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

