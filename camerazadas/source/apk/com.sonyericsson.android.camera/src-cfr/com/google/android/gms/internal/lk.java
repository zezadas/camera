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
import com.google.android.gms.fitness.service.FitnessSensorServiceRequest;
import com.google.android.gms.internal.kn;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.lg;
import com.google.android.gms.internal.li;

public interface lk
extends IInterface {
    public void a(FitnessSensorServiceRequest var1, kt var2) throws RemoteException;

    public void a(lg var1, kn var2) throws RemoteException;

    public void a(li var1, kt var2) throws RemoteException;

    public static abstract class a
    extends Binder
    implements lk {
        public a() {
            this.attachInterface(this, "com.google.android.gms.fitness.internal.service.IFitnessSensorService");
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel object, int n2) throws RemoteException {
            Object var6_5 = null;
            Object var7_6 = null;
            Object var5_7 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, (Parcel)object, n2);
                }
                case 1598968902: {
                    object.writeString("com.google.android.gms.fitness.internal.service.IFitnessSensorService");
                    return true;
                }
                case 1: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.service.IFitnessSensorService");
                    object = var5_7;
                    if (parcel.readInt() != 0) {
                        object = lg.CREATOR.createFromParcel(parcel);
                    }
                    this.a((lg)object, kn.a.aq(parcel.readStrongBinder()));
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.service.IFitnessSensorService");
                    object = var6_5;
                    if (parcel.readInt() != 0) {
                        object = FitnessSensorServiceRequest.CREATOR.createFromParcel(parcel);
                    }
                    this.a((FitnessSensorServiceRequest)object, kt.a.aw(parcel.readStrongBinder()));
                    return true;
                }
                case 3: 
            }
            parcel.enforceInterface("com.google.android.gms.fitness.internal.service.IFitnessSensorService");
            object = var7_6;
            if (parcel.readInt() != 0) {
                object = li.CREATOR.createFromParcel(parcel);
            }
            this.a((li)object, kt.a.aw(parcel.readStrongBinder()));
            return true;
        }
    }

}

