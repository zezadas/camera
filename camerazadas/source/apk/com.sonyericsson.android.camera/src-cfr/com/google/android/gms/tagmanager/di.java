/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.dh;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class di {
    private static final Object arU = null;
    private static Long arV = new Long(0);
    private static Double arW = new Double(0.0);
    private static dh arX = dh.z(0);
    private static String arY = new String("");
    private static Boolean arZ = new Boolean(false);
    private static List<Object> asa = new ArrayList<Object>(0);
    private static Map<Object, Object> asb = new HashMap<Object, Object>();
    private static d.a asc = di.u(arY);

    public static d.a cX(String string) {
        d.a a = new d.a();
        a.type = 5;
        a.gA = string;
        return a;
    }

    private static dh cY(String string) {
        try {
            dh dh = dh.cW(string);
            return dh;
        }
        catch (NumberFormatException var1_2) {
            bh.T("Failed to convert '" + string + "' to a number.");
            return arX;
        }
    }

    private static Long cZ(String object) {
        if ((object = di.cY((String)object)) == arX) {
            return arV;
        }
        return object.longValue();
    }

    private static Double da(String object) {
        if ((object = di.cY((String)object)) == arX) {
            return arW;
        }
        return object.doubleValue();
    }

    private static Boolean db(String string) {
        if ("true".equalsIgnoreCase(string)) {
            return Boolean.TRUE;
        }
        if ("false".equalsIgnoreCase(string)) {
            return Boolean.FALSE;
        }
        return arZ;
    }

    private static double getDouble(Object object) {
        if (object instanceof Number) {
            return ((Number)object).doubleValue();
        }
        bh.T("getDouble received non-Number");
        return 0.0;
    }

    public static String j(d.a a) {
        return di.p(di.o(a));
    }

    public static dh k(d.a a) {
        return di.q(di.o(a));
    }

    public static Long l(d.a a) {
        return di.r(di.o(a));
    }

    public static Double m(d.a a) {
        return di.s(di.o(a));
    }

    public static Boolean n(d.a a) {
        return di.t(di.o(a));
    }

    public static Object o(d.a arra) {
        int n = 0;
        int n2 = 0;
        if (arra == null) {
            return arU;
        }
        switch (arra.type) {
            int n3;
            default: {
                bh.T("Failed to convert a value of type: " + arra.type);
                return arU;
            }
            case 1: {
                return arra.gv;
            }
            case 2: {
                ArrayList<Object> arrayList = new ArrayList<Object>(arra.gw.length);
                arra = arra.gw;
                n2 = arra.length;
                for (n3 = 0; n3 < n2; ++n3) {
                    Object object = di.o(arra[n3]);
                    if (object == arU) {
                        return arU;
                    }
                    arrayList.add(object);
                }
                return arrayList;
            }
            case 3: {
                if (arra.gx.length != arra.gy.length) {
                    bh.T("Converting an invalid value to object: " + arra.toString());
                    return arU;
                }
                HashMap<Object, Object> hashMap = new HashMap<Object, Object>(arra.gy.length);
                for (n3 = n; n3 < arra.gx.length; ++n3) {
                    Object object = di.o(arra.gx[n3]);
                    Object object2 = di.o(arra.gy[n3]);
                    if (object == arU || object2 == arU) {
                        return arU;
                    }
                    hashMap.put(object, object2);
                }
                return hashMap;
            }
            case 4: {
                bh.T("Trying to convert a macro reference to object");
                return arU;
            }
            case 5: {
                bh.T("Trying to convert a function id to object");
                return arU;
            }
            case 6: {
                return arra.gB;
            }
            case 7: {
                StringBuffer stringBuffer = new StringBuffer();
                arra = arra.gD;
                n = arra.length;
                for (n3 = n2; n3 < n; ++n3) {
                    String string = di.j(arra[n3]);
                    if (string == arY) {
                        return arU;
                    }
                    stringBuffer.append(string);
                }
                return stringBuffer.toString();
            }
            case 8: 
        }
        return arra.gC;
    }

    public static String p(Object object) {
        if (object == null) {
            return arY;
        }
        return object.toString();
    }

    public static Object pE() {
        return arU;
    }

    public static Long pF() {
        return arV;
    }

    public static Double pG() {
        return arW;
    }

    public static Boolean pH() {
        return arZ;
    }

    public static dh pI() {
        return arX;
    }

    public static String pJ() {
        return arY;
    }

    public static d.a pK() {
        return asc;
    }

    public static dh q(Object object) {
        if (object instanceof dh) {
            return (dh)object;
        }
        if (di.w(object)) {
            return dh.z(di.x(object));
        }
        if (di.v(object)) {
            return dh.a(di.getDouble(object));
        }
        return di.cY(di.p(object));
    }

    public static Long r(Object object) {
        if (di.w(object)) {
            return di.x(object);
        }
        return di.cZ(di.p(object));
    }

    public static Double s(Object object) {
        if (di.v(object)) {
            return di.getDouble(object);
        }
        return di.da(di.p(object));
    }

    public static Boolean t(Object object) {
        if (object instanceof Boolean) {
            return (Boolean)object;
        }
        return di.db(di.p(object));
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static d.a u(Object var0) {
        var1_1 = false;
        var2_2 = new d.a();
        if (var0 instanceof d.a) {
            return (d.a)var0;
        }
        if (!(var0 instanceof String)) ** GOTO lbl9
        var2_2.type = 1;
        var2_2.gv = (String)var0;
        ** GOTO lbl40
lbl9: // 1 sources:
        if (!(var0 instanceof List)) ** GOTO lbl16
        var2_2.type = 2;
        var3_3 = (List)var0;
        var0 = new ArrayList<E>(var3_3.size());
        var3_3 = var3_3.iterator();
        var1_1 = false;
        ** GOTO lbl43
lbl16: // 1 sources:
        if (!(var0 instanceof Map)) ** GOTO lbl24
        var2_2.type = 3;
        var4_6 = ((Map)var0).entrySet();
        var0 = new ArrayList<E>(var4_6.size());
        var3_4 = new ArrayList<Object>(var4_6.size());
        var4_6 = var4_6.iterator();
        var1_1 = false;
        ** GOTO lbl52
lbl24: // 1 sources:
        if (di.v(var0)) {
            var2_2.type = 1;
            var2_2.gv = var0.toString();
        } else if (di.w(var0)) {
            var2_2.type = 6;
            var2_2.gB = di.x(var0);
        } else if (var0 instanceof Boolean) {
            var2_2.type = 8;
            var2_2.gC = (Boolean)var0;
        } else {
            var2_2 = new StringBuilder().append("Converting to Value from unknown object type: ");
            var0 = var0 == null ? "null" : var0.getClass().toString();
            bh.T(var2_2.append((String)var0).toString());
            return di.asc;
        }
lbl40: // 6 sources:
        do {
            var2_2.gF = var1_1;
            return var2_2;
            break;
        } while (true);
lbl43: // 2 sources:
        while (var3_3.hasNext()) {
            var4_5 = di.u(var3_3.next());
            if (var4_5 == di.asc) {
                return di.asc;
            }
            var1_1 = var1_1 != false || var4_5.gF != false;
            var0.add(var4_5);
        }
        var2_2.gw = var0.toArray(new d.a[0]);
        ** GOTO lbl40
lbl52: // 2 sources:
        while (var4_6.hasNext()) {
            var6_8 = (Map.Entry)var4_6.next();
            var5_7 = di.u(var6_8.getKey());
            var6_8 = di.u(var6_8.getValue());
            if (var5_7 == di.asc) return di.asc;
            if (var6_8 == di.asc) {
                return di.asc;
            }
            var1_1 = var1_1 != false || var5_7.gF != false || var6_8.gF != false;
            var0.add(var5_7);
            var3_4.add(var6_8);
        }
        var2_2.gx = var0.toArray(new d.a[0]);
        var2_2.gy = var3_4.toArray(new d.a[0]);
        ** while (true)
    }

    private static boolean v(Object object) {
        if (object instanceof Double || object instanceof Float || object instanceof dh && ((dh)object).pz()) {
            return true;
        }
        return false;
    }

    private static boolean w(Object object) {
        if (object instanceof Byte || object instanceof Short || object instanceof Integer || object instanceof Long || object instanceof dh && ((dh)object).pA()) {
            return true;
        }
        return false;
    }

    private static long x(Object object) {
        if (object instanceof Number) {
            return ((Number)object).longValue();
        }
        bh.T("getInt64 received non-Number");
        return 0;
    }
}

