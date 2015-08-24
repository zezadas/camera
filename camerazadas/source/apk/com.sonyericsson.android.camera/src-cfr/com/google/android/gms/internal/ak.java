/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ap;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import java.util.ArrayList;
import java.util.Iterator;

@ez
public class ak {
    private final Object mw = new Object();
    private final int nf;
    private final int ng;
    private final int nh;
    private final ap ni;
    private ArrayList<String> nj = new ArrayList();
    private int nk = 0;
    private int nl = 0;
    private int nm = 0;
    private int nn;
    private String no = "";

    public ak(int n, int n2, int n3, int n4) {
        this.nf = n;
        this.ng = n2;
        this.nh = n3;
        this.ni = new ap(n4);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private String a(ArrayList<String> object, int n) {
        if (object.isEmpty()) {
            return "";
        }
        Object object2 = new StringBuffer();
        object = object.iterator();
        while (object.hasNext()) {
            object2.append((String)object.next());
            object2.append(' ');
            if (object2.length() <= n) continue;
        }
        object2.deleteCharAt(object2.length() - 1);
        object = object2 = object2.toString();
        if (object2.length() < n) return object;
        return object2.substring(0, n);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void j(String string) {
        if (string != null && string.length() >= this.nh) {
            Object object = this.mw;
            synchronized (object) {
                this.nj.add(string);
                this.nk+=string.length();
                return;
            }
        }
    }

    int a(int n, int n2) {
        return this.nf * n + this.ng * n2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean aN() {
        Object object = this.mw;
        synchronized (object) {
            if (this.nm != 0) return false;
            return true;
        }
    }

    public String aO() {
        return this.no;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void aP() {
        Object object = this.mw;
        synchronized (object) {
            this.nn-=100;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void aQ() {
        Object object = this.mw;
        synchronized (object) {
            --this.nm;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void aR() {
        Object object = this.mw;
        synchronized (object) {
            ++this.nm;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void aS() {
        Object object = this.mw;
        synchronized (object) {
            int n = this.a(this.nk, this.nl);
            if (n > this.nn) {
                this.nn = n;
                this.no = this.ni.a(this.nj);
            }
            return;
        }
    }

    int aT() {
        return this.nk;
    }

    public void c(int n) {
        this.nl = n;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (!(object instanceof ak)) {
            return false;
        }
        if (object == this) {
            return true;
        }
        if ((object = (ak)object).aO() == null) return false;
        if (!object.aO().equals(this.aO())) return false;
        return true;
    }

    public int getScore() {
        return this.nn;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void h(String object) {
        this.j((String)object);
        object = this.mw;
        synchronized (object) {
            if (this.nm < 0) {
                gs.S("ActivityContent: negative number of WebViews.");
            }
            this.aS();
            return;
        }
    }

    public int hashCode() {
        return this.aO().hashCode();
    }

    public void i(String string) {
        this.j(string);
    }

    public String toString() {
        return "ActivityContent fetchId: " + this.nl + " score:" + this.nn + " total_length:" + this.nk + "\n text: " + this.a(this.nj, 200) + "\n signture: " + this.no;
    }
}

