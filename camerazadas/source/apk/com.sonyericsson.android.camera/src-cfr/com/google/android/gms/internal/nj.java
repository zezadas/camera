/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ni;
import com.google.android.gms.internal.nm;
import com.google.android.gms.internal.pr;
import java.util.ArrayList;

public class nj {
    private final ArrayList<a> akK = new ArrayList();
    private int akL;

    public nj() {
        this(100);
    }

    public nj(int n) {
        this.akL = n;
    }

    private void mX() {
        while (this.getSize() > this.getCapacity()) {
            this.akK.remove(0);
        }
    }

    public void a(nm nm, ni ni) {
        this.akK.add(new a(nm, ni));
        this.mX();
    }

    public void clear() {
        this.akK.clear();
    }

    public int getCapacity() {
        return this.akL;
    }

    public int getSize() {
        return this.akK.size();
    }

    public boolean isEmpty() {
        return this.akK.isEmpty();
    }

    public ArrayList<a> mW() {
        return this.akK;
    }

    public static class a {
        public final nm akM;
        public final ni akN;
        public final pr.c akO;

        private a(nm nm, ni ni) {
            this.akM = o.i(nm);
            this.akN = o.i(ni);
            this.akO = null;
        }
    }

}

