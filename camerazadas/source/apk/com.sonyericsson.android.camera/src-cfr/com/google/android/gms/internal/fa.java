/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fb;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.k;

@ez
public final class fa {
    public static gg a(Context object, fi.a a, k k, a a2) {
        object = new fb((Context)object, a, k, a2);
        object.start();
        return object;
    }

    public static interface a {
        public void a(fz.a var1);
    }

}

