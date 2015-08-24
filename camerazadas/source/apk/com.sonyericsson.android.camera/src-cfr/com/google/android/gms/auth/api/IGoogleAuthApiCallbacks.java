/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.auth.api.GoogleAuthApiResponse;
import com.google.android.gms.auth.api.GoogleAuthApiResponseCreator;

public interface IGoogleAuthApiCallbacks
extends IInterface {
    public void onConnectionSuccess(GoogleAuthApiResponse var1) throws RemoteException;

    public void onError(int var1, String var2, PendingIntent var3) throws RemoteException;

    public static abstract class Stub
    extends Binder
    implements IGoogleAuthApiCallbacks {
        public Stub() {
            this.attachInterface(this, "com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
        }

        public static IGoogleAuthApiCallbacks asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
            if (iInterface != null && iInterface instanceof IGoogleAuthApiCallbacks) {
                return (IGoogleAuthApiCallbacks)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel parcel2, int n2) throws RemoteException {
            Object object = null;
            String string = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, parcel2, n2);
                }
                case 1598968902: {
                    parcel2.writeString("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
                    return true;
                }
                case 1: {
                    parcel.enforceInterface("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
                    object = string;
                    if (parcel.readInt() != 0) {
                        object = GoogleAuthApiResponse.CREATOR.createFromParcel(parcel);
                    }
                    this.onConnectionSuccess((GoogleAuthApiResponse)object);
                    parcel2.writeNoException();
                    return true;
                }
                case 2: 
            }
            parcel.enforceInterface("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
            n = parcel.readInt();
            string = parcel.readString();
            if (parcel.readInt() != 0) {
                object = PendingIntent.CREATOR.createFromParcel(parcel);
            }
            this.onError(n, string, (PendingIntent)object);
            parcel2.writeNoException();
            return true;
        }

        private static class a
        implements IGoogleAuthApiCallbacks {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
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
            public void onConnectionSuccess(GoogleAuthApiResponse googleAuthApiResponse) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
                    if (googleAuthApiResponse != null) {
                        parcel.writeInt(1);
                        googleAuthApiResponse.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(1, parcel, parcel2, 0);
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
            public void onError(int n, String string, PendingIntent pendingIntent) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.auth.api.IGoogleAuthApiCallbacks");
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    if (pendingIntent != null) {
                        parcel.writeInt(1);
                        pendingIntent.writeToParcel(parcel, 0);
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
        }

    }

}

