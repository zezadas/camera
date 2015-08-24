/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;
import com.google.android.gms.internal.pi;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.di;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

class cr {
    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static d.a a(int var0, c.f var1_1, d.a[] var2_2, Set<Integer> var3_3) throws g {
        var6_4 = 0;
        var7_5 = 0;
        var5_6 = 0;
        if (var3_3.contains(var0)) {
            cr.cL("Value cycle detected.  Current value reference: " + var0 + "." + "  Previous value references: " + var3_3 + ".");
        }
        var10_7 = cr.a(var1_1.fG, var0, "values");
        if (var2_2[var0] != null) {
            return var2_2[var0];
        }
        var9_8 = null;
        var3_3.add(var0);
        switch (var10_7.type) {
            case 2: {
                var9_10 = cr.h(var10_7);
                var11_21 = cr.g(var10_7);
                var11_21.gw = new d.a[var9_10.gh.length];
                var12_24 = var9_10.gh;
                var6_4 = var12_24.length;
                var4_27 = 0;
                do {
                    var9_12 = var11_21;
                    if (var5_6 < var6_4) {
                        var7_5 = var12_24[var5_6];
                        var11_21.gw[var4_27] = cr.a(var7_5, var1_1, var2_2, var3_3);
                        ++var5_6;
                        ++var4_27;
                        continue;
                    } else {
                        ** GOTO lbl73
                    }
                    break;
                } while (true);
            }
            case 3: {
                var11_22 = cr.g(var10_7);
                var9_13 = cr.h(var10_7);
                if (var9_13.gi.length != var9_13.gj.length) {
                    cr.cL("Uneven map keys (" + var9_13.gi.length + ") and map values (" + var9_13.gj.length + ")");
                }
                var11_22.gx = new d.a[var9_13.gi.length];
                var11_22.gy = new d.a[var9_13.gi.length];
                var12_25 = var9_13.gi;
                var7_5 = var12_25.length;
                var4_28 = 0;
                for (var5_6 = 0; var5_6 < var7_5; ++var5_6, ++var4_28) {
                    var8_30 = var12_25[var5_6];
                    var11_22.gx[var4_28] = cr.a(var8_30, var1_1, var2_2, var3_3);
                }
                var12_25 = var9_13.gj;
                var7_5 = var12_25.length;
                var4_28 = 0;
                var5_6 = var6_4;
                do {
                    var9_15 = var11_22;
                    if (var5_6 < var7_5) {
                        var6_4 = var12_25[var5_6];
                        var11_22.gy[var4_28] = cr.a(var6_4, var1_1, var2_2, var3_3);
                        ++var5_6;
                        ++var4_28;
                        continue;
                    } else {
                        ** GOTO lbl73
                    }
                    break;
                } while (true);
            }
            case 4: {
                var9_16 = cr.g(var10_7);
                var9_16.gz = di.j(cr.a(cr.h((d.a)var10_7).gm, var1_1, var2_2, var3_3));
                ** break;
            }
            case 7: {
                var11_23 = cr.g(var10_7);
                var9_17 = cr.h(var10_7);
                var11_23.gD = new d.a[var9_17.gl.length];
                var12_26 = var9_17.gl;
                var6_4 = var12_26.length;
                var4_29 = 0;
                var5_6 = var7_5;
                do {
                    var9_19 = var11_23;
                    if (var5_6 >= var6_4) break;
                    var7_5 = var12_26[var5_6];
                    var11_23.gD[var4_29] = cr.a(var7_5, var1_1, var2_2, var3_3);
                    ++var5_6;
                    ++var4_29;
                } while (true);
            }
lbl73: // 7 sources:
            default: {
                ** GOTO lbl77
            }
            case 1: 
            case 5: 
            case 6: 
            case 8: 
        }
        var9_20 = var10_7;
lbl77: // 2 sources:
        if (var9_9 == null) {
            cr.cL("Invalid value: " + var10_7);
        }
        var2_2[var0] = var9_9;
        var3_3.remove(var0);
        return var9_9;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static a a(c.b b, c.f f, d.a[] arra, int n) throws g {
        b b2 = a.oT();
        for (int n2 : b.fq) {
            void var2_3;
            c.e e = cr.a(var1_2.fH, n2, "properties");
            String string = cr.a(var1_2.fF, e.key, "keys");
            d.a a = (d.a)cr.a(var2_3, e.value, "values");
            if (com.google.android.gms.internal.b.ec.toString().equals(string)) {
                b2.i(a);
                continue;
            }
            b2.b(string, a);
        }
        return b2.oW();
    }

    private static e a(c.g g, List<a> list, List<a> list2, List<a> list3, c.f f) {
        int n;
        f f2 = e.pb();
        int[] arrn = g.fV;
        int n2 = arrn.length;
        for (n = 0; n < n2; ++n) {
            f2.b((a)list3.get(arrn[n]));
        }
        arrn = g.fW;
        n2 = arrn.length;
        for (n = 0; n < n2; ++n) {
            f2.c((a)list3.get(arrn[n]));
        }
        list3 = (List)g.fX;
        n2 = list3.length;
        for (n = 0; n < n2; ++n) {
            f2.d((a)list.get(Integer.valueOf(list3[n])));
        }
        for (List<a> object222 : (List)g.fZ) {
            f2.cN(f.fG[Integer.valueOf(object222).intValue()].gv);
        }
        list3 = (List)g.fY;
        n2 = list3.length;
        for (n = 0; n < n2; ++n) {
            f2.e((a)list.get(Integer.valueOf(list3[n])));
        }
        for (List<a> list4 : (List)g.ga) {
            f2.cO(f.fG[Integer.valueOf(list4).intValue()].gv);
        }
        list = (List)g.gb;
        n2 = list.length;
        for (n = 0; n < n2; ++n) {
            f2.f(list2.get(Integer.valueOf(list[n])));
        }
        for (List<a> list5 : (List)g.gd) {
            f2.cP(f.fG[Integer.valueOf(list5).intValue()].gv);
        }
        list = (List)g.gc;
        n2 = list.length;
        for (n = 0; n < n2; ++n) {
            f2.g(list2.get(Integer.valueOf(list[n])));
        }
        for (c.g g2 : (c.g)g.ge) {
            f2.cQ(f.fG[Integer.valueOf((int)g2).intValue()].gv);
        }
        return f2.pm();
    }

    private static <T> T a(T[] arrT, int n, String string) throws g {
        if (n < 0 || n >= arrT.length) {
            cr.cL("Index out of bounds detected: " + n + " in " + string);
        }
        return arrT[n];
    }

    public static c b(c.f f) throws g {
        int n;
        int n2 = 0;
        d.a[] arra = new d.a[f.fG.length];
        for (n = 0; n < f.fG.length; ++n) {
            cr.a(n, f, arra, new HashSet<Integer>(0));
        }
        d d = c.oX();
        ArrayList<a> arrayList = new ArrayList<a>();
        for (n = 0; n < f.fJ.length; ++n) {
            arrayList.add(cr.a(f.fJ[n], f, arra, n));
        }
        ArrayList<a> arrayList2 = new ArrayList<a>();
        for (n = 0; n < f.fK.length; ++n) {
            arrayList2.add(cr.a(f.fK[n], f, arra, n));
        }
        ArrayList<a> arrayList3 = new ArrayList<a>();
        for (n = 0; n < f.fI.length; ++n) {
            a a = cr.a(f.fI[n], f, arra, n);
            d.a(a);
            arrayList3.add(a);
        }
        arra = f.fL;
        int n3 = arra.length;
        for (n = n2; n < n3; ++n) {
            d.a(cr.a((c.g)arra[n], arrayList, arrayList3, arrayList2, f));
        }
        d.cM(f.version);
        d.fm(f.fT);
        return d.pa();
    }

    public static void b(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] arrby = new byte[1024];
        int n;
        while ((n = inputStream.read(arrby)) != -1) {
            outputStream.write(arrby, 0, n);
        }
        return;
    }

    private static void cL(String string) throws g {
        bh.T(string);
        throw new g(string);
    }

    public static d.a g(d.a a) {
        d.a a2 = new d.a();
        a2.type = a.type;
        a2.gE = (int[])a.gE.clone();
        if (a.gF) {
            a2.gF = a.gF;
        }
        return a2;
    }

    private static c.h h(d.a a) throws g {
        if (a.a(c.h.gf) == null) {
            cr.cL("Expected a ServingValue and didn't get one. Value is: " + a);
        }
        return a.a(c.h.gf);
    }

    public static class a {
        private final Map<String, d.a> aqD;
        private final d.a aqE;

        private a(Map<String, d.a> map, d.a a) {
            this.aqD = map;
            this.aqE = a;
        }

        public static b oT() {
            return new b();
        }

        public void a(String string, d.a a) {
            this.aqD.put(string, a);
        }

        public Map<String, d.a> oU() {
            return Collections.unmodifiableMap(this.aqD);
        }

        public d.a oV() {
            return this.aqE;
        }

        public String toString() {
            return "Properties: " + this.oU() + " pushAfterEvaluate: " + this.aqE;
        }
    }

    public static class b {
        private final Map<String, d.a> aqD = new HashMap<String, d.a>();
        private d.a aqE;

        private b() {
        }

        public b b(String string, d.a a) {
            this.aqD.put(string, a);
            return this;
        }

        public b i(d.a a) {
            this.aqE = a;
            return this;
        }

        public a oW() {
            return new a(this.aqD, this.aqE);
        }
    }

    public static class c {
        private final String Sx;
        private final List<e> aqF;
        private final Map<String, List<a>> aqG;
        private final int aqH;

        private c(List<e> list, Map<String, List<a>> map, String string, int n) {
            this.aqF = Collections.unmodifiableList(list);
            this.aqG = Collections.unmodifiableMap(map);
            this.Sx = string;
            this.aqH = n;
        }

        public static d oX() {
            return new d();
        }

        public String getVersion() {
            return this.Sx;
        }

        public List<e> oY() {
            return this.aqF;
        }

        public Map<String, List<a>> oZ() {
            return this.aqG;
        }

        public String toString() {
            return "Rules: " + this.oY() + "  Macros: " + this.aqG;
        }
    }

    public static class d {
        private String Sx = "";
        private final List<e> aqF = new ArrayList<e>();
        private final Map<String, List<a>> aqG = new HashMap<String, List<a>>();
        private int aqH = 0;

        private d() {
        }

        public d a(a a) {
            List<a> list;
            String string = di.j(a.oU().get(com.google.android.gms.internal.b.df.toString()));
            List<a> list2 = list = this.aqG.get(string);
            if (list == null) {
                list2 = new ArrayList<a>();
                this.aqG.put(string, list2);
            }
            list2.add(a);
            return this;
        }

        public d a(e e) {
            this.aqF.add(e);
            return this;
        }

        public d cM(String string) {
            this.Sx = string;
            return this;
        }

        public d fm(int n) {
            this.aqH = n;
            return this;
        }

        public c pa() {
            return new c(this.aqF, this.aqG, this.Sx, this.aqH);
        }
    }

    public static class e {
        private final List<a> aqI;
        private final List<a> aqJ;
        private final List<a> aqK;
        private final List<a> aqL;
        private final List<a> aqM;
        private final List<a> aqN;
        private final List<String> aqO;
        private final List<String> aqP;
        private final List<String> aqQ;
        private final List<String> aqR;

        private e(List<a> list, List<a> list2, List<a> list3, List<a> list4, List<a> list5, List<a> list6, List<String> list7, List<String> list8, List<String> list9, List<String> list10) {
            this.aqI = Collections.unmodifiableList(list);
            this.aqJ = Collections.unmodifiableList(list2);
            this.aqK = Collections.unmodifiableList(list3);
            this.aqL = Collections.unmodifiableList(list4);
            this.aqM = Collections.unmodifiableList(list5);
            this.aqN = Collections.unmodifiableList(list6);
            this.aqO = Collections.unmodifiableList(list7);
            this.aqP = Collections.unmodifiableList(list8);
            this.aqQ = Collections.unmodifiableList(list9);
            this.aqR = Collections.unmodifiableList(list10);
        }

        public static f pb() {
            return new f();
        }

        public List<a> pc() {
            return this.aqI;
        }

        public List<a> pd() {
            return this.aqJ;
        }

        public List<a> pe() {
            return this.aqK;
        }

        public List<a> pf() {
            return this.aqL;
        }

        public List<a> pg() {
            return this.aqM;
        }

        public List<String> ph() {
            return this.aqO;
        }

        public List<String> pi() {
            return this.aqP;
        }

        public List<String> pj() {
            return this.aqQ;
        }

        public List<String> pk() {
            return this.aqR;
        }

        public List<a> pl() {
            return this.aqN;
        }

        public String toString() {
            return "Positive predicates: " + this.pc() + "  Negative predicates: " + this.pd() + "  Add tags: " + this.pe() + "  Remove tags: " + this.pf() + "  Add macros: " + this.pg() + "  Remove macros: " + this.pl();
        }
    }

    public static class f {
        private final List<a> aqI = new ArrayList<a>();
        private final List<a> aqJ = new ArrayList<a>();
        private final List<a> aqK = new ArrayList<a>();
        private final List<a> aqL = new ArrayList<a>();
        private final List<a> aqM = new ArrayList<a>();
        private final List<a> aqN = new ArrayList<a>();
        private final List<String> aqO = new ArrayList<String>();
        private final List<String> aqP = new ArrayList<String>();
        private final List<String> aqQ = new ArrayList<String>();
        private final List<String> aqR = new ArrayList<String>();

        private f() {
        }

        public f b(a a) {
            this.aqI.add(a);
            return this;
        }

        public f c(a a) {
            this.aqJ.add(a);
            return this;
        }

        public f cN(String string) {
            this.aqQ.add(string);
            return this;
        }

        public f cO(String string) {
            this.aqR.add(string);
            return this;
        }

        public f cP(String string) {
            this.aqO.add(string);
            return this;
        }

        public f cQ(String string) {
            this.aqP.add(string);
            return this;
        }

        public f d(a a) {
            this.aqK.add(a);
            return this;
        }

        public f e(a a) {
            this.aqL.add(a);
            return this;
        }

        public f f(a a) {
            this.aqM.add(a);
            return this;
        }

        public f g(a a) {
            this.aqN.add(a);
            return this;
        }

        public e pm() {
            return new e(this.aqI, this.aqJ, this.aqK, this.aqL, this.aqM, this.aqN, this.aqO, this.aqP, this.aqQ, this.aqR);
        }
    }

    public static class g
    extends Exception {
        public g(String string) {
            super(string);
        }
    }

}

