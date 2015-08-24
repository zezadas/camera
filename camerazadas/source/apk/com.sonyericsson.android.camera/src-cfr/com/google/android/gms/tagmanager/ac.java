/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.di;
import com.google.android.gms.tagmanager.j;
import java.util.Map;

class ac
extends aj {
    private static final String ID = a.aa.toString();
    private static final String apf = b.bw.toString();
    private static final String apg = b.dH.toString();
    private static final String aph = b.de.toString();
    private static final String api = b.dP.toString();

    public ac() {
        super(ID, apf);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public d.a C(Map<String, d.a> object) {
        int n;
        Object object2;
        block11 : {
            object2 = (d.a)object.get(apf);
            if (object2 == null) return di.pK();
            if (object2 == di.pK()) {
                return di.pK();
            }
            String string = di.j((d.a)object2);
            object2 = (d.a)object.get(aph);
            String string2 = object2 == null ? "text" : di.j((d.a)object2);
            object2 = (d.a)object.get(api);
            object2 = object2 == null ? "base16" : di.j((d.a)object2);
            n = (object = (d.a)object.get(apg)) != null && di.n((d.a)object) != false ? 3 : 2;
            try {
                if ("text".equals(string2)) {
                    object = string.getBytes();
                    break block11;
                }
                if ("base16".equals(string2)) {
                    object = j.cm(string);
                    break block11;
                }
                if ("base64".equals(string2)) {
                    object = Base64.decode(string, n);
                    break block11;
                }
                if (!"base64url".equals(string2)) {
                    bh.T("Encode: unknown input format: " + string2);
                    return di.pK();
                }
                object = Base64.decode(string, n | 8);
            }
            catch (IllegalArgumentException var1_2) {
                bh.T("Encode: invalid input:");
                return di.pK();
            }
        }
        if ("base16".equals(object2)) {
            object = j.d((byte[])object);
            return di.u(object);
        }
        if ("base64".equals(object2)) {
            object = Base64.encodeToString((byte[])object, n);
            return di.u(object);
        }
        if ("base64url".equals(object2)) {
            object = Base64.encodeToString((byte[])object, n | 8);
            return di.u(object);
        }
        bh.T("Encode: unknown output format: " + (String)object2);
        return di.pK();
    }

    @Override
    public boolean nN() {
        return true;
    }
}

