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

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class Stub
    extends Binder
    implements ISysmonService {
        private static final String DESCRIPTOR = "com.sonyericsson.psm.sysmonservice.ISysmonService";
        static final int TRANSACTION_getCameraLowTempBurnTimeoutSec = 3;
        static final int TRANSACTION_getThermalLevelForCamera = 1;
        static final int TRANSACTION_getThermalLevelForFs1seg = 2;

        public Stub();

        public static ISysmonService asInterface(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class Proxy
        implements ISysmonService {
            private IBinder mRemote;

            Proxy(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public int getCameraLowTempBurnTimeoutSec() throws RemoteException;

            public String getInterfaceDescriptor();

            @Override
            public int getThermalLevelForCamera() throws RemoteException;

            @Override
            public int getThermalLevelForFs1seg() throws RemoteException;
        }

    }

}

