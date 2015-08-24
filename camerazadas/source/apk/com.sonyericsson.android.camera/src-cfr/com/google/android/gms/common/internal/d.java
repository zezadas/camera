/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public abstract class d
implements SafeParcelable {
    private static final Object Lv = new Object();
    private static ClassLoader Lw = null;
    private static Integer Lx = null;
    private boolean Ly = false;

    private static boolean a(Class<?> class_) {
        try {
            boolean bl = "SAFE_PARCELABLE_NULL_STRING".equals(class_.getField("NULL").get(null));
            return bl;
        }
        catch (IllegalAccessException var0_1) {
            return false;
        }
        catch (NoSuchFieldException var0_2) {
            return false;
        }
    }

    protected static boolean aV(String string) {
        ClassLoader classLoader = d.gO();
        if (classLoader == null) {
            return true;
        }
        try {
            boolean bl = d.a(classLoader.loadClass(string));
            return bl;
        }
        catch (Exception var0_1) {
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected static ClassLoader gO() {
        Object object = Lv;
        synchronized (object) {
            return Lw;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected static Integer gP() {
        Object object = Lv;
        synchronized (object) {
            return Lx;
        }
    }

    protected boolean gQ() {
        return this.Ly;
    }
}

