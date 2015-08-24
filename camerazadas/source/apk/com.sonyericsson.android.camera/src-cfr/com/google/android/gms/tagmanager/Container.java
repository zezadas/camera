/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.ag;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.br;
import com.google.android.gms.tagmanager.bz;
import com.google.android.gms.tagmanager.ce;
import com.google.android.gms.tagmanager.cr;
import com.google.android.gms.tagmanager.ct;
import com.google.android.gms.tagmanager.di;
import com.google.android.gms.tagmanager.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Container {
    private final String aoc;
    private final DataLayer aod;
    private ct aoe;
    private Map<String, FunctionCallMacroCallback> aof = new HashMap<String, FunctionCallMacroCallback>();
    private Map<String, FunctionCallTagCallback> aog = new HashMap<String, FunctionCallTagCallback>();
    private volatile long aoh;
    private volatile String aoi = "";
    private final Context mContext;

    Container(Context context, DataLayer dataLayer, String string, long l, c.j j) {
        this.mContext = context;
        this.aod = dataLayer;
        this.aoc = string;
        this.aoh = l;
        this.a(j.gs);
        if (j.gr != null) {
            this.a(j.gr);
        }
    }

    Container(Context context, DataLayer dataLayer, String string, long l, cr.c c) {
        this.mContext = context;
        this.aod = dataLayer;
        this.aoc = string;
        this.aoh = l;
        this.a(c);
    }

    private void a(c.f f) {
        if (f == null) {
            throw new NullPointerException();
        }
        try {
            cr.c c = cr.b(f);
            this.a(c);
            return;
        }
        catch (cr.g var2_3) {
            bh.T("Not loading resource: " + f + " because it is invalid: " + var2_3.toString());
            return;
        }
    }

    private void a(cr.c c) {
        this.aoi = c.getVersion();
        ag ag = this.cq(this.aoi);
        this.a(new ct(this.mContext, c, this.aod, new a(), new b(), ag));
    }

    private void a(ct ct) {
        synchronized (this) {
            this.aoe = ct;
            return;
        }
    }

    private void a(c.i[] arri) {
        ArrayList<c.i> arrayList = new ArrayList<c.i>();
        int n = arri.length;
        for (int i = 0; i < n; ++i) {
            arrayList.add(arri[i]);
        }
        this.nT().k(arrayList);
    }

    private ct nT() {
        synchronized (this) {
            ct ct = this.aoe;
            return ct;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    FunctionCallMacroCallback cn(String object) {
        Map<String, FunctionCallMacroCallback> map = this.aof;
        synchronized (map) {
            return this.aof.get(object);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    FunctionCallTagCallback co(String object) {
        Map<String, FunctionCallTagCallback> map = this.aog;
        synchronized (map) {
            return this.aog.get(object);
        }
    }

    void cp(String string) {
        this.nT().cp(string);
    }

    ag cq(String string) {
        if (ce.oJ().oK().equals((Object)ce.a.aqj)) {
            // empty if block
        }
        return new br();
    }

    public boolean getBoolean(String string) {
        ct ct = this.nT();
        if (ct == null) {
            bh.T("getBoolean called for closed container.");
            return di.pH();
        }
        try {
            boolean bl = di.n(ct.cR(string).getObject());
            return bl;
        }
        catch (Exception var1_2) {
            bh.T("Calling getBoolean() threw an exception: " + var1_2.getMessage() + " Returning default value.");
            return di.pH();
        }
    }

    public String getContainerId() {
        return this.aoc;
    }

    public double getDouble(String string) {
        ct ct = this.nT();
        if (ct == null) {
            bh.T("getDouble called for closed container.");
            return di.pG();
        }
        try {
            double d = di.m(ct.cR(string).getObject());
            return d;
        }
        catch (Exception var1_2) {
            bh.T("Calling getDouble() threw an exception: " + var1_2.getMessage() + " Returning default value.");
            return di.pG();
        }
    }

    public long getLastRefreshTime() {
        return this.aoh;
    }

    public long getLong(String string) {
        ct ct = this.nT();
        if (ct == null) {
            bh.T("getLong called for closed container.");
            return di.pF();
        }
        try {
            long l = di.l(ct.cR(string).getObject());
            return l;
        }
        catch (Exception var1_2) {
            bh.T("Calling getLong() threw an exception: " + var1_2.getMessage() + " Returning default value.");
            return di.pF();
        }
    }

    public String getString(String string) {
        ct ct = this.nT();
        if (ct == null) {
            bh.T("getString called for closed container.");
            return di.pJ();
        }
        try {
            string = di.j(ct.cR(string).getObject());
            return string;
        }
        catch (Exception var1_2) {
            bh.T("Calling getString() threw an exception: " + var1_2.getMessage() + " Returning default value.");
            return di.pJ();
        }
    }

    public boolean isDefault() {
        if (this.getLastRefreshTime() == 0) {
            return true;
        }
        return false;
    }

    String nS() {
        return this.aoi;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void registerFunctionCallMacroCallback(String string, FunctionCallMacroCallback functionCallMacroCallback) {
        if (functionCallMacroCallback == null) {
            throw new NullPointerException("Macro handler must be non-null");
        }
        Map<String, FunctionCallMacroCallback> map = this.aof;
        synchronized (map) {
            this.aof.put(string, functionCallMacroCallback);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void registerFunctionCallTagCallback(String string, FunctionCallTagCallback functionCallTagCallback) {
        if (functionCallTagCallback == null) {
            throw new NullPointerException("Tag callback must be non-null");
        }
        Map<String, FunctionCallTagCallback> map = this.aog;
        synchronized (map) {
            this.aog.put(string, functionCallTagCallback);
            return;
        }
    }

    void release() {
        this.aoe = null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void unregisterFunctionCallMacroCallback(String string) {
        Map<String, FunctionCallMacroCallback> map = this.aof;
        synchronized (map) {
            this.aof.remove(string);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void unregisterFunctionCallTagCallback(String string) {
        Map<String, FunctionCallTagCallback> map = this.aog;
        synchronized (map) {
            this.aog.remove(string);
            return;
        }
    }

    public static interface FunctionCallMacroCallback {
        public Object getValue(String var1, Map<String, Object> var2);
    }

    public static interface FunctionCallTagCallback {
        public void execute(String var1, Map<String, Object> var2);
    }

    private class a
    implements s.a {
        private a() {
        }

        @Override
        public Object b(String string, Map<String, Object> map) {
            FunctionCallMacroCallback functionCallMacroCallback = Container.this.cn(string);
            if (functionCallMacroCallback == null) {
                return null;
            }
            return functionCallMacroCallback.getValue(string, map);
        }
    }

    private class b
    implements s.a {
        private b() {
        }

        @Override
        public Object b(String string, Map<String, Object> map) {
            FunctionCallTagCallback functionCallTagCallback = Container.this.co(string);
            if (functionCallTagCallback != null) {
                functionCallTagCallback.execute(string, map);
            }
            return di.pJ();
        }
    }

}

