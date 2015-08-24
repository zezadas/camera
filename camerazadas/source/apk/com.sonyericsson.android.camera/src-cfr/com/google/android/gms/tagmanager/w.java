/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.dg;
import com.google.android.gms.tagmanager.di;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class w
extends dg {
    private static final String ID = a.ah.toString();
    private static final String VALUE = b.ff.toString();
    private static final String apa = b.bS.toString();
    private final DataLayer aod;

    public w(DataLayer dataLayer) {
        super(ID, VALUE);
        this.aod = dataLayer;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(d.a object) {
        if (object == null || object == di.pE() || (object = di.j((d.a)object)) == di.pJ()) {
            return;
        }
        this.aod.cv((String)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b(d.a iterator) {
        if (iterator != null && iterator != di.pE() && (iterator = di.o(iterator)) instanceof List) {
            iterator = ((List)iterator).iterator();
            while (iterator.hasNext()) {
                Object object = iterator.next();
                if (!(object instanceof Map)) continue;
                object = (Map)object;
                this.aod.push((Map<String, Object>)object);
            }
        }
    }

    @Override
    public void E(Map<String, d.a> map) {
        this.b(map.get(VALUE));
        this.a(map.get(apa));
    }
}

