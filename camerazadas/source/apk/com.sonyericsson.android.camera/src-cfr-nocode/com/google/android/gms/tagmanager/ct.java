/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.ag;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.bk;
import com.google.android.gms.tagmanager.bz;
import com.google.android.gms.tagmanager.ck;
import com.google.android.gms.tagmanager.cn;
import com.google.android.gms.tagmanager.cr;
import com.google.android.gms.tagmanager.cs;
import com.google.android.gms.tagmanager.dl;
import com.google.android.gms.tagmanager.k;
import com.google.android.gms.tagmanager.l;
import com.google.android.gms.tagmanager.s;
import java.util.List;
import java.util.Map;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class ct {
    private static final bz<d.a> aqS;
    private final DataLayer aod;
    private final cr.c aqT;
    private final ag aqU;
    private final Map<String, aj> aqV;
    private final Map<String, aj> aqW;
    private final Map<String, aj> aqX;
    private final k<cr.a, bz<d.a>> aqY;
    private final k<String, b> aqZ;
    private final Set<cr.e> ara;
    private final Map<String, c> arb;
    private volatile String arc;
    private int ard;

    static;

    public ct(Context var1, cr.c var2, DataLayer var3, s.a var4, s.a var5, ag var6);

    private bz<d.a> a(d.a var1, Set<String> var2, dl var3);

    private bz<d.a> a(String var1, Set<String> var2, bk var3);

    private bz<d.a> a(Map<String, aj> var1, cr.a var2, Set<String> var3, ck var4);

    private bz<Set<cr.a>> a(Set<cr.e> var1, Set<String> var2, a var3, cs var4);

    private void a(d.a var1, Set<String> var2);

    private static void a(List<cr.a> var0, List<String> var1, String var2);

    private static void a(Map<String, aj> var0, aj var1);

    private static c e(Map<String, c> var0, String var1);

    private static String h(cr.a var0);

    private String po();

    bz<Boolean> a(cr.a var1, Set<String> var2, ck var3);

    bz<Boolean> a(cr.e var1, Set<String> var2, cn var3);

    bz<Set<cr.a>> a(String var1, Set<cr.e> var2, Map<cr.e, List<cr.a>> var3, Map<cr.e, List<String>> var4, Map<cr.e, List<cr.a>> var5, Map<cr.e, List<String>> var6, Set<String> var7, cs var8);

    bz<Set<cr.a>> a(Set<cr.e> var1, cs var2);

    void a(aj var1);

    void b(aj var1);

    void c(aj var1);

    public bz<d.a> cR(String var1);

    void cS(String var1);

    public void cp(String var1);

    public void k(List<c.i> var1);

    String pn();

    static interface a {
        public void a(cr.e var1, Set<cr.a> var2, Set<cr.a> var3, cn var4);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class b {
        private d.a aqE;
        private bz<d.a> arj;

        public b(bz<d.a> var1, d.a var2);

        public int getSize();

        public d.a oV();

        public bz<d.a> pp();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class c {
        private final Set<cr.e> ara;
        private final Map<cr.e, List<cr.a>> ark;
        private final Map<cr.e, List<cr.a>> arl;
        private final Map<cr.e, List<String>> arm;
        private final Map<cr.e, List<String>> arn;
        private cr.a aro;

        public c();

        public void a(cr.e var1, cr.a var2);

        public void a(cr.e var1, String var2);

        public void b(cr.e var1);

        public void b(cr.e var1, cr.a var2);

        public void b(cr.e var1, String var2);

        public void i(cr.a var1);

        public Set<cr.e> pq();

        public Map<cr.e, List<cr.a>> pr();

        public Map<cr.e, List<String>> ps();

        public Map<cr.e, List<String>> pt();

        public Map<cr.e, List<cr.a>> pu();

        public cr.a pv();
    }

}

