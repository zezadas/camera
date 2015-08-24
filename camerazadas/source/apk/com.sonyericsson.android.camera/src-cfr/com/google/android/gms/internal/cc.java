/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.by;
import com.google.android.gms.internal.dc;
import com.google.android.gms.internal.dd;
import com.google.android.gms.internal.de;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import java.util.HashMap;
import java.util.Map;

@ez
public class cc
implements by {
    static final Map<String, Integer> pK = new HashMap<String, Integer>();

    static {
        pK.put("resize", 1);
        pK.put("playVideo", 2);
        pK.put("storePicture", 3);
        pK.put("createCalendarEvent", 4);
    }

    @Override
    public void a(gv gv, Map<String, String> map) {
        String string = map.get("a");
        switch (pK.get(string)) {
            default: {
                gs.U("Unknown MRAID command called.");
                return;
            }
            case 1: {
                new dd(gv, map).execute();
                return;
            }
            case 4: {
                new dc(gv, map).execute();
                return;
            }
            case 3: 
        }
        new de(gv, map).execute();
    }
}

