/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.na;

public interface nb
extends IInterface {
    public void a(na var1, Uri var2, Bundle var3, boolean var4) throws RemoteException;

    public static abstract class com.google.android.gms.internal.nb$a
    extends Binder
    implements nb {
        public static nb bA(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.panorama.internal.IPanoramaService");
            if (iInterface != null && iInterface instanceof nb) {
                return (nb)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel object, int n2) throws RemoteException {
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, (Parcel)object, n2);
                }
                case 1598968902: {
                    object.writeString("com.google.android.gms.panorama.internal.IPanoramaService");
                    return true;
                }
                case 1: 
            }
            parcel.enforceInterface("com.google.android.gms.panorama.internal.IPanoramaService");
            na na = na.a.bz(parcel.readStrongBinder());
            object = parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null;
            Bundle bundle = parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null;
            boolean bl = parcel.readInt() != 0;
            this.a(na, (Uri)object, bundle, bl);
            return true;
        }

        private static class a
        implements nb {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(na na, Uri uri, Bundle bundle, boolean bl) throws RemoteException {
                IBinder iBinder = null;
                int n = 1;
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.panorama.internal.IPanoramaService");
                    if (na != null) {
                        iBinder = na.asBinder();
                    }
                    parcel.writeStrongBinder(iBinder);
                    if (uri != null) {
                        parcel.writeInt(1);
                        uri.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                }
                catch (Throwable var1_2) {
                    parcel.recycle();
                    throw var1_2;
                }
                if (!bl) {
                    n = 0;
                }
                parcel.writeInt(n);
                this.lb.transact(1, parcel, null, 1);
                parcel.recycle();
            }

            @Override
            public IBinder asBinder() {
                return this.lb;
            }
        }

    }

}

