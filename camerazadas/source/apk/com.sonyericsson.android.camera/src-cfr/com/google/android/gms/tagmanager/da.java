/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.k;
import com.google.android.gms.tagmanager.l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class da<K, V>
implements k<K, V> {
    private final Map<K, V> arD = new HashMap();
    private final int arE;
    private final l.a<K, V> arF;
    private int arG;

    da(int n, l.a<K, V> a) {
        this.arE = n;
        this.arF = a;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void e(K k, V v) {
        synchronized (this) {
            if (k == null || v == null) {
                throw new NullPointerException("key == null || value == null");
            }
            this.arG+=this.arF.sizeOf(k, v);
            if (this.arG > this.arE) {
                Iterator<Map.Entry<K, V>> iterator = this.arD.entrySet().iterator();
                while (iterator.hasNext()) {
                    Map.Entry<K, V> entry = iterator.next();
                    this.arG-=this.arF.sizeOf(entry.getKey(), entry.getValue());
                    iterator.remove();
                    if (this.arG > this.arE) continue;
                }
            }
            this.arD.put(k, v);
            return;
        }
    }

    @Override
    public V get(K object) {
        synchronized (this) {
            object = this.arD.get(object);
            return (V)object;
        }
    }
}

