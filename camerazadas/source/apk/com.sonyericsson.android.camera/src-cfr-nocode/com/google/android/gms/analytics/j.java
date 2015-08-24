/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import android.content.res.XmlResourceParser;
import com.google.android.gms.analytics.i;

/*
 * Exception performing whole class analysis.
 */
abstract class j<T extends i> {
    Context mContext;
    a<T> xV;

    public j(Context var1, a<T> var2);

    private T a(XmlResourceParser var1);

    public T w(int var1);

    public static interface a<U extends i> {
        public void c(String var1, int var2);

        public void d(String var1, boolean var2);

        public U dW();

        public void f(String var1, String var2);

        public void g(String var1, String var2);
    }

}

