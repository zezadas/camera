/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.internal.ig;
import com.google.android.gms.internal.il;

public interface io
extends IInterface {
    public void a(ApplicationMetadata var1, String var2, String var3, boolean var4) throws RemoteException;

    public void a(String var1, double var2, boolean var4) throws RemoteException;

    public void a(String var1, long var2) throws RemoteException;

    public void a(String var1, long var2, int var4) throws RemoteException;

    public void ac(int var1) throws RemoteException;

    public void ad(int var1) throws RemoteException;

    public void ae(int var1) throws RemoteException;

    public void af(int var1) throws RemoteException;

    public void b(ig var1) throws RemoteException;

    public void b(il var1) throws RemoteException;

    public void b(String var1, byte[] var2) throws RemoteException;

    public void k(String var1, String var2) throws RemoteException;

    public void onApplicationDisconnected(int var1) throws RemoteException;

    public static abstract class a
    extends Binder
    implements io {
        public a() {
            this.attachInterface(this, "com.google.android.gms.cast.internal.ICastDeviceControllerListener");
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel object, int n2) throws RemoteException {
            boolean bl = false;
            boolean bl2 = false;
            String string = null;
            Object var11_8 = null;
            String string2 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, (Parcel)object, n2);
                }
                case 1598968902: {
                    object.writeString("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    return true;
                }
                case 1: {
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    this.ac(parcel.readInt());
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    object = string2;
                    if (parcel.readInt() != 0) {
                        object = ApplicationMetadata.CREATOR.createFromParcel(parcel);
                    }
                    string2 = parcel.readString();
                    string = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bl2 = true;
                    }
                    this.a((ApplicationMetadata)object, string2, string, bl2);
                    return true;
                }
                case 3: {
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    this.ad(parcel.readInt());
                    return true;
                }
                case 4: {
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    object = parcel.readString();
                    double d = parcel.readDouble();
                    bl2 = bl;
                    if (parcel.readInt() != 0) {
                        bl2 = true;
                    }
                    this.a((String)object, d, bl2);
                    return true;
                }
                case 5: {
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    this.k(parcel.readString(), parcel.readString());
                    return true;
                }
                case 6: {
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    this.b(parcel.readString(), parcel.createByteArray());
                    return true;
                }
                case 7: {
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    this.af(parcel.readInt());
                    return true;
                }
                case 8: {
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    this.ae(parcel.readInt());
                    return true;
                }
                case 9: {
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    this.onApplicationDisconnected(parcel.readInt());
                    return true;
                }
                case 10: {
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    this.a(parcel.readString(), parcel.readLong(), parcel.readInt());
                    return true;
                }
                case 11: {
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    this.a(parcel.readString(), parcel.readLong());
                    return true;
                }
                case 12: {
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    object = string;
                    if (parcel.readInt() != 0) {
                        object = ig.CREATOR.createFromParcel(parcel);
                    }
                    this.b((ig)object);
                    return true;
                }
                case 13: 
            }
            parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
            object = var11_8;
            if (parcel.readInt() != 0) {
                object = il.CREATOR.createFromParcel(parcel);
            }
            this.b((il)object);
            return true;
        }
    }

}

