/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.by;
import com.google.android.gms.internal.cb;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gv;
import java.util.Map;

@ez
public class ca
implements by {
    private final cb pJ;

    public ca(cb cb) {
        this.pJ = cb;
    }

    @Override
    public void a(gv gv, Map<String, String> map) {
        boolean bl = "1".equals(map.get("transparentBackground"));
        this.pJ.b(bl);
    }
}

