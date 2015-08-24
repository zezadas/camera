/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.tagmanager.bb;
import com.google.android.gms.tagmanager.da;
import com.google.android.gms.tagmanager.k;

class l<K, V> {
    final a<K, V> aoa;

    public l() {
        this.aoa = new a<K, V>(){

            @Override
            public int sizeOf(K k, V v) {
                return 1;
            }
        };
    }

    public k<K, V> a(int n, a<K, V> a) {
        if (n <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (this.nP() < 12) {
            return new da<K, V>(n, a);
        }
        return new bb<K, V>(n, a);
    }

    int nP() {
        return Build.VERSION.SDK_INT;
    }

    public static interface a<K, V> {
        public int sizeOf(K var1, V var2);
    }

}

