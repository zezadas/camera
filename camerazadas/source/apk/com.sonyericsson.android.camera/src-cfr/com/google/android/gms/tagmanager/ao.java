/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.di;
import com.google.android.gms.tagmanager.j;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

class ao
extends aj {
    private static final String ID = a.ac.toString();
    private static final String apf = b.bw.toString();
    private static final String aph;
    private static final String apl;

    static {
        apl = b.bn.toString();
        aph = b.de.toString();
    }

    public ao() {
        super(ID, apf);
    }

    private byte[] d(String object, byte[] arrby) throws NoSuchAlgorithmException {
        object = MessageDigest.getInstance((String)object);
        object.update(arrby);
        return object.digest();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public d.a C(Map<String, d.a> object) {
        Object object2 = (d.a)object.get(apf);
        if (object2 == null) return di.pK();
        if (object2 == di.pK()) {
            return di.pK();
        }
        String string = di.j((d.a)object2);
        object2 = (d.a)object.get(apl);
        object2 = object2 == null ? "MD5" : di.j((d.a)object2);
        object = (object = (d.a)object.get(aph)) == null ? "text" : di.j((d.a)object);
        if ("text".equals(object)) {
            object = string.getBytes();
        } else {
            if (!"base16".equals(object)) {
                bh.T("Hash: unknown input format: " + (String)object);
                return di.pK();
            }
            object = j.cm(string);
        }
        try {
            return di.u(j.d(this.d((String)object2, (byte[])object)));
        }
        catch (NoSuchAlgorithmException var1_2) {
            bh.T("Hash: unknown algorithm: " + (String)object2);
            return di.pK();
        }
    }

    @Override
    public boolean nN() {
        return true;
    }
}

