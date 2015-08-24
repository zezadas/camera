/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pk;

class pj {
    private static final pk awM = new pk();
    private boolean awN = false;
    private int[] awO;
    private pk[] awP;
    private int mSize;

    public pj() {
        this(10);
    }

    public pj(int n) {
        n = this.idealIntArraySize(n);
        this.awO = new int[n];
        this.awP = new pk[n];
        this.mSize = 0;
    }

    private boolean a(int[] arrn, int[] arrn2, int n) {
        for (int i = 0; i < n; ++i) {
            if (arrn[i] == arrn2[i]) continue;
            return false;
        }
        return true;
    }

    private boolean a(pk[] arrpk, pk[] arrpk2, int n) {
        for (int i = 0; i < n; ++i) {
            if (arrpk[i].equals(arrpk2[i])) continue;
            return false;
        }
        return true;
    }

    private int gG(int n) {
        int n2 = 0;
        int n3 = this.mSize - 1;
        while (n2 <= n3) {
            int n4 = n2 + n3 >>> 1;
            int n5 = this.awO[n4];
            if (n5 < n) {
                n2 = n4 + 1;
                continue;
            }
            if (n5 > n) {
                n3 = n4 - 1;
                continue;
            }
            return n4;
        }
        return ~ n2;
    }

    private void gc() {
        int n = this.mSize;
        int[] arrn = this.awO;
        pk[] arrpk = this.awP;
        int n2 = 0;
        for (int i = 0; i < n; ++i) {
            pk pk = arrpk[i];
            int n3 = n2;
            if (pk != awM) {
                if (i != n2) {
                    arrn[n2] = arrn[i];
                    arrpk[n2] = pk;
                    arrpk[i] = null;
                }
                n3 = n2 + 1;
            }
            n2 = n3;
        }
        this.awN = false;
        this.mSize = n2;
    }

    private int idealByteArraySize(int n) {
        int n2 = 4;
        do {
            int n3 = n;
            if (n2 < 32) {
                if (n <= (1 << n2) - 12) {
                    n3 = (1 << n2) - 12;
                }
            } else {
                return n3;
            }
            ++n2;
        } while (true);
    }

    private int idealIntArraySize(int n) {
        return this.idealByteArraySize(n * 4) / 4;
    }

    public void a(int n, pk pk) {
        int n2 = this.gG(n);
        if (n2 >= 0) {
            this.awP[n2] = pk;
            return;
        }
        int n3 = ~ n2;
        if (n3 < this.mSize && this.awP[n3] == awM) {
            this.awO[n3] = n;
            this.awP[n3] = pk;
            return;
        }
        n2 = n3;
        if (this.awN) {
            n2 = n3;
            if (this.mSize >= this.awO.length) {
                this.gc();
                n2 = ~ this.gG(n);
            }
        }
        if (this.mSize >= this.awO.length) {
            n3 = this.idealIntArraySize(this.mSize + 1);
            int[] arrn = new int[n3];
            pk[] arrpk = new pk[n3];
            System.arraycopy(this.awO, 0, arrn, 0, this.awO.length);
            System.arraycopy(this.awP, 0, arrpk, 0, this.awP.length);
            this.awO = arrn;
            this.awP = arrpk;
        }
        if (this.mSize - n2 != 0) {
            System.arraycopy(this.awO, n2, this.awO, n2 + 1, this.mSize - n2);
            System.arraycopy(this.awP, n2, this.awP, n2 + 1, this.mSize - n2);
        }
        this.awO[n2] = n;
        this.awP[n2] = pk;
        ++this.mSize;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof pj)) {
            return false;
        }
        object = (pj)object;
        if (this.size() != object.size()) {
            return false;
        }
        if (!this.a(this.awO, object.awO, this.mSize)) return false;
        if (this.a(this.awP, object.awP, this.mSize)) return true;
        return false;
    }

    public pk gE(int n) {
        if ((n = this.gG(n)) < 0 || this.awP[n] == awM) {
            return null;
        }
        return this.awP[n];
    }

    public pk gF(int n) {
        if (this.awN) {
            this.gc();
        }
        return this.awP[n];
    }

    public int hashCode() {
        if (this.awN) {
            this.gc();
        }
        int n = 17;
        for (int i = 0; i < this.mSize; ++i) {
            n = (n * 31 + this.awO[i]) * 31 + this.awP[i].hashCode();
        }
        return n;
    }

    public boolean isEmpty() {
        if (this.size() == 0) {
            return true;
        }
        return false;
    }

    public int size() {
        if (this.awN) {
            this.gc();
        }
        return this.mSize;
    }
}

