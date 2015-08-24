/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.SystemClock;
import com.google.android.gms.internal.ip;
import com.google.android.gms.internal.is;
import org.json.JSONObject;

public final class it {
    private static final ip Gr = new ip("RequestTracker");
    public static final Object Hz = new Object();
    private long Hv;
    private long Hw;
    private long Hx;
    private is Hy;

    public it(long l) {
        this.Hv = l;
        this.Hw = -1;
        this.Hx = 0;
    }

    private void fU() {
        this.Hw = -1;
        this.Hy = null;
        this.Hx = 0;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void a(long l, is is) {
        Object object = Hz;
        // MONITORENTER : object
        is is2 = this.Hy;
        long l2 = this.Hw;
        this.Hw = l;
        this.Hy = is;
        this.Hx = SystemClock.elapsedRealtime();
        // MONITOREXIT : object
        if (is2 == null) return;
        is2.n(l2);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public boolean b(long l, int n, JSONObject jSONObject) {
        boolean bl = true;
        is is = null;
        Object object = Hz;
        // MONITORENTER : object
        if (this.Hw != -1 && this.Hw == l) {
            Gr.b("request %d completed", this.Hw);
            is = this.Hy;
            this.fU();
        } else {
            bl = false;
        }
        // MONITOREXIT : object
        if (is == null) return bl;
        is.a(l, n, jSONObject);
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void clear() {
        Object object = Hz;
        synchronized (object) {
            if (this.Hw != -1) {
                this.fU();
            }
            return;
        }
    }

    public boolean d(long l, int n) {
        return this.b(l, n, null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public boolean e(long l, int n) {
        is is;
        boolean bl = true;
        long l2 = 0;
        Object object = Hz;
        // MONITORENTER : object
        if (this.Hw != -1 && l - this.Hx >= this.Hv) {
            Gr.b("request %d timed out", this.Hw);
            l = this.Hw;
            is = this.Hy;
            this.fU();
        } else {
            bl = false;
            is = null;
            l = l2;
        }
        // MONITOREXIT : object
        if (is == null) return bl;
        is.a(l, n, null);
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean fV() {
        Object object = Hz;
        synchronized (object) {
            if (this.Hw == -1) return false;
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean p(long l) {
        Object object = Hz;
        synchronized (object) {
            if (this.Hw == -1) return false;
            if (this.Hw != l) return false;
            return true;
        }
    }
}

