/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.c;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.ag;
import com.google.android.gms.tagmanager.cr;
import com.google.android.gms.tagmanager.ct;
import com.google.android.gms.tagmanager.s;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public class Container {
    private final String aoc;
    private final DataLayer aod;
    private ct aoe;
    private Map<String, FunctionCallMacroCallback> aof;
    private Map<String, FunctionCallTagCallback> aog;
    private volatile long aoh;
    private volatile String aoi;
    private final Context mContext;

    Container(Context var1, DataLayer var2, String var3, long var4, c.j var6);

    Container(Context var1, DataLayer var2, String var3, long var4, cr.c var6);

    private void a(c.f var1);

    private void a(cr.c var1);

    private void a(ct var1);

    private void a(c.i[] var1);

    private ct nT();

    FunctionCallMacroCallback cn(String var1);

    FunctionCallTagCallback co(String var1);

    void cp(String var1);

    ag cq(String var1);

    public boolean getBoolean(String var1);

    public String getContainerId();

    public double getDouble(String var1);

    public long getLastRefreshTime();

    public long getLong(String var1);

    public String getString(String var1);

    public boolean isDefault();

    String nS();

    public void registerFunctionCallMacroCallback(String var1, FunctionCallMacroCallback var2);

    public void registerFunctionCallTagCallback(String var1, FunctionCallTagCallback var2);

    void release();

    public void unregisterFunctionCallMacroCallback(String var1);

    public void unregisterFunctionCallTagCallback(String var1);

    public static interface FunctionCallMacroCallback {
        public Object getValue(String var1, Map<String, Object> var2);
    }

    public static interface FunctionCallTagCallback {
        public void execute(String var1, Map<String, Object> var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class a
    implements s.a {
        final /* synthetic */ Container aoj;

        private a(Container var1);

        /* synthetic */ a(Container var1,  var2);

        @Override
        public Object b(String var1, Map<String, Object> var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class b
    implements s.a {
        final /* synthetic */ Container aoj;

        private b(Container var1);

        /* synthetic */ b(Container var1,  var2);

        @Override
        public Object b(String var1, Map<String, Object> var2);
    }

}

