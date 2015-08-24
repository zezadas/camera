/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.t;
import org.json.JSONObject;

public interface ah {
    public void a(a var1);

    public void a(t var1, dn var2, bw var3, dq var4, boolean var5, bz var6);

    public void a(String var1, by var2);

    public void a(String var1, JSONObject var2);

    public void destroy();

    public void f(String var1);

    public void g(String var1);

    public void pause();

    public void resume();

    public static interface a {
        public void aM();
    }

}

