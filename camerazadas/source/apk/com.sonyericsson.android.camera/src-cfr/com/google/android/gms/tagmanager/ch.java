/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.di;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

class ch
extends aj {
    private static final String ID = a.ag.toString();
    private static final String aqn = b.bw.toString();
    private static final String aqo = b.bx.toString();
    private static final String aqp = b.dc.toString();
    private static final String aqq = b.cW.toString();

    public ch() {
        super(ID, aqn, aqo);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public d.a C(Map<String, d.a> object) {
        block12 : {
            int n;
            Object object2 = (d.a)object.get(aqn);
            d.a a = (d.a)object.get(aqo);
            if (object2 == null) return di.pK();
            if (object2 == di.pK()) return di.pK();
            if (a == null) return di.pK();
            if (a == di.pK()) {
                return di.pK();
            }
            int n2 = 64;
            if (di.n((d.a)object.get(aqp)).booleanValue()) {
                n2 = 66;
            }
            if ((object = (d.a)object.get(aqq)) != null) {
                int n3;
                if ((object = di.l((d.a)object)) == di.pF()) {
                    return di.pK();
                }
                n = n3 = object.intValue();
                if (n3 < 0) {
                    return di.pK();
                }
            } else {
                n = 1;
            }
            try {
                object = di.j((d.a)object2);
                object2 = di.j(a);
                a = null;
            }
            catch (PatternSyntaxException var1_2) {
                return di.pK();
            }
            object2 = Pattern.compile((String)object2, n2).matcher((CharSequence)object);
            object = a;
            if (!object2.find()) break block12;
            object = a;
            if (object2.groupCount() < n) break block12;
            object = object2.group(n);
        }
        if (object != null) return di.u(object);
        return di.pK();
    }

    @Override
    public boolean nN() {
        return true;
    }
}

