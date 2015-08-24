/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.CameraUpdate;
import com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public final class CameraUpdateFactory {
    private static ICameraUpdateFactoryDelegate aim;

    private CameraUpdateFactory() {
    }

    static void a(ICameraUpdateFactoryDelegate iCameraUpdateFactoryDelegate) {
        if (aim != null) {
            return;
        }
        aim = o.i(iCameraUpdateFactoryDelegate);
    }

    private static ICameraUpdateFactoryDelegate mp() {
        return o.b(aim, (Object)"CameraUpdateFactory is not initialized");
    }

    public static CameraUpdate newCameraPosition(CameraPosition object) {
        try {
            object = new CameraUpdate(CameraUpdateFactory.mp().newCameraPosition((CameraPosition)object));
            return object;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static CameraUpdate newLatLng(LatLng object) {
        try {
            object = new CameraUpdate(CameraUpdateFactory.mp().newLatLng((LatLng)object));
            return object;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds object, int n) {
        try {
            object = new CameraUpdate(CameraUpdateFactory.mp().newLatLngBounds((LatLngBounds)object, n));
            return object;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds object, int n, int n2, int n3) {
        try {
            object = new CameraUpdate(CameraUpdateFactory.mp().newLatLngBoundsWithSize((LatLngBounds)object, n, n2, n3));
            return object;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static CameraUpdate newLatLngZoom(LatLng object, float f) {
        try {
            object = new CameraUpdate(CameraUpdateFactory.mp().newLatLngZoom((LatLng)object, f));
            return object;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static CameraUpdate scrollBy(float f, float f2) {
        try {
            CameraUpdate cameraUpdate = new CameraUpdate(CameraUpdateFactory.mp().scrollBy(f, f2));
            return cameraUpdate;
        }
        catch (RemoteException var2_3) {
            throw new RuntimeRemoteException(var2_3);
        }
    }

    public static CameraUpdate zoomBy(float f) {
        try {
            CameraUpdate cameraUpdate = new CameraUpdate(CameraUpdateFactory.mp().zoomBy(f));
            return cameraUpdate;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public static CameraUpdate zoomBy(float f, Point object) {
        try {
            object = new CameraUpdate(CameraUpdateFactory.mp().zoomByWithFocus(f, object.x, object.y));
            return object;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public static CameraUpdate zoomIn() {
        try {
            CameraUpdate cameraUpdate = new CameraUpdate(CameraUpdateFactory.mp().zoomIn());
            return cameraUpdate;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static CameraUpdate zoomOut() {
        try {
            CameraUpdate cameraUpdate = new CameraUpdate(CameraUpdateFactory.mp().zoomOut());
            return cameraUpdate;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static CameraUpdate zoomTo(float f) {
        try {
            CameraUpdate cameraUpdate = new CameraUpdate(CameraUpdateFactory.mp().zoomTo(f));
            return cameraUpdate;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }
}

