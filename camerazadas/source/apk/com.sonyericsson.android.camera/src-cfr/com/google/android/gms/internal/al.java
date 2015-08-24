/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@ez
public class al {
    private final Object mw = new Object();
    private int np;
    private List<ak> nq = new LinkedList<ak>();

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean a(ak ak) {
        Object object = this.mw;
        synchronized (object) {
            if (this.nq.contains(ak)) {
                return true;
            }
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public ak aU() {
        ak ak = null;
        Object object = this.mw;
        synchronized (object) {
            if (this.nq.size() == 0) {
                gs.S("Queue empty");
                return null;
            }
            if (this.nq.size() < 2) {
                ak = this.nq.get(0);
                ak.aP();
                return ak;
            }
            int n = Integer.MIN_VALUE;
            Iterator<ak> iterator = this.nq.iterator();
            do {
                if (!iterator.hasNext()) {
                    this.nq.remove(ak);
                    return ak;
                }
                ak ak2 = iterator.next();
                int n2 = ak2.getScore();
                if (n2 <= n) continue;
                ak = ak2;
                n = n2;
            } while (true);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean b(ak ak) {
        Object object = this.mw;
        synchronized (object) {
            ak ak2;
            Iterator<ak> iterator = this.nq.iterator();
            do {
                if (iterator.hasNext()) continue;
                return false;
            } while (ak == (ak2 = iterator.next()) || !ak2.aO().equals(ak.aO()));
            this.nq.remove(ak);
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void c(ak ak) {
        Object object = this.mw;
        synchronized (object) {
            if (this.nq.size() >= 10) {
                gs.S("Queue is full, current size = " + this.nq.size());
                this.nq.remove(0);
            }
            int n = this.np;
            this.np = n + 1;
            ak.c(n);
            this.nq.add(ak);
            return;
        }
    }
}

