/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.lw;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mb;
import com.google.android.gms.internal.mc;
import com.google.android.gms.internal.md;
import com.google.android.gms.internal.mf;
import com.google.android.gms.internal.mg;
import com.google.android.gms.internal.mh;
import com.google.android.gms.internal.mi;
import com.google.android.gms.internal.mj;
import com.google.android.gms.internal.mk;
import com.google.android.gms.internal.ml;
import com.google.android.gms.internal.mm;
import com.google.android.gms.internal.mn;
import com.google.android.gms.internal.mo;
import com.google.android.gms.internal.mr;
import com.google.android.gms.internal.mt;
import com.google.android.gms.internal.mu;
import com.google.android.gms.internal.mv;
import com.google.android.gms.internal.mx;
import com.google.android.gms.internal.my;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.a;
import com.google.android.gms.location.b;
import com.google.android.gms.location.c;
import com.google.android.gms.location.d;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.g;
import com.google.android.gms.maps.model.i;
import java.util.ArrayList;
import java.util.List;

public interface lx
extends IInterface {
    public void a(long var1, boolean var3, PendingIntent var4) throws RemoteException;

    public void a(PendingIntent var1) throws RemoteException;

    public void a(PendingIntent var1, lw var2, String var3) throws RemoteException;

    public void a(Location var1, int var2) throws RemoteException;

    public void a(lw var1, String var2) throws RemoteException;

    public void a(ma var1, PendingIntent var2) throws RemoteException;

    public void a(ma var1, com.google.android.gms.location.a var2) throws RemoteException;

    public void a(mh var1, mx var2, PendingIntent var3) throws RemoteException;

    public void a(mj var1, mx var2, mv var3) throws RemoteException;

    public void a(ml var1, mx var2) throws RemoteException;

    public void a(mn var1, mx var2, PendingIntent var3) throws RemoteException;

    public void a(mr var1, mx var2, mv var3) throws RemoteException;

    public void a(mt var1, LatLngBounds var2, List<String> var3, mx var4, mv var5) throws RemoteException;

    public void a(mx var1, PendingIntent var2) throws RemoteException;

    public void a(LocationRequest var1, PendingIntent var2) throws RemoteException;

    public void a(LocationRequest var1, com.google.android.gms.location.a var2) throws RemoteException;

    public void a(LocationRequest var1, com.google.android.gms.location.a var2, String var3) throws RemoteException;

    public void a(com.google.android.gms.location.a var1) throws RemoteException;

    public void a(LatLng var1, mj var2, mx var3, mv var4) throws RemoteException;

    public void a(LatLngBounds var1, int var2, mj var3, mx var4, mv var5) throws RemoteException;

    public void a(LatLngBounds var1, int var2, String var3, mj var4, mx var5, mv var6) throws RemoteException;

    public void a(String var1, mx var2, mv var3) throws RemoteException;

    public void a(String var1, LatLngBounds var2, mf var3, mx var4, mv var5) throws RemoteException;

    public void a(List<mc> var1, PendingIntent var2, lw var3, String var4) throws RemoteException;

    public void a(String[] var1, lw var2, String var3) throws RemoteException;

    public void b(mx var1, PendingIntent var2) throws RemoteException;

    public void b(String var1, mx var2, mv var3) throws RemoteException;

    public Location bW(String var1) throws RemoteException;

    public c bX(String var1) throws RemoteException;

    public Location lV() throws RemoteException;

    public IBinder lW() throws RemoteException;

    public IBinder lX() throws RemoteException;

    public void removeActivityUpdates(PendingIntent var1) throws RemoteException;

    public void setMockLocation(Location var1) throws RemoteException;

    public void setMockMode(boolean var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.lx$a
    extends Binder
    implements lx {
        public static lx aK(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (iInterface != null && iInterface instanceof lx) {
                return (lx)iInterface;
            }
            return new a(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel object2, int n2) throws RemoteException {
            boolean bl = false;
            Object var16_6 = null;
            Object var17_7 = null;
            Object object3 = null;
            Object var13_9 = null;
            Object object4 = null;
            Object object5 = null;
            Object var14_12 = null;
            Object var12_13 = null;
            Object var8_14 = null;
            Object var15_80 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, (Parcel)object2, n2);
                }
                case 1598968902: {
                    object2.writeString("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    return true;
                }
                case 1: {
                    void var8_16;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object5 = object.createTypedArrayList(mc.CREATOR);
                    if (object.readInt() != 0) {
                        PendingIntent pendingIntent = PendingIntent.CREATOR.createFromParcel((Parcel)object);
                    } else {
                        Object var8_17 = null;
                    }
                    this.a((List<mc>)object5, (PendingIntent)var8_16, lw.a.aJ(object.readStrongBinder()), object.readString());
                    object2.writeNoException();
                    return true;
                }
                case 2: {
                    void var8_19;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        PendingIntent pendingIntent = PendingIntent.CREATOR.createFromParcel((Parcel)object);
                    } else {
                        Object var8_20 = null;
                    }
                    this.a((PendingIntent)var8_19, lw.a.aJ(object.readStrongBinder()), object.readString());
                    object2.writeNoException();
                    return true;
                }
                case 3: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    this.a(object.createStringArray(), lw.a.aJ(object.readStrongBinder()), object.readString());
                    object2.writeNoException();
                    return true;
                }
                case 4: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    this.a(lw.a.aJ(object.readStrongBinder()), object.readString());
                    object2.writeNoException();
                    return true;
                }
                case 5: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    long l = object.readLong();
                    bl = object.readInt() != 0;
                    object = object.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a(l, bl, (PendingIntent)object);
                    object2.writeNoException();
                    return true;
                }
                case 6: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object = object.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel((Parcel)object) : null;
                    this.removeActivityUpdates((PendingIntent)object);
                    object2.writeNoException();
                    return true;
                }
                case 7: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object = this.lV();
                    object2.writeNoException();
                    if (object != null) {
                        object2.writeInt(1);
                        object.writeToParcel((Parcel)object2, 1);
                        return true;
                    }
                    object2.writeInt(0);
                    return true;
                }
                case 8: {
                    void var8_23;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    Object var8_21 = var15_80;
                    if (object.readInt() != 0) {
                        LocationRequest locationRequest = LocationRequest.CREATOR.cs((Parcel)object);
                    }
                    this.a((LocationRequest)var8_23, a.a.aI(object.readStrongBinder()));
                    object2.writeNoException();
                    return true;
                }
                case 20: {
                    void var8_26;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    Object var8_24 = var16_6;
                    if (object.readInt() != 0) {
                        LocationRequest locationRequest = LocationRequest.CREATOR.cs((Parcel)object);
                    }
                    this.a((LocationRequest)var8_26, a.a.aI(object.readStrongBinder()), object.readString());
                    object2.writeNoException();
                    return true;
                }
                case 9: {
                    void var8_28;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        LocationRequest locationRequest = LocationRequest.CREATOR.cs((Parcel)object);
                    } else {
                        Object var8_29 = null;
                    }
                    object = object.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((LocationRequest)var8_28, (PendingIntent)object);
                    object2.writeNoException();
                    return true;
                }
                case 52: {
                    void var8_32;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    Object var8_30 = var17_7;
                    if (object.readInt() != 0) {
                        ma ma = ma.CREATOR.cv((Parcel)object);
                    }
                    this.a((ma)var8_32, a.a.aI(object.readStrongBinder()));
                    object2.writeNoException();
                    return true;
                }
                case 53: {
                    void var8_34;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        ma ma = ma.CREATOR.cv((Parcel)object);
                    } else {
                        Object var8_35 = null;
                    }
                    object = object.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((ma)var8_34, (PendingIntent)object);
                    object2.writeNoException();
                    return true;
                }
                case 10: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    this.a(a.a.aI(object.readStrongBinder()));
                    object2.writeNoException();
                    return true;
                }
                case 11: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object = object.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((PendingIntent)object);
                    object2.writeNoException();
                    return true;
                }
                case 12: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.setMockMode(bl);
                    object2.writeNoException();
                    return true;
                }
                case 13: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object = object.readInt() != 0 ? Location.CREATOR.createFromParcel((Parcel)object) : null;
                    this.setMockLocation((Location)object);
                    object2.writeNoException();
                    return true;
                }
                case 14: {
                    void var8_37;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        LatLngBounds latLngBounds = LatLngBounds.CREATOR.cL((Parcel)object);
                    } else {
                        Object var8_38 = null;
                    }
                    n = object.readInt();
                    object5 = object.readInt() != 0 ? mj.CREATOR.cz((Parcel)object) : null;
                    object3 = object.readInt() != 0 ? mx.CREATOR.cF((Parcel)object) : null;
                    this.a((LatLngBounds)var8_37, n, (mj)object5, (mx)object3, mv.a.aM(object.readStrongBinder()));
                    object2.writeNoException();
                    return true;
                }
                case 47: {
                    void var8_40;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        LatLngBounds latLngBounds = LatLngBounds.CREATOR.cL((Parcel)object);
                    } else {
                        Object var8_41 = null;
                    }
                    n = object.readInt();
                    object4 = object.readString();
                    object5 = object.readInt() != 0 ? mj.CREATOR.cz((Parcel)object) : null;
                    if (object.readInt() != 0) {
                        object3 = mx.CREATOR.cF((Parcel)object);
                    }
                    this.a((LatLngBounds)var8_40, n, (String)object4, (mj)object5, (mx)object3, mv.a.aM(object.readStrongBinder()));
                    object2.writeNoException();
                    return true;
                }
                case 15: {
                    void var8_44;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object5 = object.readString();
                    Object var8_42 = var13_9;
                    if (object.readInt() != 0) {
                        mx mx = mx.CREATOR.cF((Parcel)object);
                    }
                    this.a((String)object5, (mx)var8_44, mv.a.aM(object.readStrongBinder()));
                    object2.writeNoException();
                    return true;
                }
                case 16: {
                    void var8_46;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        LatLng latLng = LatLng.CREATOR.cM((Parcel)object);
                    } else {
                        Object var8_47 = null;
                    }
                    object5 = object.readInt() != 0 ? mj.CREATOR.cz((Parcel)object) : null;
                    object3 = object4;
                    if (object.readInt() != 0) {
                        object3 = mx.CREATOR.cF((Parcel)object);
                    }
                    this.a((LatLng)var8_46, (mj)object5, (mx)object3, mv.a.aM(object.readStrongBinder()));
                    object2.writeNoException();
                    return true;
                }
                case 17: {
                    void var8_49;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        mj mj = mj.CREATOR.cz((Parcel)object);
                    } else {
                        Object var8_50 = null;
                    }
                    if (object.readInt() != 0) {
                        object5 = mx.CREATOR.cF((Parcel)object);
                    }
                    this.a((mj)var8_49, (mx)object5, mv.a.aM(object.readStrongBinder()));
                    object2.writeNoException();
                    return true;
                }
                case 42: {
                    void var8_53;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object5 = object.readString();
                    Object var8_51 = var14_12;
                    if (object.readInt() != 0) {
                        mx mx = mx.CREATOR.cF((Parcel)object);
                    }
                    this.b((String)object5, (mx)var8_53, mv.a.aM(object.readStrongBinder()));
                    object2.writeNoException();
                    return true;
                }
                case 50: {
                    void var8_55;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        mt mt = mt.CREATOR.cE((Parcel)object);
                    } else {
                        Object var8_56 = null;
                    }
                    object5 = object.readInt() != 0 ? LatLngBounds.CREATOR.cL((Parcel)object) : null;
                    object4 = object.createStringArrayList();
                    object3 = object.readInt() != 0 ? mx.CREATOR.cF((Parcel)object) : null;
                    this.a((mt)var8_55, (LatLngBounds)object5, (List<String>)object4, (mx)object3, mv.a.aM(object.readStrongBinder()));
                    object2.writeNoException();
                    return true;
                }
                case 18: {
                    void var8_58;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        mn mn = mn.CREATOR.cB((Parcel)object);
                    } else {
                        Object var8_59 = null;
                    }
                    object5 = object.readInt() != 0 ? mx.CREATOR.cF((Parcel)object) : null;
                    object = object.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((mn)var8_58, (mx)object5, (PendingIntent)object);
                    object2.writeNoException();
                    return true;
                }
                case 19: {
                    void var8_61;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        mx mx = mx.CREATOR.cF((Parcel)object);
                    } else {
                        Object var8_62 = null;
                    }
                    object = object.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((mx)var8_61, (PendingIntent)object);
                    object2.writeNoException();
                    return true;
                }
                case 48: {
                    void var8_64;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        mh mh = mh.CREATOR.cy((Parcel)object);
                    } else {
                        Object var8_65 = null;
                    }
                    object5 = object.readInt() != 0 ? mx.CREATOR.cF((Parcel)object) : null;
                    object = object.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((mh)var8_64, (mx)object5, (PendingIntent)object);
                    object2.writeNoException();
                    return true;
                }
                case 49: {
                    void var8_67;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        mx mx = mx.CREATOR.cF((Parcel)object);
                    } else {
                        Object var8_68 = null;
                    }
                    object = object.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel((Parcel)object) : null;
                    this.b((mx)var8_67, (PendingIntent)object);
                    object2.writeNoException();
                    return true;
                }
                case 55: {
                    void var8_70;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object4 = object.readString();
                    if (object.readInt() != 0) {
                        LatLngBounds latLngBounds = LatLngBounds.CREATOR.cL((Parcel)object);
                    } else {
                        Object var8_71 = null;
                    }
                    object5 = object.readInt() != 0 ? mf.CREATOR.cx((Parcel)object) : null;
                    object3 = object.readInt() != 0 ? mx.CREATOR.cF((Parcel)object) : null;
                    this.a((String)object4, (LatLngBounds)var8_70, (mf)object5, (mx)object3, mv.a.aM(object.readStrongBinder()));
                    object2.writeNoException();
                    return true;
                }
                case 46: {
                    void var8_73;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        mr mr = mr.CREATOR.createFromParcel((Parcel)object);
                    } else {
                        Object var8_74 = null;
                    }
                    object5 = var12_13;
                    if (object.readInt() != 0) {
                        object5 = mx.CREATOR.cF((Parcel)object);
                    }
                    this.a((mr)var8_73, (mx)object5, mv.a.aM(object.readStrongBinder()));
                    object2.writeNoException();
                    return true;
                }
                case 21: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object = this.bW(object.readString());
                    object2.writeNoException();
                    if (object != null) {
                        object2.writeInt(1);
                        object.writeToParcel((Parcel)object2, 1);
                        return true;
                    }
                    object2.writeInt(0);
                    return true;
                }
                case 25: {
                    void var8_76;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object2 = object.readInt() != 0 ? ml.CREATOR.cA((Parcel)object) : null;
                    if (object.readInt() != 0) {
                        mx mx = mx.CREATOR.cF((Parcel)object);
                    }
                    this.a((ml)object2, (mx)var8_76);
                    return true;
                }
                case 26: {
                    void var8_78;
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object.readInt() != 0) {
                        Location location = Location.CREATOR.createFromParcel((Parcel)object);
                    } else {
                        Object var8_79 = null;
                    }
                    this.a((Location)var8_78, object.readInt());
                    object2.writeNoException();
                    return true;
                }
                case 34: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object = this.bX(object.readString());
                    object2.writeNoException();
                    if (object != null) {
                        object2.writeInt(1);
                        object.writeToParcel((Parcel)object2, 1);
                        return true;
                    }
                    object2.writeInt(0);
                    return true;
                }
                case 51: {
                    object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object = this.lW();
                    object2.writeNoException();
                    object2.writeStrongBinder((IBinder)object);
                    return true;
                }
                case 54: 
            }
            object.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            object = this.lX();
            object2.writeNoException();
            object2.writeStrongBinder((IBinder)object);
            return true;
        }

        private static class a
        implements lx {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(long l, boolean bl, PendingIntent pendingIntent) throws RemoteException {
                int n = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    parcel.writeLong(l);
                    if (!bl) {
                        n = 0;
                    }
                    parcel.writeInt(n);
                    if (pendingIntent != null) {
                        parcel.writeInt(1);
                        pendingIntent.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var4_4) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var4_4;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(PendingIntent pendingIntent) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (pendingIntent != null) {
                        parcel.writeInt(1);
                        pendingIntent.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(11, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(PendingIntent object, lw lw, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = lw != null ? lw.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(2, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(Location location, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (location != null) {
                        parcel.writeInt(1);
                        location.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeInt(n);
                    this.lb.transact(26, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(lw object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(4, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ma ma, PendingIntent pendingIntent) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (ma != null) {
                        parcel.writeInt(1);
                        ma.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        parcel.writeInt(1);
                        pendingIntent.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(53, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ma object, com.google.android.gms.location.a a) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = a != null ? a.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(52, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(mh mh, mx mx, PendingIntent pendingIntent) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (mh != null) {
                        parcel.writeInt(1);
                        mh.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (mx != null) {
                        parcel.writeInt(1);
                        mx.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        parcel.writeInt(1);
                        pendingIntent.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(48, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(mj object, mx mx, mv mv) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (mx != null) {
                        parcel.writeInt(1);
                        mx.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = mv != null ? mv.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(17, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(ml ml, mx mx) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (ml != null) {
                        parcel.writeInt(1);
                        ml.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (mx != null) {
                        parcel.writeInt(1);
                        mx.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(25, parcel, null, 1);
                    return;
                }
                finally {
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(mn mn, mx mx, PendingIntent pendingIntent) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (mn != null) {
                        parcel.writeInt(1);
                        mn.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (mx != null) {
                        parcel.writeInt(1);
                        mx.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        parcel.writeInt(1);
                        pendingIntent.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(18, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(mr object, mx mx, mv mv) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (mx != null) {
                        parcel.writeInt(1);
                        mx.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = mv != null ? mv.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(46, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(mt object, LatLngBounds latLngBounds, List<String> list, mx mx, mv mv) throws RemoteException {
                Parcel parcel;
                Parcel parcel2;
                block9 : {
                    block8 : {
                        parcel2 = Parcel.obtain();
                        parcel = Parcel.obtain();
                        try {
                            parcel2.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            if (object != null) {
                                parcel2.writeInt(1);
                                object.writeToParcel(parcel2, 0);
                            } else {
                                parcel2.writeInt(0);
                            }
                            if (latLngBounds != null) {
                                parcel2.writeInt(1);
                                latLngBounds.writeToParcel(parcel2, 0);
                            } else {
                                parcel2.writeInt(0);
                            }
                            parcel2.writeStringList(list);
                            if (mx == null) break block8;
                            parcel2.writeInt(1);
                            mx.writeToParcel(parcel2, 0);
                            break block9;
                        }
                        catch (Throwable var1_2) {
                            parcel.recycle();
                            parcel2.recycle();
                            throw var1_2;
                        }
                    }
                    parcel2.writeInt(0);
                }
                object = mv != null ? mv.asBinder() : null;
                parcel2.writeStrongBinder((IBinder)object);
                this.lb.transact(50, parcel2, parcel, 0);
                parcel.readException();
                parcel.recycle();
                parcel2.recycle();
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(mx mx, PendingIntent pendingIntent) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (mx != null) {
                        parcel.writeInt(1);
                        mx.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        parcel.writeInt(1);
                        pendingIntent.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(19, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(LocationRequest locationRequest, PendingIntent pendingIntent) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (locationRequest != null) {
                        parcel.writeInt(1);
                        locationRequest.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        parcel.writeInt(1);
                        pendingIntent.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(9, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(LocationRequest object, com.google.android.gms.location.a a) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = a != null ? a.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(8, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(LocationRequest object, com.google.android.gms.location.a a, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = a != null ? a.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(20, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(com.google.android.gms.location.a object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(10, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(LatLng object, mj mj, mx mx, mv mv) throws RemoteException {
                Parcel parcel;
                Parcel parcel2;
                block9 : {
                    block8 : {
                        parcel2 = Parcel.obtain();
                        parcel = Parcel.obtain();
                        try {
                            parcel2.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            if (object != null) {
                                parcel2.writeInt(1);
                                object.writeToParcel(parcel2, 0);
                            } else {
                                parcel2.writeInt(0);
                            }
                            if (mj != null) {
                                parcel2.writeInt(1);
                                mj.writeToParcel(parcel2, 0);
                            } else {
                                parcel2.writeInt(0);
                            }
                            if (mx == null) break block8;
                            parcel2.writeInt(1);
                            mx.writeToParcel(parcel2, 0);
                            break block9;
                        }
                        catch (Throwable var1_2) {
                            parcel.recycle();
                            parcel2.recycle();
                            throw var1_2;
                        }
                    }
                    parcel2.writeInt(0);
                }
                object = mv != null ? mv.asBinder() : null;
                parcel2.writeStrongBinder((IBinder)object);
                this.lb.transact(16, parcel2, parcel, 0);
                parcel.readException();
                parcel.recycle();
                parcel2.recycle();
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(LatLngBounds object, int n, mj mj, mx mx, mv mv) throws RemoteException {
                Parcel parcel;
                Parcel parcel2;
                block9 : {
                    block8 : {
                        parcel2 = Parcel.obtain();
                        parcel = Parcel.obtain();
                        try {
                            parcel2.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            if (object != null) {
                                parcel2.writeInt(1);
                                object.writeToParcel(parcel2, 0);
                            } else {
                                parcel2.writeInt(0);
                            }
                            parcel2.writeInt(n);
                            if (mj != null) {
                                parcel2.writeInt(1);
                                mj.writeToParcel(parcel2, 0);
                            } else {
                                parcel2.writeInt(0);
                            }
                            if (mx == null) break block8;
                            parcel2.writeInt(1);
                            mx.writeToParcel(parcel2, 0);
                            break block9;
                        }
                        catch (Throwable var1_2) {
                            parcel.recycle();
                            parcel2.recycle();
                            throw var1_2;
                        }
                    }
                    parcel2.writeInt(0);
                }
                object = mv != null ? mv.asBinder() : null;
                parcel2.writeStrongBinder((IBinder)object);
                this.lb.transact(14, parcel2, parcel, 0);
                parcel.readException();
                parcel.recycle();
                parcel2.recycle();
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(LatLngBounds object, int n, String string, mj mj, mx mx, mv mv) throws RemoteException {
                Parcel parcel;
                Parcel parcel2;
                block9 : {
                    block8 : {
                        parcel2 = Parcel.obtain();
                        parcel = Parcel.obtain();
                        try {
                            parcel2.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            if (object != null) {
                                parcel2.writeInt(1);
                                object.writeToParcel(parcel2, 0);
                            } else {
                                parcel2.writeInt(0);
                            }
                            parcel2.writeInt(n);
                            parcel2.writeString(string);
                            if (mj != null) {
                                parcel2.writeInt(1);
                                mj.writeToParcel(parcel2, 0);
                            } else {
                                parcel2.writeInt(0);
                            }
                            if (mx == null) break block8;
                            parcel2.writeInt(1);
                            mx.writeToParcel(parcel2, 0);
                            break block9;
                        }
                        catch (Throwable var1_2) {
                            parcel.recycle();
                            parcel2.recycle();
                            throw var1_2;
                        }
                    }
                    parcel2.writeInt(0);
                }
                object = mv != null ? mv.asBinder() : null;
                parcel2.writeStrongBinder((IBinder)object);
                this.lb.transact(47, parcel2, parcel, 0);
                parcel.readException();
                parcel.recycle();
                parcel2.recycle();
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(String object, mx mx, mv mv) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    parcel.writeString((String)object);
                    if (mx != null) {
                        parcel.writeInt(1);
                        mx.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = mv != null ? mv.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(15, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(String object, LatLngBounds latLngBounds, mf mf, mx mx, mv mv) throws RemoteException {
                Parcel parcel;
                Parcel parcel2;
                block9 : {
                    block8 : {
                        parcel2 = Parcel.obtain();
                        parcel = Parcel.obtain();
                        try {
                            parcel2.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                            parcel2.writeString((String)object);
                            if (latLngBounds != null) {
                                parcel2.writeInt(1);
                                latLngBounds.writeToParcel(parcel2, 0);
                            } else {
                                parcel2.writeInt(0);
                            }
                            if (mf != null) {
                                parcel2.writeInt(1);
                                mf.writeToParcel(parcel2, 0);
                            } else {
                                parcel2.writeInt(0);
                            }
                            if (mx == null) break block8;
                            parcel2.writeInt(1);
                            mx.writeToParcel(parcel2, 0);
                            break block9;
                        }
                        catch (Throwable var1_2) {
                            parcel.recycle();
                            parcel2.recycle();
                            throw var1_2;
                        }
                    }
                    parcel2.writeInt(0);
                }
                object = mv != null ? mv.asBinder() : null;
                parcel2.writeStrongBinder((IBinder)object);
                this.lb.transact(55, parcel2, parcel, 0);
                parcel.readException();
                parcel.recycle();
                parcel2.recycle();
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(List<mc> object, PendingIntent pendingIntent, lw lw, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    parcel.writeTypedList(object);
                    if (pendingIntent != null) {
                        parcel.writeInt(1);
                        pendingIntent.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = lw != null ? lw.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(String[] object, lw lw, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    parcel.writeStringArray((String[])object);
                    object = lw != null ? lw.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
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
            public void b(mx mx, PendingIntent pendingIntent) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (mx != null) {
                        parcel.writeInt(1);
                        mx.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        parcel.writeInt(1);
                        pendingIntent.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(49, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void b(String object, mx mx, mv mv) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    parcel.writeString((String)object);
                    if (mx != null) {
                        parcel.writeInt(1);
                        mx.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = mv != null ? mv.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(42, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public Location bW(String object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    parcel.writeString((String)object);
                    this.lb.transact(21, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readInt() != 0 ? Location.CREATOR.createFromParcel(parcel2) : null;
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public c bX(String object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    parcel.writeString((String)object);
                    this.lb.transact(34, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readInt() != 0 ? c.CREATOR.ct(parcel2) : null;
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public Location lV() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    this.lb.transact(7, parcel, parcel2, 0);
                    parcel2.readException();
                    Location location = parcel2.readInt() != 0 ? Location.CREATOR.createFromParcel(parcel2) : null;
                    return location;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public IBinder lW() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    this.lb.transact(51, parcel, parcel2, 0);
                    parcel2.readException();
                    IBinder iBinder = parcel2.readStrongBinder();
                    return iBinder;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public IBinder lX() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    this.lb.transact(54, parcel, parcel2, 0);
                    parcel2.readException();
                    IBinder iBinder = parcel2.readStrongBinder();
                    return iBinder;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void removeActivityUpdates(PendingIntent pendingIntent) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (pendingIntent != null) {
                        parcel.writeInt(1);
                        pendingIntent.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(6, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void setMockLocation(Location location) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (location != null) {
                        parcel.writeInt(1);
                        location.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(13, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void setMockMode(boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(12, parcel2, parcel, 0);
                    parcel.readException();
                    return;
                }
                finally {
                    parcel.recycle();
                    parcel2.recycle();
                }
            }
        }

    }

}

