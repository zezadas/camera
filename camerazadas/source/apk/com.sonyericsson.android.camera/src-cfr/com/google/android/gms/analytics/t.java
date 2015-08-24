/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import java.util.SortedSet;
import java.util.TreeSet;

class t {
    private static final t ze = new t();
    private SortedSet<a> zb = new TreeSet<a>();
    private StringBuilder zc = new StringBuilder();
    private boolean zd = false;

    private t() {
    }

    public static t ep() {
        return ze;
    }

    public void B(boolean bl) {
        synchronized (this) {
            this.zd = bl;
            return;
        }
    }

    public void a(a a) {
        synchronized (this) {
            if (!this.zd) {
                this.zb.add(a);
                this.zc.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(a.ordinal()));
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public String eq() {
        synchronized (this) {
            Object object = new StringBuilder();
            int n = 6;
            int n2 = 0;
            while (this.zb.size() > 0) {
                a a = this.zb.first();
                this.zb.remove((Object)a);
                int n3 = a.ordinal();
                for (; n3 >= n; n+=6) {
                    object.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(n2));
                    n2 = 0;
                }
                n2+=1 << a.ordinal() % 6;
            }
            if (n2 > 0 || object.length() == 0) {
                object.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(n2));
            }
            this.zb.clear();
            return object.toString();
        }
    }

    public String er() {
        synchronized (this) {
            if (this.zc.length() > 0) {
                this.zc.insert(0, ".");
            }
            String string = this.zc.toString();
            this.zc = new StringBuilder();
            return string;
        }
    }

    public static enum a {
        zf,
        zg,
        zh,
        zi,
        zj,
        zk,
        zl,
        zm,
        zn,
        zo,
        zp,
        zq,
        zr,
        zs,
        zt,
        zu,
        zv,
        zw,
        zx,
        zy,
        zz,
        zA,
        zB,
        zC,
        zD,
        zE,
        zF,
        zG,
        zH,
        zI,
        zJ,
        zK,
        zL,
        zM,
        zN,
        zO,
        zP,
        zQ,
        zR,
        zS,
        zT,
        zU,
        zV,
        zW,
        zX,
        zY,
        zZ,
        Aa,
        Ab,
        Ac,
        Ad,
        Ae,
        Af,
        Ag,
        Ah,
        Ai,
        Aj,
        Ak,
        Al,
        Am,
        An,
        Ao,
        Ap;
        

        private a() {
        }
    }

}

