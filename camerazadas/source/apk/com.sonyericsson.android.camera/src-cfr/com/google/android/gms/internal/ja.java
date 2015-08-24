/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class ja<K, V> {
    private final LinkedHashMap<K, V> Mj;
    private int Mk;
    private int Ml;
    private int Mm;
    private int Mn;
    private int Mo;
    private int Mp;
    private int size;

    public ja(int n) {
        if (n <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.Mk = n;
        this.Mj = new LinkedHashMap(0, 0.75f, true);
    }

    private int c(K k, V v) {
        int n = this.sizeOf(k, v);
        if (n < 0) {
            throw new IllegalStateException("Negative size: " + k + "=" + v);
        }
        return n;
    }

    protected V create(K k) {
        return null;
    }

    protected void entryRemoved(boolean bl, K k, V v, V v2) {
    }

    public final void evictAll() {
        this.trimToSize(-1);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public final V get(K k) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        // MONITORENTER : this
        V v = this.Mj.get(k);
        if (v != null) {
            ++this.Mo;
            // MONITOREXIT : this
            return v;
        }
        ++this.Mp;
        // MONITOREXIT : this
        v = this.create(k);
        if (v == null) {
            return null;
        }
        // MONITORENTER : this
        ++this.Mm;
        V v2 = this.Mj.put(k, v);
        if (v2 != null) {
            this.Mj.put(k, v2);
        } else {
            this.size+=this.c(k, v);
        }
        // MONITOREXIT : this
        if (v2 != null) {
            this.entryRemoved(false, k, v, v2);
            return v2;
        }
        this.trimToSize(this.Mk);
        return v;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public final V put(K k, V v) {
        if (k == null) throw new NullPointerException("key == null || value == null");
        if (v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        // MONITORENTER : this
        ++this.Ml;
        this.size+=this.c(k, v);
        V v2 = this.Mj.put(k, v);
        if (v2 != null) {
            this.size-=this.c(k, v2);
        }
        // MONITOREXIT : this
        if (v2 != null) {
            this.entryRemoved(false, k, v2, v);
        }
        this.trimToSize(this.Mk);
        return v2;
    }

    public final int size() {
        synchronized (this) {
            int n = this.size;
            return n;
        }
    }

    protected int sizeOf(K k, V v) {
        return 1;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final String toString() {
        int n = 0;
        synchronized (this) {
            int n2 = this.Mo + this.Mp;
            if (n2 == 0) return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", this.Mk, this.Mo, this.Mp, n);
            n = this.Mo * 100 / n2;
            return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", this.Mk, this.Mo, this.Mp, n);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void trimToSize(int n) {
        do {
            K k;
            Map.Entry entry2;
            synchronized (this) {
                if (this.size < 0 || this.Mj.isEmpty() && this.size != 0) {
                    throw new IllegalStateException(this.getClass().getName() + ".sizeOf() is reporting inconsistent results!");
                }
                if (this.size <= n || this.Mj.isEmpty()) {
                    return;
                }
                Map.Entry entry2 = this.Mj.entrySet().iterator().next();
                k = entry2.getKey();
                entry2 = entry2.getValue();
                this.Mj.remove(k);
                this.size-=this.c(k, entry2);
                ++this.Mn;
            }
            this.entryRemoved(true, k, entry2, null);
        } while (true);
    }
}

