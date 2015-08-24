/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.dk;
import com.google.android.gms.internal.do;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import java.util.Map;

@ez
public final class ce
implements by {
    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static int a(DisplayMetrics displayMetrics, Map<String, String> object, String string, int n) {
        object = (String)object.get(string);
        int n2 = n;
        if (object == null) return n2;
        try {
            return gr.a(displayMetrics, Integer.parseInt((String)object));
        }
        catch (NumberFormatException numberFormatException) {
            gs.W("Could not parse " + string + " in a video GMSG: " + (String)object);
            return n;
        }
    }

    @Override
    public void a(gv object, Map<String, String> map) {
        String string = map.get("action");
        if (string == null) {
            gs.W("Action missing from video GMSG.");
            return;
        }
        Object object2 = object.dt();
        if (object2 == null) {
            gs.W("Could not get ad overlay for a video GMSG.");
            return;
        }
        boolean bl = "new".equalsIgnoreCase(string);
        boolean bl2 = "position".equalsIgnoreCase(string);
        if (bl || bl2) {
            object = object.getContext().getResources().getDisplayMetrics();
            int n = ce.a((DisplayMetrics)object, map, "x", 0);
            int n2 = ce.a((DisplayMetrics)object, map, "y", 0);
            int n3 = ce.a((DisplayMetrics)object, map, "w", -1);
            int n4 = ce.a((DisplayMetrics)object, map, "h", -1);
            if (bl && object2.bV() == null) {
                object2.c(n, n2, n3, n4);
                return;
            }
            object2.b(n, n2, n3, n4);
            return;
        }
        if ((object2 = object2.bV()) == null) {
            do.a((gv)object, "no_video_view", null);
            return;
        }
        if ("click".equalsIgnoreCase(string)) {
            object = object.getContext().getResources().getDisplayMetrics();
            int n = ce.a((DisplayMetrics)object, map, "x", 0);
            int n5 = ce.a((DisplayMetrics)object, map, "y", 0);
            long l = SystemClock.uptimeMillis();
            object = MotionEvent.obtain(l, l, 0, n, n5, 0);
            object2.b((MotionEvent)object);
            object.recycle();
            return;
        }
        if ("controls".equalsIgnoreCase(string)) {
            object = map.get("enabled");
            if (object == null) {
                gs.W("Enabled parameter missing from controls video GMSG.");
                return;
            }
            object2.q(Boolean.parseBoolean((String)object));
            return;
        }
        if ("currentTime".equalsIgnoreCase(string)) {
            object = map.get("time");
            if (object == null) {
                gs.W("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                object2.seekTo((int)(Float.parseFloat((String)object) * 1000.0f));
                return;
            }
            catch (NumberFormatException var2_3) {
                gs.W("Could not parse time parameter from currentTime video GMSG: " + (String)object);
                return;
            }
        }
        if ("hide".equalsIgnoreCase(string)) {
            object2.setVisibility(4);
            return;
        }
        if ("load".equalsIgnoreCase(string)) {
            object2.ch();
            return;
        }
        if ("pause".equalsIgnoreCase(string)) {
            object2.pause();
            return;
        }
        if ("play".equalsIgnoreCase(string)) {
            object2.play();
            return;
        }
        if ("show".equalsIgnoreCase(string)) {
            object2.setVisibility(0);
            return;
        }
        if ("src".equalsIgnoreCase(string)) {
            object2.C(map.get("src"));
            return;
        }
        gs.W("Unknown video action: " + string);
    }
}

