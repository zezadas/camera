/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.gi;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.j;
import com.google.android.gms.internal.u;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@ez
class w
implements g,
Runnable {
    private u.b lr;
    private final List<Object[]> me = new Vector<Object[]>();
    private final AtomicReference<g> mf = new AtomicReference();
    CountDownLatch mg = new CountDownLatch(1);

    public w(u.b b) {
        this.lr = b;
        if (gr.ds()) {
            gi.a(this);
            return;
        }
        this.run();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void ax() {
        if (!this.me.isEmpty()) {
            for (Object[] arrobject : this.me) {
                if (arrobject.length == 1) {
                    this.mf.get().a((MotionEvent)arrobject[0]);
                    continue;
                }
                if (arrobject.length != 3) continue;
                this.mf.get().a((Integer)arrobject[0], (Integer)arrobject[1], (Integer)arrobject[2]);
            }
        }
    }

    @Override
    public String a(Context context) {
        this.aw();
        g g = this.mf.get();
        if (g != null) {
            this.ax();
            return g.a(context);
        }
        return "";
    }

    @Override
    public String a(Context context, String string) {
        this.aw();
        g g = this.mf.get();
        if (g != null) {
            this.ax();
            return g.a(context, string);
        }
        return "";
    }

    @Override
    public void a(int n, int n2, int n3) {
        g g = this.mf.get();
        if (g != null) {
            this.ax();
            g.a(n, n2, n3);
            return;
        }
        this.me.add(new Object[]{n, n2, n3});
    }

    @Override
    public void a(MotionEvent motionEvent) {
        g g = this.mf.get();
        if (g != null) {
            this.ax();
            g.a(motionEvent);
            return;
        }
        this.me.add(new Object[]{motionEvent});
    }

    protected void a(g g) {
        this.mf.set(g);
    }

    protected void aw() {
        try {
            this.mg.await();
            return;
        }
        catch (InterruptedException var1_1) {
            gs.d("Interrupted during GADSignals creation.", var1_1);
            return;
        }
    }

    @Override
    public void run() {
        try {
            this.a(j.a(this.lr.lD.wD, this.lr.lB));
            return;
        }
        finally {
            this.mg.countDown();
            this.lr = null;
        }
    }
}

