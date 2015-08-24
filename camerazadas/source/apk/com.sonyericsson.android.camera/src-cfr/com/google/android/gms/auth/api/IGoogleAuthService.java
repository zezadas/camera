/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.GoogleAuthApiRequest;
import com.google.android.gms.auth.api.GoogleAuthApiRequestCreator;
import com.google.android.gms.auth.api.IGoogleAuthApiCallbacks;

public interface IGoogleAuthService
extends IInterface {
    public void sendConnection(IGoogleAuthApiCallbacks var1, GoogleAuthApiRequest var2) throws RemoteException;

    public static abstract class Stub
    extends Binder
    implements IGoogleAuthService {
        public Stub() {
            this.attachInterface(this, "com.google.android.gms.auth.api.IGoogleAuthService");
        }

        public static IGoogleAuthService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.IGoogleAuthService");
            if (iInterface != null && iInterface instanceof IGoogleAuthService) {
                return (IGoogleAuthService)iInterface;
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
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.auth.api.IGoogleAuthService");
                    return true;
                }
                case 1: 
            }
            object.enforceInterface("com.google.android.gms.auth.api.IGoogleAuthService");
            IGoogleAuthApiCallbacks iGoogleAuthApiCallbacks = IGoogleAuthApiCallbacks.Stub.asInterface(object.readStrongBinder());
            object = object.readInt() != 0 ? GoogleAuthApiRequest.CREATOR.createFromParcel((Parcel)object) : null;
            this.sendConnection(iGoogleAuthApiCallbacks, (GoogleAuthApiRequest)object);
            parcel.writeNoException();
            return true;
        }

        private static class a
        implements IGoogleAuthService {
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
            public void sendConnection(IGoogleAuthApiCallbacks object, GoogleAuthApiRequest googleAuthApiRequest) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.auth.api.IGoogleAuthService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (googleAuthApiRequest != null) {
                        parcel.writeInt(1);
                        googleAuthApiRequest.writeToParcel(parcel, 0);
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
        }

    }

}

