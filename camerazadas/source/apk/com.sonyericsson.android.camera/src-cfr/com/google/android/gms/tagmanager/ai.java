/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.di;
import java.util.Map;

class ai {
    private static void a(DataLayer dataLayer, c.d arra) {
        arra = arra.fB;
        int n = arra.length;
        for (int i = 0; i < n; ++i) {
            dataLayer.cv(di.j(arra[i]));
        }
    }

    public static void a(DataLayer dataLayer, c.i i) {
        if (i.gq == null) {
            bh.W("supplemental missing experimentSupplemental");
            return;
        }
        ai.a(dataLayer, i.gq);
        ai.b(dataLayer, i.gq);
        ai.c(dataLayer, i.gq);
    }

    private static void b(DataLayer dataLayer, c.d arra) {
        arra = arra.fA;
        int n = arra.length;
        for (int i = 0; i < n; ++i) {
            Map<String, Object> map = ai.c(arra[i]);
            if (map == null) continue;
            dataLayer.push(map);
        }
    }

    private static Map<String, Object> c(d.a object) {
        if (!((object = di.o((d.a)object)) instanceof Map)) {
            bh.W("value: " + object + " is not a map value, ignored.");
            return null;
        }
        return (Map)object;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static void c(DataLayer var0, c.d var1_1) {
        for (c.c var10_8 : var1_1.fC) {
            if (var10_8.fv == null) {
                bh.W("GaExperimentRandom: No key");
                continue;
            }
            var8_7 = var0.get(var10_8.fv);
            var1_1 = var8_7 instanceof Number == false ? null : Long.valueOf(((Number)var8_7).longValue());
            var4_5 = var10_8.fw;
            var6_6 = var10_8.fx;
            if (!(var10_8.fy && var1_1 != null && var1_1.longValue() >= var4_5 && var1_1.longValue() <= var6_6)) {
                if (var4_5 <= var6_6) {
                    var8_7 = Math.round(Math.random() * (double)(var6_6 - var4_5) + (double)var4_5);
                } else {
                    ** GOTO lbl18
                }
            }
            var0.cv(var10_8.fv);
            var1_1 = var0.c(var10_8.fv, var8_7);
            if (var10_8.fz <= 0) ** GOTO lbl25
            if (var1_1.containsKey("gtm")) ** GOTO lbl20
            var1_1.put("gtm", DataLayer.mapOf(new Object[]{"lifetime", var10_8.fz}));
            ** GOTO lbl25
lbl18: // 2 sources:
            bh.W("GaExperimentRandom: random range invalid");
            continue;
lbl20: // 1 sources:
            var8_7 = var1_1.get("gtm");
            if (var8_7 instanceof Map) {
                ((Map)var8_7).put("lifetime", var10_8.fz);
            } else {
                bh.W("GaExperimentRandom: gtm not a map");
            }
lbl25: // 4 sources:
            var0.push(var1_1);
        }
    }
}

