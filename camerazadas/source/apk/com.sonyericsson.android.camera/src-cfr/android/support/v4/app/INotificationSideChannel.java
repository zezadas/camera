/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public interface INotificationSideChannel
extends IInterface {
    public void cancel(String var1, int var2, String var3) throws RemoteException;

    public void cancelAll(String var1) throws RemoteException;

    public void notify(String var1, int var2, String var3, Notification var4) throws RemoteException;

    public static abstract class Stub
    extends Binder
    implements INotificationSideChannel {
        private static final String DESCRIPTOR = "android.support.v4.app.INotificationSideChannel";
        static final int TRANSACTION_cancel = 2;
        static final int TRANSACTION_cancelAll = 3;
        static final int TRANSACTION_notify = 1;

        public Stub() {
            this.attachInterface(this, "android.support.v4.app.INotificationSideChannel");
        }

        public static INotificationSideChannel asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
            if (iInterface != null && iInterface instanceof INotificationSideChannel) {
                return (INotificationSideChannel)iInterface;
            }
            return new Proxy(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
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
                    object2.writeString("android.support.v4.app.INotificationSideChannel");
                    return true;
                }
                case 1: {
                    object.enforceInterface("android.support.v4.app.INotificationSideChannel");
                    object2 = object.readString();
                    n = object.readInt();
                    String string = object.readString();
                    object = object.readInt() != 0 ? Notification.CREATOR.createFromParcel((Parcel)object) : null;
                    this.notify((String)object2, n, string, (Notification)object);
                    return true;
                }
                case 2: {
                    object.enforceInterface("android.support.v4.app.INotificationSideChannel");
                    this.cancel(object.readString(), object.readInt(), object.readString());
                    return true;
                }
                case 3: 
            }
            object.enforceInterface("android.support.v4.app.INotificationSideChannel");
            this.cancelAll(object.readString());
            return true;
        }

        private static class Proxy
        implements INotificationSideChannel {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override
            public void cancel(String string, int n, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    parcel.writeString(string2);
                    this.mRemote.transact(2, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            @Override
            public void cancelAll(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    parcel.writeString(string);
                    this.mRemote.transact(3, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return "android.support.v4.app.INotificationSideChannel";
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void notify(String string, int n, String string2, Notification notification) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    parcel.writeString(string2);
                    if (notification != null) {
                        parcel.writeInt(1);
                        notification.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.mRemote.transact(1, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }
        }

    }

}

