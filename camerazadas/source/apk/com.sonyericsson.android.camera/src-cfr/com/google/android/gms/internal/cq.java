/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.cl;
import com.google.android.gms.internal.co;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.ez;

@ez
public final class cq {
    public final String qA;
    public final co qB;
    public final int qx;
    public final cl qy;
    public final cu qz;

    public cq(int n) {
        this(null, null, null, null, n);
    }

    public cq(cl cl, cu cu, String string, co co, int n) {
        this.qy = cl;
        this.qz = cu;
        this.qA = string;
        this.qB = co;
        this.qx = n;
    }

    public static interface a {
        public void j(int var1);
    }

}

