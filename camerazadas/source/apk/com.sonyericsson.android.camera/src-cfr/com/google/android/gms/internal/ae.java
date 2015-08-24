/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ag;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

@ez
public final class ae
implements ag {
    private final Object mw = new Object();
    private final WeakHashMap<fz, af> mx = new WeakHashMap();
    private final ArrayList<af> my = new ArrayList();

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public af a(Context object, ay ay, fz fz, View view, gt gt) {
        Object object2 = this.mw;
        synchronized (object2) {
            if (this.c(fz)) {
                return this.mx.get(fz);
            }
            object = new af((Context)object, ay, fz, view, gt);
            object.a(this);
            this.mx.put(fz, (af)object);
            this.my.add((af)object);
            return object;
        }
    }

    public af a(ay ay, fz fz) {
        return this.a(fz.rN.getContext(), ay, fz, fz.rN, fz.rN.dx());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void a(af af) {
        Object object = this.mw;
        synchronized (object) {
            if (!af.aH()) {
                this.my.remove(af);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean c(fz object) {
        Object object2 = this.mw;
        synchronized (object2) {
            object = this.mx.get(object);
            if (object == null) return false;
            if (!object.aH()) return false;
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void d(fz object) {
        Object object2 = this.mw;
        synchronized (object2) {
            object = this.mx.get(object);
            if (object != null) {
                object.aF();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void pause() {
        Object object = this.mw;
        synchronized (object) {
            Iterator<af> iterator = this.my.iterator();
            while (iterator.hasNext()) {
                iterator.next().pause();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void resume() {
        Object object = this.mw;
        synchronized (object) {
            Iterator<af> iterator = this.my.iterator();
            while (iterator.hasNext()) {
                iterator.next().resume();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void stop() {
        Object object = this.mw;
        synchronized (object) {
            Iterator<af> iterator = this.my.iterator();
            while (iterator.hasNext()) {
                iterator.next().stop();
            }
            return;
        }
    }
}

