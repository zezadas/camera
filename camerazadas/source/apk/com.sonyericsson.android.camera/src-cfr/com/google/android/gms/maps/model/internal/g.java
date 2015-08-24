/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.i;
import java.util.ArrayList;
import java.util.List;

public interface g
extends IInterface {
    public boolean a(g var1) throws RemoteException;

    public int getFillColor() throws RemoteException;

    public List getHoles() throws RemoteException;

    public String getId() throws RemoteException;

    public List<LatLng> getPoints() throws RemoteException;

    public int getStrokeColor() throws RemoteException;

    public float getStrokeWidth() throws RemoteException;

    public float getZIndex() throws RemoteException;

    public int hashCodeRemote() throws RemoteException;

    public boolean isGeodesic() throws RemoteException;

    public boolean isVisible() throws RemoteException;

    public void remove() throws RemoteException;

    public void setFillColor(int var1) throws RemoteException;

    public void setGeodesic(boolean var1) throws RemoteException;

    public void setHoles(List var1) throws RemoteException;

    public void setPoints(List<LatLng> var1) throws RemoteException;

    public void setStrokeColor(int var1) throws RemoteException;

    public void setStrokeWidth(float var1) throws RemoteException;

    public void setVisible(boolean var1) throws RemoteException;

    public void setZIndex(float var1) throws RemoteException;

    public static abstract class com.google.android.gms.maps.model.internal.g$a
    extends Binder
    implements g {
        public static g bv(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
            if (iInterface != null && iInterface instanceof g) {
                return (g)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public boolean onTransact(int n, Parcel list, Parcel parcel, int n2) throws RemoteException {
            int n3 = 0;
            boolean bl = false;
            int n4 = 0;
            int n5 = 0;
            boolean bl2 = false;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)list, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    return true;
                }
                case 1: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.remove();
                    parcel.writeNoException();
                    return true;
                }
                case 2: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    list = this.getId();
                    parcel.writeNoException();
                    parcel.writeString((String)list);
                    return true;
                }
                case 3: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.setPoints(list.createTypedArrayList(LatLng.CREATOR));
                    parcel.writeNoException();
                    return true;
                }
                case 4: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    list = this.getPoints();
                    parcel.writeNoException();
                    parcel.writeTypedList(list);
                    return true;
                }
                case 5: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.setHoles(list.readArrayList(this.getClass().getClassLoader()));
                    parcel.writeNoException();
                    return true;
                }
                case 6: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    list = this.getHoles();
                    parcel.writeNoException();
                    parcel.writeList(list);
                    return true;
                }
                case 7: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.setStrokeWidth(list.readFloat());
                    parcel.writeNoException();
                    return true;
                }
                case 8: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    float f = this.getStrokeWidth();
                    parcel.writeNoException();
                    parcel.writeFloat(f);
                    return true;
                }
                case 9: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.setStrokeColor(list.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 10: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    n = this.getStrokeColor();
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 11: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.setFillColor(list.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 12: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    n = this.getFillColor();
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 13: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.setZIndex(list.readFloat());
                    parcel.writeNoException();
                    return true;
                }
                case 14: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    float f = this.getZIndex();
                    parcel.writeNoException();
                    parcel.writeFloat(f);
                    return true;
                }
                case 15: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    if (list.readInt() != 0) {
                        bl2 = true;
                    }
                    this.setVisible(bl2);
                    parcel.writeNoException();
                    return true;
                }
                case 16: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    bl2 = this.isVisible();
                    parcel.writeNoException();
                    n = n3;
                    if (bl2) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 17: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    bl2 = bl;
                    if (list.readInt() != 0) {
                        bl2 = true;
                    }
                    this.setGeodesic(bl2);
                    parcel.writeNoException();
                    return true;
                }
                case 18: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    bl2 = this.isGeodesic();
                    parcel.writeNoException();
                    n = n4;
                    if (bl2) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 19: {
                    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    bl2 = this.a(com.google.android.gms.maps.model.internal.g$a.bv(list.readStrongBinder()));
                    parcel.writeNoException();
                    n = n5;
                    if (bl2) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 20: 
            }
            list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
            n = this.hashCodeRemote();
            parcel.writeNoException();
            parcel.writeInt(n);
            return true;
        }

        private static class a
        implements g {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public boolean a(g object) throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(19, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    if (n != 0) {
                        bl = true;
                    }
                    parcel2.recycle();
                    parcel.recycle();
                    return bl;
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

            @Override
            public int getFillColor() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.lb.transact(12, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public List getHoles() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.lb.transact(6, parcel, parcel2, 0);
                    parcel2.readException();
                    ArrayList arrayList = parcel2.readArrayList(this.getClass().getClassLoader());
                    return arrayList;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public String getId() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.lb.transact(2, parcel, parcel2, 0);
                    parcel2.readException();
                    String string = parcel2.readString();
                    return string;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public List<LatLng> getPoints() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.lb.transact(4, parcel, parcel2, 0);
                    parcel2.readException();
                    ArrayList<LatLng> arrayList = parcel2.createTypedArrayList(LatLng.CREATOR);
                    return arrayList;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public int getStrokeColor() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.lb.transact(10, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public float getStrokeWidth() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.lb.transact(8, parcel, parcel2, 0);
                    parcel2.readException();
                    float f = parcel2.readFloat();
                    return f;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public float getZIndex() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.lb.transact(14, parcel, parcel2, 0);
                    parcel2.readException();
                    float f = parcel2.readFloat();
                    return f;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public int hashCodeRemote() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.lb.transact(20, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public boolean isGeodesic() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.lb.transact(18, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    if (n != 0) {
                        bl = true;
                    }
                    parcel2.recycle();
                    parcel.recycle();
                    return bl;
                }
                catch (Throwable var5_5) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var5_5;
                }
            }

            @Override
            public boolean isVisible() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.lb.transact(16, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    if (n != 0) {
                        bl = true;
                    }
                    parcel2.recycle();
                    parcel.recycle();
                    return bl;
                }
                catch (Throwable var5_5) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var5_5;
                }
            }

            @Override
            public void remove() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
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
            public void setFillColor(int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    parcel.writeInt(n);
                    this.lb.transact(11, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void setGeodesic(boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(17, parcel2, parcel, 0);
                    parcel.readException();
                    return;
                }
                finally {
                    parcel.recycle();
                    parcel2.recycle();
                }
            }

            @Override
            public void setHoles(List list) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    parcel.writeList(list);
                    this.lb.transact(5, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void setPoints(List<LatLng> list) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    parcel.writeTypedList(list);
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void setStrokeColor(int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    parcel.writeInt(n);
                    this.lb.transact(9, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void setStrokeWidth(float f) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    parcel.writeFloat(f);
                    this.lb.transact(7, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void setVisible(boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(15, parcel2, parcel, 0);
                    parcel.readException();
                    return;
                }
                finally {
                    parcel.recycle();
                    parcel2.recycle();
                }
            }

            @Override
            public void setZIndex(float f) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    parcel.writeFloat(f);
                    this.lb.transact(13, parcel, parcel2, 0);
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

