/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface INotificationSideChannel
extends IInterface {
    public void cancel(String var1, int var2, String var3) throws RemoteException;

    public void cancelAll(String var1) throws RemoteException;

    public void notify(String var1, int var2, String var3, Notification var4) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class Stub
    extends Binder
    implements INotificationSideChannel {
        private static final String DESCRIPTOR = "android.support.v4.app.INotificationSideChannel";
        static final int TRANSACTION_cancel = 2;
        static final int TRANSACTION_cancelAll = 3;
        static final int TRANSACTION_notify = 1;

        public Stub();

        public static INotificationSideChannel asInterface(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class Proxy
        implements INotificationSideChannel {
            private IBinder mRemote;

            Proxy(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public void cancel(String var1, int var2, String var3) throws RemoteException;

            @Override
            public void cancelAll(String var1) throws RemoteException;

            public String getInterfaceDescriptor();

            @Override
            public void notify(String var1, int var2, String var3, Notification var4) throws RemoteException;
        }

    }

}

