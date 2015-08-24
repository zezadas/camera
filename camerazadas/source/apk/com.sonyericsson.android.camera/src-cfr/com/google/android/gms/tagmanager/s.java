/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.di;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class s
extends aj {
    private static final String ID = com.google.android.gms.internal.a.L.toString();
    private static final String anV;
    private static final String aoE;
    private final a aoF;

    static {
        aoE = b.cV.toString();
        anV = b.bl.toString();
    }

    public s(a a) {
        super(ID, aoE);
        this.aoF = a;
    }

    @Override
    public d.a C(Map<String, d.a> iterator) {
        String string = di.j(iterator.get(aoE));
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        if ((iterator = iterator.get(anV)) != null) {
            if (!((iterator = di.o((d.a)iterator)) instanceof Map)) {
                bh.W("FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map.");
                return di.pK();
            }
            for (Map.Entry entry : ((Map)iterator).entrySet()) {
                hashMap.put(entry.getKey().toString(), entry.getValue());
            }
        }
        try {
            iterator = di.u(this.aoF.b(string, hashMap));
            return iterator;
        }
        catch (Exception var1_2) {
            bh.W("Custom macro/tag " + string + " threw exception " + var1_2.getMessage());
            return di.pK();
        }
    }

    @Override
    public boolean nN() {
        return false;
    }

    public static interface a {
        public Object b(String var1, Map<String, Object> var2);
    }

}

