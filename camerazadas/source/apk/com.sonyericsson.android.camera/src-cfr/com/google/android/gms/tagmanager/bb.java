/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.util.LruCache;
import com.google.android.gms.tagmanager.k;
import com.google.android.gms.tagmanager.l;

class bb<K, V>
implements k<K, V> {
    private LruCache<K, V> apI;

    bb(int n, final l.a<K, V> a) {
        this.apI = new LruCache<K, V>(n){

            @Override
            protected int sizeOf(K k, V v) {
                return a.sizeOf(k, v);
            }
        };
    }

    @Override
    public void e(K k, V v) {
        this.apI.put(k, v);
    }

    @Override
    public V get(K k) {
        return this.apI.get(k);
    }

}

