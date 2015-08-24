/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gs;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@ez
public final class fu {
    private int mOrientation = -1;
    private String pn;
    private List<String> uA;
    private long uB = -1;
    private boolean uC = false;
    private final long uD = -1;
    private long uE = -1;
    private boolean uF = false;
    private boolean uG = false;
    private boolean uH = false;
    private boolean uI = false;
    private List<String> ua;
    private String uv;
    private String uw;
    private List<String> ux;
    private String uy;
    private String uz;

    static String a(Map<String, List<String>> object, String string) {
        if (!((object = object.get(string)) == null || object.isEmpty())) {
            return (String)object.get(0);
        }
        return null;
    }

    static long b(Map<String, List<String>> object, String string) {
        if (!((object = object.get(string)) == null || object.isEmpty())) {
            float f;
            object = (String)object.get(0);
            try {
                f = Float.parseFloat((String)object);
            }
            catch (NumberFormatException var3_3) {
                gs.W("Could not parse float from " + string + " header: " + (String)object);
            }
            return (long)(f * 1000.0f);
        }
        return -1;
    }

    static List<String> c(Map<String, List<String>> object, String string) {
        if (!((object = object.get(string)) == null || object.isEmpty() || (object = (String)object.get(0)) == null)) {
            return Arrays.asList(object.trim().split("\\s+"));
        }
        return null;
    }

    private boolean d(Map<String, List<String>> object, String string) {
        if ((object = object.get(string)) != null && !object.isEmpty() && Boolean.valueOf((String)object.get(0)).booleanValue()) {
            return true;
        }
        return false;
    }

    private void f(Map<String, List<String>> map) {
        this.uv = fu.a(map, "X-Afma-Ad-Size");
    }

    private void g(Map<String, List<String>> object) {
        if ((object = fu.c(object, "X-Afma-Click-Tracking-Urls")) != null) {
            this.ux = object;
        }
    }

    private void h(Map<String, List<String>> object) {
        if (!((object = object.get("X-Afma-Debug-Dialog")) == null || object.isEmpty())) {
            this.uy = (String)object.get(0);
        }
    }

    private void i(Map<String, List<String>> object) {
        if ((object = fu.c(object, "X-Afma-Tracking-Urls")) != null) {
            this.uA = object;
        }
    }

    private void j(Map<String, List<String>> map) {
        long l = fu.b(map, "X-Afma-Interstitial-Timeout");
        if (l != -1) {
            this.uB = l;
        }
    }

    private void k(Map<String, List<String>> map) {
        this.uz = fu.a(map, "X-Afma-ActiveView");
    }

    private void l(Map<String, List<String>> map) {
        this.uG|=this.d(map, "X-Afma-Native");
    }

    private void m(Map<String, List<String>> map) {
        this.uF|=this.d(map, "X-Afma-Custom-Rendering-Allowed");
    }

    private void n(Map<String, List<String>> map) {
        this.uC|=this.d(map, "X-Afma-Mediation");
    }

    private void o(Map<String, List<String>> object) {
        if ((object = fu.c(object, "X-Afma-Manual-Tracking-Urls")) != null) {
            this.ua = object;
        }
    }

    private void p(Map<String, List<String>> map) {
        long l = fu.b(map, "X-Afma-Refresh-Rate");
        if (l != -1) {
            this.uE = l;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void q(Map<String, List<String>> object) {
        if ((object = (List)object.get("X-Afma-Orientation")) == null || object.isEmpty()) return;
        {
            if ("portrait".equalsIgnoreCase((String)(object = (String)object.get(0)))) {
                this.mOrientation = gj.dm();
                return;
            } else {
                if (!"landscape".equalsIgnoreCase((String)object)) return;
                {
                    this.mOrientation = gj.dl();
                    return;
                }
            }
        }
    }

    private void r(Map<String, List<String>> object) {
        if (!((object = object.get("X-Afma-Use-HTTPS")) == null || object.isEmpty())) {
            this.uH = Boolean.valueOf((String)object.get(0));
        }
    }

    private void s(Map<String, List<String>> object) {
        if (!((object = object.get("X-Afma-Content-Url-Opted-Out")) == null || object.isEmpty())) {
            this.uI = Boolean.valueOf((String)object.get(0));
        }
    }

    public void a(String string, Map<String, List<String>> map, String string2) {
        this.uw = string;
        this.pn = string2;
        this.e(map);
    }

    public void e(Map<String, List<String>> map) {
        this.f(map);
        this.g(map);
        this.h(map);
        this.i(map);
        this.j(map);
        this.n(map);
        this.o(map);
        this.p(map);
        this.q(map);
        this.k(map);
        this.r(map);
        this.m(map);
        this.l(map);
        this.s(map);
    }

    public fk i(long l) {
        return new fk(this.uw, this.pn, this.ux, this.uA, this.uB, this.uC, -1, this.ua, this.uE, this.mOrientation, this.uv, l, this.uy, this.uz, this.uF, this.uG, this.uH, this.uI);
    }
}

