/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.psm.sysmonservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ISysmonService
extends IInterface {
    public int getCameraLowTempBurnTimeoutSec() throws RemoteException;

    public int getThermalLevelForCamera() throws RemoteException;

    public int getThermalLevelForFs1seg() throws RemoteException;

    public static abstract class Stub
    extends Binder
    implements ISysmonService {
        private static final String DESCRIPTOR = "com.sonyericsson.psm.sysmonservice.ISysmonService";
        static final int TRANSACTION_getCameraLowTempBurnTimeoutSec = 3;
        static final int TRANSACTION_getThermalLevelForCamera = 1;
        static final int TRANSACTION_getThermalLevelForFs1seg = 2;

        public Stub() {
            this.attachInterface(this, "com.sonyericsson.psm.sysmonservice.ISysmonService");
        }

        public static ISysmonService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.sonyericsson.psm.sysmonservice.ISysmonService");
            if (iInterface != null && iInterface instanceof ISysmonService) {
                return (ISysmonService)iInterface;
            }
            return new Proxy(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel parcel2, int n2) throws RemoteException {
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, parcel2, n2);
                }
                case 1598968902: {
                    parcel2.writeString("com.sonyericsson.psm.sysmonservice.ISysmonService");
                    return true;
                }
                case 1: {
                    parcel.enforceInterface("com.sonyericsson.psm.sysmonservice.ISysmonService");
                    n = this.getThermalLevelForCamera();
                    parcel2.writeNoException();
                    parcel2.writeInt(n);
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("com.sonyericsson.psm.sysmonservice.ISysmonService");
                    n = this.getThermalLevelForFs1seg();
                    parcel2.writeNoException();
                    parcel2.writeInt(n);
                    return true;
                }
                case 3: 
            }
            parcel.enforceInterface("com.sonyericsson.psm.sysmonservice.ISysmonService");
            n = this.getCameraLowTempBurnTimeoutSec();
            parcel2.writeNoException();
            parcel2.writeInt(n);
            return true;
        }

        private static class Proxy
        implements ISysmonService {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override
            public int getCameraLowTempBurnTimeoutSec() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.sonyericsson.psm.sysmonservice.ISysmonService");
                    this.mRemote.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return "com.sonyericsson.psm.sysmonservice.ISysmonService";
            }

            @Override
            public int getThermalLevelForCamera() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.sonyericsson.psm.sysmonservice.ISysmonService");
                    this.mRemote.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public int getThermalLevelForFs1seg() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.sonyericsson.psm.sysmonservice.ISysmonService");
                    this.mRemote.transact(2, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }
        }

    }

}

