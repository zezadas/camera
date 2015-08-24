/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import java.util.Map;

@ez
public final class bv
implements by {
    private final bw pz;

    public bv(bw bw) {
        this.pz = bw;
    }

    @Override
    public void a(gv object, Map<String, String> map) {
        object = map.get("name");
        if (object == null) {
            gs.W("App event with no name parameter.");
            return;
        }
        this.pz.onAppEvent((String)object, map.get("info"));
    }
}

