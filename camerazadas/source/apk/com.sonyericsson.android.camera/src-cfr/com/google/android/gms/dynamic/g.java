/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.o;

public abstract class g<T> {
    private final String Sl;
    private T Sm;

    protected g(String string) {
        this.Sl = string;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected final T L(Context object) throws a {
        if (this.Sm != null) return this.Sm;
        o.i(object);
        object = GooglePlayServicesUtil.getRemoteContext((Context)object);
        if (object == null) {
            throw new a("Could not get remote context.");
        }
        object = object.getClassLoader();
        try {
            this.Sm = this.d((IBinder)object.loadClass(this.Sl).newInstance());
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new a("Could not load creator class.", classNotFoundException);
        }
        catch (InstantiationException instantiationException) {
            throw new a("Could not instantiate creator.", instantiationException);
        }
        catch (IllegalAccessException illegalAccessException) {
            throw new a("Could not access creator.", illegalAccessException);
        }
        return this.Sm;
    }

    protected abstract T d(IBinder var1);

    public static class a
    extends Exception {
        public a(String string) {
            super(string);
        }

        public a(String string, Throwable throwable) {
            super(string, throwable);
        }
    }

}

