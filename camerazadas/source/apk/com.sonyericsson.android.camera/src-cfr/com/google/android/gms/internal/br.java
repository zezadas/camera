/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

public interface br
extends IInterface {
    public void as() throws RemoteException;

    public String bt() throws RemoteException;

    public d bu() throws RemoteException;

    public d bv() throws RemoteException;

    public String bw() throws RemoteException;

    public double bx() throws RemoteException;

    public String by() throws RemoteException;

    public String bz() throws RemoteException;

    public String getBody() throws RemoteException;

    public void i(int var1) throws RemoteException;

    public static abstract class a
    extends Binder
    implements br {
        public a() {
            this.attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            d d = null;
            d d2 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                    return true;
                }
                case 1: {
                    object.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                    this.i(object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 2: {
                    object.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                    this.as();
                    parcel.writeNoException();
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                    object = this.bt();
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 4: {
                    object.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                    d = this.bu();
                    parcel.writeNoException();
                    object = d2;
                    if (d != null) {
                        object = d.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 5: {
                    object.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                    object = this.getBody();
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 6: {
                    object.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                    d2 = this.bv();
                    parcel.writeNoException();
                    object = d;
                    if (d2 != null) {
                        object = d2.asBinder();
                    }
                    parcel.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 7: {
                    object.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                    object = this.bw();
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 8: {
                    object.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                    double d3 = this.bx();
                    parcel.writeNoException();
                    parcel.writeDouble(d3);
                    return true;
                }
                case 9: {
                    object.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                    object = this.by();
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 10: 
            }
            object.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            object = this.bz();
            parcel.writeNoException();
            parcel.writeString((String)object);
            return true;
        }
    }

}

