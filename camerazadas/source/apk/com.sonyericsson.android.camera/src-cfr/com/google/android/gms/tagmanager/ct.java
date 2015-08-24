/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.aa;
import com.google.android.gms.tagmanager.ac;
import com.google.android.gms.tagmanager.ad;
import com.google.android.gms.tagmanager.ae;
import com.google.android.gms.tagmanager.af;
import com.google.android.gms.tagmanager.ag;
import com.google.android.gms.tagmanager.ah;
import com.google.android.gms.tagmanager.ai;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.al;
import com.google.android.gms.tagmanager.am;
import com.google.android.gms.tagmanager.an;
import com.google.android.gms.tagmanager.ao;
import com.google.android.gms.tagmanager.ax;
import com.google.android.gms.tagmanager.az;
import com.google.android.gms.tagmanager.bc;
import com.google.android.gms.tagmanager.bd;
import com.google.android.gms.tagmanager.be;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.bj;
import com.google.android.gms.tagmanager.bk;
import com.google.android.gms.tagmanager.bl;
import com.google.android.gms.tagmanager.bx;
import com.google.android.gms.tagmanager.bz;
import com.google.android.gms.tagmanager.ca;
import com.google.android.gms.tagmanager.cc;
import com.google.android.gms.tagmanager.cf;
import com.google.android.gms.tagmanager.ch;
import com.google.android.gms.tagmanager.ci;
import com.google.android.gms.tagmanager.cj;
import com.google.android.gms.tagmanager.ck;
import com.google.android.gms.tagmanager.cl;
import com.google.android.gms.tagmanager.cm;
import com.google.android.gms.tagmanager.cn;
import com.google.android.gms.tagmanager.cr;
import com.google.android.gms.tagmanager.cs;
import com.google.android.gms.tagmanager.cu;
import com.google.android.gms.tagmanager.cv;
import com.google.android.gms.tagmanager.dc;
import com.google.android.gms.tagmanager.de;
import com.google.android.gms.tagmanager.di;
import com.google.android.gms.tagmanager.dj;
import com.google.android.gms.tagmanager.dk;
import com.google.android.gms.tagmanager.dl;
import com.google.android.gms.tagmanager.dm;
import com.google.android.gms.tagmanager.e;
import com.google.android.gms.tagmanager.f;
import com.google.android.gms.tagmanager.g;
import com.google.android.gms.tagmanager.h;
import com.google.android.gms.tagmanager.i;
import com.google.android.gms.tagmanager.k;
import com.google.android.gms.tagmanager.l;
import com.google.android.gms.tagmanager.m;
import com.google.android.gms.tagmanager.p;
import com.google.android.gms.tagmanager.q;
import com.google.android.gms.tagmanager.s;
import com.google.android.gms.tagmanager.t;
import com.google.android.gms.tagmanager.u;
import com.google.android.gms.tagmanager.w;
import com.google.android.gms.tagmanager.z;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class ct {
    private static final bz<d.a> aqS = new bz<d.a>(di.pK(), true);
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

    public ct(Context object, cr.c object22, DataLayer iterator, s.a object322, s.a object4, ag ag) {
        void var6_19;
        Iterator iterator2;
        cr.a a;
        void var4_13;
        if (object22 == null) {
            throw new NullPointerException("resource cannot be null");
        }
        this.aqT = object22;
        this.ara = new HashSet<cr.e>(object22.oY());
        this.aod = iterator2;
        this.aqU = var6_19;
        l.a<cr.a, bz<d.a>> a2 = new l.a<cr.a, bz<d.a>>(){

            public int a(cr.a a, bz<d.a> bz) {
                return bz.getObject().qH();
            }

            @Override
            public /* synthetic */ int sizeOf(Object object, Object object2) {
                return this.a((cr.a)object, (bz)object2);
            }
        };
        this.aqY = new l().a(1048576, a2);
        l.a<String, b> a3 = new l.a<String, b>(){

            public int a(String string, b b) {
                return string.length() + b.getSize();
            }

            @Override
            public /* synthetic */ int sizeOf(Object object, Object object2) {
                return this.a((String)object, (b)object2);
            }
        };
        this.aqZ = new l().a(1048576, a3);
        this.aqV = new HashMap<String, aj>();
        this.b(new i((Context)object));
        this.b(new s((s.a)a));
        this.b(new w((DataLayer)iterator2));
        this.b(new dj((Context)object, (DataLayer)iterator2));
        this.aqW = new HashMap<String, aj>();
        this.c(new q());
        this.c(new ad());
        this.c(new ae());
        this.c(new al());
        this.c(new am());
        this.c(new bd());
        this.c(new be());
        this.c(new ci());
        this.c(new dc());
        this.aqX = new HashMap<String, aj>();
        this.a(new com.google.android.gms.tagmanager.b((Context)object));
        this.a(new com.google.android.gms.tagmanager.c((Context)object));
        this.a(new e((Context)object));
        this.a(new f((Context)object));
        this.a(new g((Context)object));
        this.a(new h((Context)object));
        this.a(new m());
        this.a(new p(this.aqT.getVersion()));
        this.a(new s((s.a)var4_13));
        this.a(new u((DataLayer)iterator2));
        this.a(new z((Context)object));
        this.a(new aa());
        this.a(new ac());
        this.a(new ah(this));
        this.a(new an());
        this.a(new ao());
        this.a(new ax((Context)object));
        this.a(new az());
        this.a(new bc());
        this.a(new bj());
        this.a(new bl((Context)object));
        this.a(new ca());
        this.a(new cc());
        this.a(new cf());
        this.a(new ch());
        this.a(new cj((Context)object));
        this.a(new cu());
        this.a(new cv());
        this.a(new de());
        this.a(new dk());
        this.arb = new HashMap<String, c>();
        for (cr.e e : this.ara) {
            int n;
            if (var6_19.oq()) {
                ct.a(e.pg(), e.ph(), "add macro");
                ct.a(e.pl(), e.pi(), "remove macro");
                ct.a(e.pe(), e.pj(), "add tag");
                ct.a(e.pf(), e.pk(), "remove tag");
            }
            for (n = 0; n < e.pg().size(); ++n) {
                String string;
                a = e.pg().get(n);
                object = string = "Unknown";
                if (var6_19.oq()) {
                    object = string;
                    if (n < e.ph().size()) {
                        object = e.ph().get(n);
                    }
                }
                c c = ct.e(this.arb, ct.h(a));
                c.b(e);
                c.a(e, a);
                c.a(e, (String)object);
            }
            for (n = 0; n < e.pl().size(); ++n) {
                String string;
                a = e.pl().get(n);
                object = string = "Unknown";
                if (var6_19.oq()) {
                    object = string;
                    if (n < e.pi().size()) {
                        object = e.pi().get(n);
                    }
                }
                c c = ct.e(this.arb, ct.h(a));
                c.b(e);
                c.b(e, a);
                c.b(e, (String)object);
            }
        }
        for (Map.Entry<String, List<cr.a>> entry : this.aqT.oZ().entrySet()) {
            for (cr.a a4 : entry.getValue()) {
                if (di.n(a4.oU().get(com.google.android.gms.internal.b.dG.toString())).booleanValue()) continue;
                ct.e(this.arb, entry.getKey()).i(a4);
            }
        }
    }

    private bz<d.a> a(d.a a, Set<String> set, dl object) {
        if (!a.gF) {
            return new bz<d.a>(a, true);
        }
        switch (a.type) {
            default: {
                bh.T("Unknown type: " + a.type);
                return aqS;
            }
            case 2: {
                d.a a2 = cr.g(a);
                a2.gw = new d.a[a.gw.length];
                for (int i = 0; i < a.gw.length; ++i) {
                    bz<d.a> bz = this.a(a.gw[i], set, object.fi(i));
                    if (bz == aqS) {
                        return aqS;
                    }
                    a2.gw[i] = bz.getObject();
                }
                return new bz<d.a>(a2, false);
            }
            case 3: {
                d.a a3 = cr.g(a);
                if (a.gx.length != a.gy.length) {
                    bh.T("Invalid serving value: " + a.toString());
                    return aqS;
                }
                a3.gx = new d.a[a.gx.length];
                a3.gy = new d.a[a.gx.length];
                for (int i = 0; i < a.gx.length; ++i) {
                    bz<d.a> bz = this.a(a.gx[i], set, object.fj(i));
                    bz<d.a> bz2 = this.a(a.gy[i], set, object.fk(i));
                    if (bz == aqS || bz2 == aqS) {
                        return aqS;
                    }
                    a3.gx[i] = bz.getObject();
                    a3.gy[i] = bz2.getObject();
                }
                return new bz<d.a>(a3, false);
            }
            case 4: {
                if (set.contains(a.gz)) {
                    bh.T("Macro cycle detected.  Current macro reference: " + a.gz + "." + "  Previous macro references: " + set.toString() + ".");
                    return aqS;
                }
                set.add(a.gz);
                object = dm.a(this.a(a.gz, set, object.oF()), a.gE);
                set.remove(a.gz);
                return object;
            }
            case 7: 
        }
        d.a a4 = cr.g(a);
        a4.gD = new d.a[a.gD.length];
        for (int i = 0; i < a.gD.length; ++i) {
            bz<d.a> bz = this.a(a.gD[i], set, object.fl(i));
            if (bz == aqS) {
                return aqS;
            }
            a4.gD[i] = bz.getObject();
        }
        return new bz<d.a>(a4, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private bz<d.a> a(String string, Set<String> set, bk bz) {
        ++this.ard;
        Object object = this.aqZ.get(string);
        if (!(object == null || this.aqU.oq())) {
            this.a(object.oV(), set);
            --this.ard;
            return object.pp();
        }
        object = this.arb.get(string);
        if (object == null) {
            bh.T(this.po() + "Invalid macro: " + string);
            --this.ard;
            return aqS;
        }
        bz<Set<cr.a>> bz2 = this.a(string, object.pq(), object.pr(), object.ps(), object.pu(), object.pt(), set, bz.oh());
        if (bz2.getObject().isEmpty()) {
            object = object.pv();
        } else {
            if (bz2.getObject().size() > 1) {
                bh.W(this.po() + "Multiple macros active for macroName " + string);
            }
            object = bz2.getObject().iterator().next();
        }
        if (object == null) {
            --this.ard;
            return aqS;
        }
        bz = this.a(this.aqX, (cr.a)object, set, bz.ow());
        boolean bl = bz2.oG() && bz.oG();
        bz = bz == aqS ? aqS : new bz<d.a>(bz.getObject(), bl);
        object = object.oV();
        if (bz.oG()) {
            this.aqZ.e(string, new b(bz, (d.a)object));
        }
        this.a((d.a)object, set);
        --this.ard;
        return bz;
    }

    /*
     * Enabled aggressive block sorting
     */
    private bz<d.a> a(Map<String, aj> bz, cr.a a, Set<String> set, ck ck) {
        boolean bl = true;
        Object object = a.oU().get(com.google.android.gms.internal.b.cU.toString());
        if (object == null) {
            bh.T("No function id in properties");
            return aqS;
        }
        object = object.gA;
        aj aj = (aj)bz.get(object);
        if (aj == null) {
            bh.T((String)object + " has no backing implementation.");
            return aqS;
        }
        bz = this.aqY.get(a);
        if (bz != null) {
            if (!this.aqU.oq()) return bz;
        }
        bz = new HashMap();
        Iterator<Map.Entry<String, d.a>> iterator = a.oU().entrySet().iterator();
        boolean bl2 = true;
        while (iterator.hasNext()) {
            Map.Entry<String, d.a> entry = iterator.next();
            bz<d.a> bz2 = ck.cH(entry.getKey());
            bz2 = this.a(entry.getValue(), set, bz2.e(entry.getValue()));
            if (bz2 == aqS) {
                return aqS;
            }
            if (bz2.oG()) {
                a.a(entry.getKey(), (d.a)bz2.getObject());
            } else {
                bl2 = false;
            }
            bz.put(entry.getKey(), bz2.getObject());
        }
        if (!aj.a(bz.keySet())) {
            bh.T("Incorrect keys for function " + (String)object + " required " + aj.os() + " had " + bz.keySet());
            return aqS;
        }
        if (!(bl2 && aj.nN())) {
            bl = false;
        }
        bz = new bz<d.a>(aj.C((Map<String, d.a>)bz), bl);
        if (bl) {
            this.aqY.e(a, bz);
        }
        ck.d(bz.getObject());
        return bz;
    }

    private bz<Set<cr.a>> a(Set<cr.e> object, Set<String> set, a a, cs cs) {
        HashSet<cr.a> hashSet = new HashSet<cr.a>();
        HashSet<cr.a> hashSet2 = new HashSet<cr.a>();
        object = object.iterator();
        boolean bl = true;
        while (object.hasNext()) {
            cn cn;
            cr.e e = (cr.e)object.next();
            bz<Boolean> bz = this.a(e, set, cn = cs.oE());
            if (bz.getObject().booleanValue()) {
                a.a(e, hashSet, hashSet2, cn);
            }
            if (bl && bz.oG()) {
                bl = true;
                continue;
            }
            bl = false;
        }
        hashSet.removeAll(hashSet2);
        cs.b(hashSet);
        return new bz<Set<cr.a>>(hashSet, bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(d.a iterator, Set<String> object) {
        if (iterator != null && (iterator = this.a((d.a)iterator, (Set<String>)object, new bx())) != aqS) {
            if ((iterator = di.o((d.a)iterator.getObject())) instanceof Map) {
                iterator = (Map)iterator;
                this.aod.push((Map<String, Object>)iterator);
                return;
            }
            if (!(iterator instanceof List)) {
                bh.W("pushAfterEvaluate: value not a Map or List");
                return;
            }
            iterator = ((List)iterator).iterator();
            while (iterator.hasNext()) {
                object = iterator.next();
                if (object instanceof Map) {
                    object = (Map)object;
                    this.aod.push((Map<String, Object>)object);
                    continue;
                }
                bh.W("pushAfterEvaluate: value not a Map");
            }
        }
    }

    private static void a(List<cr.a> list, List<String> list2, String string) {
        if (list.size() != list2.size()) {
            bh.U("Invalid resource: imbalance of rule names of functions for " + string + " operation. Using default rule name instead");
        }
    }

    private static void a(Map<String, aj> map, aj aj) {
        if (map.containsKey(aj.or())) {
            throw new IllegalArgumentException("Duplicate function type name: " + aj.or());
        }
        map.put(aj.or(), aj);
    }

    private static c e(Map<String, c> map, String string) {
        c c;
        c c2 = c = map.get(string);
        if (c == null) {
            c2 = new c();
            map.put(string, c2);
        }
        return c2;
    }

    private static String h(cr.a a) {
        return di.j(a.oU().get(com.google.android.gms.internal.b.df.toString()));
    }

    private String po() {
        if (this.ard <= 1) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Integer.toString(this.ard));
        for (int i = 2; i < this.ard; ++i) {
            stringBuilder.append(' ');
        }
        stringBuilder.append(": ");
        return stringBuilder.toString();
    }

    bz<Boolean> a(cr.a object, Set<String> object2, ck ck) {
        object = this.a(this.aqW, (cr.a)object, (Set<String>)object2, ck);
        object2 = di.n((d.a)object.getObject());
        ck.d(di.u(object2));
        return new bz<Object>(object2, object.oG());
    }

    bz<Boolean> a(cr.e object, Set<String> set, cn cn) {
        bz<Boolean> bz = object.pd().iterator();
        boolean bl = true;
        while (bz.hasNext()) {
            bz<Boolean> bz2 = this.a(bz.next(), set, cn.oy());
            if (bz2.getObject().booleanValue()) {
                cn.f(di.u(false));
                return new bz<Boolean>(false, bz2.oG());
            }
            if (bl && bz2.oG()) {
                bl = true;
                continue;
            }
            bl = false;
        }
        object = object.pc().iterator();
        while (object.hasNext()) {
            bz = this.a((cr.a)object.next(), set, cn.oz());
            if (!((Boolean)bz.getObject()).booleanValue()) {
                cn.f(di.u(false));
                return new bz<Boolean>(false, bz.oG());
            }
            if (bl && bz.oG()) {
                bl = true;
                continue;
            }
            bl = false;
        }
        cn.f(di.u(true));
        return new bz<Boolean>(true, bl);
    }

    bz<Set<cr.a>> a(String string, Set<cr.e> set, final Map<cr.e, List<cr.a>> map, final Map<cr.e, List<String>> map2, final Map<cr.e, List<cr.a>> map3, final Map<cr.e, List<String>> map4, Set<String> set2, cs cs) {
        return this.a(set, set2, new a(){

            @Override
            public void a(cr.e object, Set<cr.a> collection, Set<cr.a> set, cn cn) {
                List list = (List)map.get(object);
                List list2 = (List)map2.get(object);
                if (list != null) {
                    collection.addAll(list);
                    cn.oA().c(list, list2);
                }
                collection = (List)map3.get(object);
                object = (List)map4.get(object);
                if (collection != null) {
                    set.addAll(collection);
                    cn.oB().c((List<cr.a>)collection, (List<String>)object);
                }
            }
        }, cs);
    }

    bz<Set<cr.a>> a(Set<cr.e> set, cs cs) {
        return this.a(set, new HashSet<String>(), new a(){

            @Override
            public void a(cr.e e, Set<cr.a> set, Set<cr.a> set2, cn cn) {
                set.addAll(e.pe());
                set2.addAll(e.pf());
                cn.oC().c(e.pe(), e.pj());
                cn.oD().c(e.pf(), e.pk());
            }
        }, cs);
    }

    void a(aj aj) {
        ct.a(this.aqX, aj);
    }

    void b(aj aj) {
        ct.a(this.aqV, aj);
    }

    void c(aj aj) {
        ct.a(this.aqW, aj);
    }

    public bz<d.a> cR(String object) {
        this.ard = 0;
        af af = this.aqU.cA((String)object);
        object = this.a((String)object, new HashSet<String>(), af.on());
        af.op();
        return object;
    }

    void cS(String string) {
        synchronized (this) {
            this.arc = string;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void cp(String object) {
        synchronized (this) {
            this.cS((String)object);
            object = this.aqU.cB((String)object);
            t t = object.oo();
            Iterator<cr.a> iterator = this.a(this.ara, t.oh()).getObject().iterator();
            do {
                if (!iterator.hasNext()) {
                    object.op();
                    this.cS(null);
                    return;
                }
                cr.a a = iterator.next();
                this.a(this.aqV, a, new HashSet<String>(), t.og());
            } while (true);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void k(List<c.i> object) {
        synchronized (this) {
            object = object.iterator();
            while (object.hasNext()) {
                c.i i = (c.i)object.next();
                if (!(i.name != null && i.name.startsWith("gaExperiment:"))) {
                    bh.V("Ignored supplemental: " + i);
                    continue;
                }
                ai.a(this.aod, i);
            }
            return;
        }
    }

    String pn() {
        synchronized (this) {
            String string = this.arc;
            return string;
        }
    }

    static interface a {
        public void a(cr.e var1, Set<cr.a> var2, Set<cr.a> var3, cn var4);
    }

    private static class b {
        private d.a aqE;
        private bz<d.a> arj;

        public b(bz<d.a> bz, d.a a) {
            this.arj = bz;
            this.aqE = a;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public int getSize() {
            int n;
            int n2 = this.arj.getObject().qH();
            if (this.aqE == null) {
                n = 0;
                do {
                    return n + n2;
                    break;
                } while (true);
            }
            n = this.aqE.qH();
            return n + n2;
        }

        public d.a oV() {
            return this.aqE;
        }

        public bz<d.a> pp() {
            return this.arj;
        }
    }

    private static class c {
        private final Set<cr.e> ara = new HashSet<cr.e>();
        private final Map<cr.e, List<cr.a>> ark = new HashMap<cr.e, List<cr.a>>();
        private final Map<cr.e, List<cr.a>> arl = new HashMap<cr.e, List<cr.a>>();
        private final Map<cr.e, List<String>> arm = new HashMap<cr.e, List<String>>();
        private final Map<cr.e, List<String>> arn = new HashMap<cr.e, List<String>>();
        private cr.a aro;

        public void a(cr.e e, cr.a a) {
            List<cr.a> list;
            List<cr.a> list2 = list = this.ark.get(e);
            if (list == null) {
                list2 = new ArrayList<cr.a>();
                this.ark.put(e, list2);
            }
            list2.add(a);
        }

        public void a(cr.e e, String string) {
            List<String> list;
            List<String> list2 = list = this.arm.get(e);
            if (list == null) {
                list2 = new ArrayList<String>();
                this.arm.put(e, list2);
            }
            list2.add(string);
        }

        public void b(cr.e e) {
            this.ara.add(e);
        }

        public void b(cr.e e, cr.a a) {
            List<cr.a> list;
            List<cr.a> list2 = list = this.arl.get(e);
            if (list == null) {
                list2 = new ArrayList<cr.a>();
                this.arl.put(e, list2);
            }
            list2.add(a);
        }

        public void b(cr.e e, String string) {
            List<String> list;
            List<String> list2 = list = this.arn.get(e);
            if (list == null) {
                list2 = new ArrayList<String>();
                this.arn.put(e, list2);
            }
            list2.add(string);
        }

        public void i(cr.a a) {
            this.aro = a;
        }

        public Set<cr.e> pq() {
            return this.ara;
        }

        public Map<cr.e, List<cr.a>> pr() {
            return this.ark;
        }

        public Map<cr.e, List<String>> ps() {
            return this.arm;
        }

        public Map<cr.e, List<String>> pt() {
            return this.arn;
        }

        public Map<cr.e, List<cr.a>> pu() {
            return this.arl;
        }

        public cr.a pv() {
            return this.aro;
        }
    }

}

