/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class u {
    private static Context ajx;
    private static c ajy;

    public static c S(Context context) throws GooglePlayServicesNotAvailableException {
        o.i(context);
        if (ajy != null) {
            return ajy;
        }
        u.T(context);
        ajy = u.U(context);
        try {
            ajy.a(e.k(u.getRemoteContext(context).getResources()), 6171000);
            return ajy;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeRemoteException(var0_1);
        }
    }

    private static void T(Context context) throws GooglePlayServicesNotAvailableException {
        int n = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        switch (n) {
            default: {
                throw new GooglePlayServicesNotAvailableException(n);
            }
            case 0: 
        }
    }

    private static c U(Context context) {
        if (u.mK()) {
            Log.i(u.class.getSimpleName(), "Making Creator statically");
            return (c)u.c(u.mL());
        }
        Log.i(u.class.getSimpleName(), "Making Creator dynamically");
        return c.a.aP((IBinder)u.a(u.getRemoteContext(context).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl"));
    }

    private static <T> T a(ClassLoader classLoader, String string) {
        try {
            classLoader = u.c(o.i(classLoader).loadClass(string));
        }
        catch (ClassNotFoundException var0_1) {
            throw new IllegalStateException("Unable to find dynamic class " + string);
        }
        return (T)classLoader;
    }

    private static <T> T c(Class<?> class_) {
        Object obj;
        try {
            obj = class_.newInstance();
        }
        catch (InstantiationException var1_2) {
            throw new IllegalStateException("Unable to instantiate the dynamic class " + class_.getName());
        }
        catch (IllegalAccessException var1_3) {
            throw new IllegalStateException("Unable to call the default constructor of " + class_.getName());
        }
        return (T)obj;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Context getRemoteContext(Context context) {
        if (ajx == null) {
            if (u.mK()) {
                ajx = context.getApplicationContext();
            }
        } else {
            do {
                return ajx;
                break;
            } while (true);
        }
        ajx = GooglePlayServicesUtil.getRemoteContext(context);
        return ajx;
    }

    private static boolean mK() {
        return false;
    }

    private static Class<?> mL() {
        try {
            if (Build.VERSION.SDK_INT < 15) {
                return Class.forName("com.google.android.gms.maps.internal.CreatorImplGmm6");
            }
            Class class_ = Class.forName("com.google.android.gms.maps.internal.CreatorImpl");
            return class_;
        }
        catch (ClassNotFoundException var0_1) {
            throw new RuntimeException(var0_1);
        }
    }
}

