/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.internal.a;

public final class BitmapDescriptorFactory {
    public static final float HUE_AZURE = 210.0f;
    public static final float HUE_BLUE = 240.0f;
    public static final float HUE_CYAN = 180.0f;
    public static final float HUE_GREEN = 120.0f;
    public static final float HUE_MAGENTA = 300.0f;
    public static final float HUE_ORANGE = 30.0f;
    public static final float HUE_RED = 0.0f;
    public static final float HUE_ROSE = 330.0f;
    public static final float HUE_VIOLET = 270.0f;
    public static final float HUE_YELLOW = 60.0f;
    private static a ajA;

    private BitmapDescriptorFactory() {
    }

    public static void a(a a) {
        if (ajA != null) {
            return;
        }
        ajA = o.i(a);
    }

    public static BitmapDescriptor defaultMarker() {
        try {
            BitmapDescriptor bitmapDescriptor = new BitmapDescriptor(BitmapDescriptorFactory.mN().mS());
            return bitmapDescriptor;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static BitmapDescriptor defaultMarker(float f) {
        try {
            BitmapDescriptor bitmapDescriptor = new BitmapDescriptor(BitmapDescriptorFactory.mN().c(f));
            return bitmapDescriptor;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public static BitmapDescriptor fromAsset(String object) {
        try {
            object = new BitmapDescriptor(BitmapDescriptorFactory.mN().ca((String)object));
            return object;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static BitmapDescriptor fromBitmap(Bitmap object) {
        try {
            object = new BitmapDescriptor(BitmapDescriptorFactory.mN().b((Bitmap)object));
            return object;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static BitmapDescriptor fromFile(String object) {
        try {
            object = new BitmapDescriptor(BitmapDescriptorFactory.mN().cb((String)object));
            return object;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static BitmapDescriptor fromPath(String object) {
        try {
            object = new BitmapDescriptor(BitmapDescriptorFactory.mN().cc((String)object));
            return object;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static BitmapDescriptor fromResource(int n) {
        try {
            BitmapDescriptor bitmapDescriptor = new BitmapDescriptor(BitmapDescriptorFactory.mN().eN(n));
            return bitmapDescriptor;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    private static a mN() {
        return o.b(ajA, (Object)"IBitmapDescriptorFactory is not initialized");
    }
}

