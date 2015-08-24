/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.internal.a;

public final class MapsInitializer {
    private MapsInitializer() {
    }

    public static void a(c c) {
        try {
            CameraUpdateFactory.a(c.mI());
            BitmapDescriptorFactory.a(c.mJ());
            return;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    public static int initialize(Context object) {
        o.i(object);
        try {
            object = u.S((Context)object);
        }
        catch (GooglePlayServicesNotAvailableException var0_1) {
            return var0_1.errorCode;
        }
        MapsInitializer.a((c)object);
        return 0;
    }
}

