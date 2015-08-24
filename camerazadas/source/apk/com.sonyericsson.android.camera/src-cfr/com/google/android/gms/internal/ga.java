/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

@ez
public class ga {
    private final Object mw = new Object();
    private boolean uC = false;
    private final String vA;
    private long vB = -1;
    private long vC = -1;
    private long vD = -1;
    private long vE = 0;
    private long vF = -1;
    private long vG = -1;
    private final gb vx;
    private final LinkedList<a> vy;
    private final String vz;

    public ga(gb gb, String string, String string2) {
        this.vx = gb;
        this.vz = string;
        this.vA = string2;
        this.vy = new LinkedList();
    }

    public ga(String string, String string2) {
        this(gb.cU(), string, string2);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void cO() {
        Object object = this.mw;
        synchronized (object) {
            if (this.vG != -1 && this.vC == -1) {
                this.vC = SystemClock.elapsedRealtime();
                this.vx.a(this);
            }
            gb gb = this.vx;
            gb.cY().cO();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void cP() {
        Object object = this.mw;
        synchronized (object) {
            if (this.vG != -1) {
                Object object2 = new a();
                object2.cT();
                this.vy.add((a)object2);
                ++this.vE;
                object2 = this.vx;
                gb.cY().cP();
                this.vx.a(this);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void cQ() {
        Object object = this.mw;
        synchronized (object) {
            a a;
            if (!(this.vG == -1 || this.vy.isEmpty() || (a = this.vy.getLast()).cR() != -1)) {
                a.cS();
                this.vx.a(this);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void e(av av) {
        Object object = this.mw;
        synchronized (object) {
            this.vF = SystemClock.elapsedRealtime();
            gb gb = this.vx;
            gb.cY().b(av, this.vF);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void j(long l) {
        Object object = this.mw;
        synchronized (object) {
            this.vG = l;
            if (this.vG != -1) {
                this.vx.a(this);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void k(long l) {
        Object object = this.mw;
        synchronized (object) {
            if (this.vG != -1) {
                this.vB = l;
                this.vx.a(this);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void t(boolean bl) {
        Object object = this.mw;
        synchronized (object) {
            if (this.vG != -1) {
                this.vD = SystemClock.elapsedRealtime();
                if (!bl) {
                    this.vC = this.vD;
                    this.vx.a(this);
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public Bundle toBundle() {
        Object object = this.mw;
        synchronized (object) {
            Bundle bundle = new Bundle();
            bundle.putString("seq_num", this.vz);
            bundle.putString("slotid", this.vA);
            bundle.putBoolean("ismediation", this.uC);
            bundle.putLong("treq", this.vF);
            bundle.putLong("tresponse", this.vG);
            bundle.putLong("timp", this.vC);
            bundle.putLong("tload", this.vD);
            bundle.putLong("pcc", this.vE);
            bundle.putLong("tfetch", this.vB);
            ArrayList<Bundle> arrayList = new ArrayList<Bundle>();
            Iterator<a> iterator = this.vy.iterator();
            do {
                if (!iterator.hasNext()) {
                    bundle.putParcelableArrayList("tclick", arrayList);
                    return bundle;
                }
                arrayList.add(iterator.next().toBundle());
            } while (true);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void u(boolean bl) {
        Object object = this.mw;
        synchronized (object) {
            if (this.vG != -1) {
                this.uC = bl;
                this.vx.a(this);
            }
            return;
        }
    }

    @ez
    private static final class a {
        private long vH = -1;
        private long vI = -1;

        public long cR() {
            return this.vI;
        }

        public void cS() {
            this.vI = SystemClock.elapsedRealtime();
        }

        public void cT() {
            this.vH = SystemClock.elapsedRealtime();
        }

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong("topen", this.vH);
            bundle.putLong("tclose", this.vI);
            return bundle;
        }
    }

}

