/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.dynamic;

import android.os.IBinder;
import com.google.android.gms.dynamic.d;

public final class e<T>
extends d.a {
    private final T Sk;

    private e(T t) {
        this.Sk = t;
    }

    public static <T> T f(d object) {
        if (object instanceof e) {
            return ((e)object).Sk;
        }
        Field[] arrfield = (object = object.asBinder()).getClass().getDeclaredFields();
        if (arrfield.length == 1) {
            if (!(arrfield = arrfield[0]).isAccessible()) {
                arrfield.setAccessible(true);
                try {
                    object = arrfield.get(object);
                }
                catch (NullPointerException var0_1) {
                    throw new IllegalArgumentException("Binder object is null.", var0_1);
                }
                catch (IllegalArgumentException var0_2) {
                    throw new IllegalArgumentException("remoteBinder is the wrong class.", var0_2);
                }
                catch (IllegalAccessException var0_3) {
                    throw new IllegalArgumentException("Could not access the field in remoteBinder.", var0_3);
                }
                return (T)object;
            }
            throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
        }
        throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
    }

    public static <T> d k(T t) {
        return new e<T>(t);
    }
}

