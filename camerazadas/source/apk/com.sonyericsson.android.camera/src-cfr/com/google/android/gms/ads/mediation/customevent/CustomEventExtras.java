/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.mediation.customevent;

import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;

@Deprecated
public final class CustomEventExtras
implements NetworkExtras {
    private final HashMap<String, Object> xj = new HashMap();

    public Object getExtra(String string) {
        return this.xj.get(string);
    }

    public void setExtra(String string, Object object) {
        this.xj.put(string, object);
    }
}

