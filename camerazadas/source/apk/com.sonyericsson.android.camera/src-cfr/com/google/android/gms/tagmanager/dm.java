/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.bz;
import com.google.android.gms.tagmanager.di;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class dm {
    private static bz<d.a> a(bz<d.a> bz) {
        try {
            bz<d.a> bz2 = new bz<d.a>(di.u(dm.de(di.j(bz.getObject()))), bz.oG());
            return bz2;
        }
        catch (UnsupportedEncodingException var1_2) {
            bh.b("Escape URI: unsupported encoding", var1_2);
            return bz;
        }
    }

    private static bz<d.a> a(bz<d.a> bz, int n) {
        if (!dm.q(bz.getObject())) {
            bh.T("Escaping can only be applied to strings.");
            return bz;
        }
        switch (n) {
            default: {
                bh.T("Unsupported Value Escaping: " + n);
                return bz;
            }
            case 12: 
        }
        return dm.a(bz);
    }

    static /* varargs */ bz<d.a> a(bz<d.a> bz, int ... arrn) {
        int n = arrn.length;
        for (int i = 0; i < n; ++i) {
            bz = dm.a(bz, arrn[i]);
        }
        return bz;
    }

    static String de(String string) throws UnsupportedEncodingException {
        return URLEncoder.encode(string, "UTF-8").replaceAll("\\+", "%20");
    }

    private static boolean q(d.a a) {
        return di.o(a) instanceof String;
    }
}

