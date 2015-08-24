/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.drive.realtime.internal.ParcelableCollaborator;

public interface d
extends IInterface {
    public void a(ParcelableCollaborator var1) throws RemoteException;

    public void b(ParcelableCollaborator var1) throws RemoteException;

    public static abstract class com.google.android.gms.drive.realtime.internal.d$a
    extends Binder
    implements d {
        public static d Z(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback");
            if (iInterface != null && iInterface instanceof d) {
                return (d)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel parcel2, int n2) throws RemoteException {
            ParcelableCollaborator parcelableCollaborator = null;
            ParcelableCollaborator parcelableCollaborator2 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, parcel2, n2);
                }
                case 1598968902: {
                    parcel2.writeString("com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback");
                    return true;
                }
                case 1: {
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback");
                    if (parcel.readInt() != 0) {
                        parcelableCollaborator2 = ParcelableCollaborator.CREATOR.createFromParcel(parcel);
                    }
                    this.a(parcelableCollaborator2);
                    parcel2.writeNoException();
                    return true;
                }
                case 2: 
            }
            parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback");
            parcelableCollaborator2 = parcelableCollaborator;
            if (parcel.readInt() != 0) {
                parcelableCollaborator2 = ParcelableCollaborator.CREATOR.createFromParcel(parcel);
            }
            this.b(parcelableCollaborator2);
            parcel2.writeNoException();
            return true;
        }

        private static class a
        implements d {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ParcelableCollaborator parcelableCollaborator) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback");
                    if (parcelableCollaborator != null) {
                        parcel.writeInt(1);
                        parcelableCollaborator.writeToParcel(parcel, 0);
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

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void b(ParcelableCollaborator parcelableCollaborator) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.ICollaboratorEventCallback");
                    if (parcelableCollaborator != null) {
                        parcel.writeInt(1);
                        parcelableCollaborator.writeToParcel(parcel, 0);
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

