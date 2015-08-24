/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ac;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gv;
import java.util.HashMap;
import java.util.Map;

@ez
class z
implements ac {
    private gv mi;

    public z(gv gv) {
        this.mi = gv;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void a(af object, boolean bl) {
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        object = bl ? "1" : "0";
        hashMap.put("isVisible", object);
        this.mi.a("onAdVisibilityChanged", hashMap);
    }
}

