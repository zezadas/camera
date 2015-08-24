/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aq;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.cz;
import com.google.android.gms.tagmanager.dg;
import com.google.android.gms.tagmanager.di;
import com.google.android.gms.tagmanager.y;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class i
extends dg {
    private static final String ID = com.google.android.gms.internal.a.ay.toString();
    private static final String URL = b.eX.toString();
    private static final String anV = b.bl.toString();
    private static final String anW = b.eW.toString();
    static final String anX = "gtm_" + ID + "_unrepeatable";
    private static final Set<String> anY = new HashSet<String>();
    private final a anZ;
    private final Context mContext;

    public i(Context context) {
        this(context, new a(){

            @Override
            public aq nO() {
                return y.X(Context.this);
            }
        });
    }

    i(Context context, a a) {
        super(ID, URL);
        this.anZ = a;
        this.mContext = context;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private boolean cj(String string) {
        boolean bl = true;
        synchronized (this) {
            boolean bl2 = this.cl(string);
            if (bl2) return bl;
            if (!this.ck(string)) return false;
            anY.add(string);
            return bl;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public void E(Map<String, d.a> iterator) {
        String string = iterator.get(anW) != null ? di.j((d.a)iterator.get(anW)) : null;
        if (string != null && this.cj(string)) {
            return;
        }
        Uri.Builder builder = Uri.parse(di.j((d.a)iterator.get(URL))).buildUpon();
        if ((iterator = (d.a)iterator.get(anV)) != null) {
            if (!((iterator = di.o((d.a)iterator)) instanceof List)) {
                bh.T("ArbitraryPixel: additional params not a list: not sending partial hit: " + builder.build().toString());
                return;
            }
            iterator = ((List)iterator).iterator();
            while (iterator.hasNext()) {
                Object object = iterator.next();
                if (!(object instanceof Map)) {
                    bh.T("ArbitraryPixel: additional params contains non-map: not sending partial hit: " + builder.build().toString());
                    return;
                }
                for (Map.Entry entry : ((Map)object).entrySet()) {
                    builder.appendQueryParameter(entry.getKey().toString(), entry.getValue().toString());
                }
            }
        }
        iterator = builder.build().toString();
        this.anZ.nO().cz((String)iterator);
        bh.V("ArbitraryPixel: url = " + iterator);
        if (string == null) return;
        // MONITORENTER : com.google.android.gms.tagmanager.i.class
        anY.add(string);
        cz.a(this.mContext, anX, string, "true");
        // MONITOREXIT : com.google.android.gms.tagmanager.i.class
    }

    boolean ck(String string) {
        return this.mContext.getSharedPreferences(anX, 0).contains(string);
    }

    boolean cl(String string) {
        return anY.contains(string);
    }

    public static interface a {
        public aq nO();
    }

}

