/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;
import com.google.android.gms.maps.model.u;

public interface i
extends IInterface {
    public Tile getTile(int var1, int var2, int var3) throws RemoteException;

    public static abstract class com.google.android.gms.maps.model.internal.i$a
    extends Binder
    implements i {
        public com.google.android.gms.maps.model.internal.i$a() {
            this.attachInterface(this, "com.google.android.gms.maps.model.internal.ITileProviderDelegate");
        }

        public static i by(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
            if (iInterface != null && iInterface instanceof i) {
                return (i)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
                    return true;
                }
                case 1: 
            }
            object.enforceInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
            object = this.getTile(object.readInt(), object.readInt(), object.readInt());
            parcel.writeNoException();
            if (object != null) {
                parcel.writeInt(1);
                object.writeToParcel(parcel, 1);
                return true;
            }
            parcel.writeInt(0);
            return true;
        }

        private static class a
        implements i {
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
            public Tile getTile(int n, int n2, int n3) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    parcel.writeInt(n3);
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    Tile tile = parcel2.readInt() != 0 ? Tile.CREATOR.cU(parcel2) : null;
                    return tile;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }
        }

    }

}

