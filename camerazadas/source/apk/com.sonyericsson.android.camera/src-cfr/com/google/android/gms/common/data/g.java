/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;

public abstract class g<T>
extends DataBuffer<T> {
    private boolean Kp = false;
    private ArrayList<Integer> Kq;

    protected g(DataHolder dataHolder) {
        super(dataHolder);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void gE() {
        synchronized (this) {
            if (!this.Kp) {
                int n = this.II.getCount();
                this.Kq = new ArrayList();
                if (n > 0) {
                    this.Kq.add(0);
                    String string = this.gD();
                    int n2 = this.II.ar(0);
                    String string2 = this.II.c(string, 0, n2);
                    for (n2 = 1; n2 < n; ++n2) {
                        int n3 = this.II.ar(n2);
                        String string3 = this.II.c(string, n2, n3);
                        if (string3.equals(string2)) continue;
                        this.Kq.add(n2);
                        string2 = string3;
                    }
                }
                this.Kp = true;
            }
            return;
        }
    }

    int au(int n) {
        if (n < 0 || n >= this.Kq.size()) {
            throw new IllegalArgumentException("Position " + n + " is out of bounds for this buffer");
        }
        return this.Kq.get(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected int av(int n) {
        if (n < 0) return 0;
        if (n == this.Kq.size()) {
            return 0;
        }
        int n2 = n == this.Kq.size() - 1 ? this.II.getCount() - this.Kq.get(n) : this.Kq.get(n + 1) - this.Kq.get(n);
        int n3 = n2;
        if (n2 != 1) return n3;
        n = this.au(n);
        int n4 = this.II.ar(n);
        String string = this.gF();
        n3 = n2;
        if (string == null) return n3;
        n3 = n2;
        if (this.II.c(string, n, n4) != null) return n3;
        return 0;
    }

    protected abstract T f(int var1, int var2);

    protected abstract String gD();

    protected String gF() {
        return null;
    }

    @Override
    public final T get(int n) {
        this.gE();
        return this.f(this.au(n), this.av(n));
    }

    @Override
    public int getCount() {
        this.gE();
        return this.Kq.size();
    }
}

