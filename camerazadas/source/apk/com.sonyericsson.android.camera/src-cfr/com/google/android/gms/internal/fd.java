/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.ai;
import com.google.android.gms.internal.ct;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fe;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fn;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.u;

@ez
public final class fd {
    /*
     * Enabled aggressive block sorting
     */
    public static gg a(Context object, u u, fz.a a, gv gv, ct ct, a a2) {
        object = a.vw.tS ? new fn((Context)object, u, new ai(), a, a2) : new fe((Context)object, a, gv, ct, a2);
        object.start();
        return object;
    }

    public static interface a {
        public void a(fz var1);
    }

}

