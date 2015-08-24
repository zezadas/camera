/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;

class cr {
    private static d.a a(int var0, c.f var1, d.a[] var2, Set<Integer> var3) throws g;

    private static a a(c.b var0, c.f var1, d.a[] var2, int var3) throws g;

    private static e a(c.g var0, List<a> var1, List<a> var2, List<a> var3, c.f var4);

    private static <T> T a(T[] var0, int var1, String var2) throws g;

    public static c b(c.f var0) throws g;

    public static void b(InputStream var0, OutputStream var1) throws IOException;

    private static void cL(String var0) throws g;

    public static d.a g(d.a var0);

    private static c.h h(d.a var0) throws g;

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private final Map<String, d.a> aqD;
        private final d.a aqE;

        private a(Map<String, d.a> var1, d.a var2);

        /* synthetic */ a(Map var1, d.a var2,  var3);

        public static b oT();

        public void a(String var1, d.a var2);

        public Map<String, d.a> oU();

        public d.a oV();

        public String toString();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class b {
        private final Map<String, d.a> aqD;
        private d.a aqE;

        private b();

        /* synthetic */ b( var1);

        public b b(String var1, d.a var2);

        public b i(d.a var1);

        public a oW();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class c {
        private final String Sx;
        private final List<e> aqF;
        private final Map<String, List<a>> aqG;
        private final int aqH;

        private c(List<e> var1, Map<String, List<a>> var2, String var3, int var4);

        /* synthetic */ c(List var1, Map var2, String var3, int var4,  var5);

        public static d oX();

        public String getVersion();

        public List<e> oY();

        public Map<String, List<a>> oZ();

        public String toString();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class d {
        private String Sx;
        private final List<e> aqF;
        private final Map<String, List<a>> aqG;
        private int aqH;

        private d();

        /* synthetic */ d( var1);

        public d a(a var1);

        public d a(e var1);

        public d cM(String var1);

        public d fm(int var1);

        public c pa();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
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

        private e(List<a> var1, List<a> var2, List<a> var3, List<a> var4, List<a> var5, List<a> var6, List<String> var7, List<String> var8, List<String> var9, List<String> var10);

        /* synthetic */ e(List var1, List var2, List var3, List var4, List var5, List var6, List var7, List var8, List var9, List var10,  var11);

        public static f pb();

        public List<a> pc();

        public List<a> pd();

        public List<a> pe();

        public List<a> pf();

        public List<a> pg();

        public List<String> ph();

        public List<String> pi();

        public List<String> pj();

        public List<String> pk();

        public List<a> pl();

        public String toString();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class f {
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

        private f();

        /* synthetic */ f( var1);

        public f b(a var1);

        public f c(a var1);

        public f cN(String var1);

        public f cO(String var1);

        public f cP(String var1);

        public f cQ(String var1);

        public f d(a var1);

        public f e(a var1);

        public f f(a var1);

        public f g(a var1);

        public e pm();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class g
    extends Exception {
        public g(String var1);
    }

}

