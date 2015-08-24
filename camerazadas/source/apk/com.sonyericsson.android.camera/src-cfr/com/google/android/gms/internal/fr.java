/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.bx;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.ci;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fm;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.ft;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.fw;
import com.google.android.gms.internal.fx;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@ez
public final class fr
extends fm.a {
    private static final Object uf = new Object();
    private static fr ug;
    private final Context mContext;
    private final fx uh;
    private final ci ui;
    private final bm uj;

    fr(Context context, bm bm, ci ci, fx fx) {
        this.mContext = context;
        this.uh = fx;
        this.ui = ci;
        this.uj = bm;
    }

    private static gw.a I(final String string) {
        return new gw.a(){

            @Override
            public void a(gv gv) {
                String string2 = String.format("javascript:%s(%s);", "AFMA_buildAdURL", string);
                gs.V("About to execute: " + string2);
                gv.loadUrl(string2);
            }
        };
    }

    private static fk a(final Context context, bm object, ci object2, fx fx, final fi fi) {
        Object object3;
        gs.S("Starting ad request from service.");
        object2.init();
        fw fw = new fw(context);
        if (fw.vd == -1) {
            gs.S("Device is offline.");
            return new fk(2);
        }
        final ft ft = new ft(fi.applicationInfo.packageName);
        if (fi.tx.extras != null && (object3 = fi.tx.extras.getString("_ad")) != null) {
            return fs.a(context, fi, (String)object3);
        }
        object3 = object2.a(250);
        object2 = object.bp();
        if ((object = fs.a(fi, fw, (Location)object3, object.bq(), object.br())) == null) {
            return new fk(0);
        }
        object = fr.I((String)object);
        gr.wC.post(new Runnable((gw.a)object, (String)object2){
            final /* synthetic */ gw.a um;
            final /* synthetic */ String un;

            @Override
            public void run() {
                gv gv = gv.a(context, new ay(), false, false, null, fi.lD);
                gv.setWillNotDraw(true);
                ft.b(gv);
                gw gw = gv.du();
                gw.a("/invalidRequest", ft.us);
                gw.a("/loadAdURL", ft.ut);
                gw.a("/log", bx.pG);
                gw.a(this.um);
                gs.S("Loading the JS library.");
                gv.loadUrl(this.un);
            }
        });
        try {
            object2 = ft.cK().get(10, TimeUnit.SECONDS);
            if (object2 == null) {
                return new fk(0);
            }
        }
        catch (Exception var0_1) {
            return new fk(0);
        }
        if (object2.getErrorCode() != -2) {
            return new fk(object2.getErrorCode());
        }
        object = null;
        if (object2.cN()) {
            object = fx.K(fi.ty.packageName);
        }
        return fr.a(context, fi.lD.wD, object2.getUrl(), (String)object, (fv)object2);
    }

    /*
     * Exception decompiling
     */
    public static fk a(Context var0, String var1_3, String var2_4, String var3_5, fv var4_6) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [0[TRYBLOCK]], but top level block is 17[UNCONDITIONALDOLOOP]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:392)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:444)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static fr a(Context object, bm bm, ci ci, fx fx) {
        Object object2 = uf;
        synchronized (object2) {
            if (ug != null) return ug;
            ug = new fr(object.getApplicationContext(), bm, ci, fx);
            return ug;
        }
    }

    private static void a(String object, Map<String, List<String>> map, String string, int n) {
        if (gs.u(2)) {
            gs.V("Http Response: {\n  URL:\n    " + (String)object + "\n  Headers:");
            if (map != null) {
                object = map.keySet().iterator();
                while (object.hasNext()) {
                    Object object2 = (String)object.next();
                    gs.V("    " + (String)object2 + ":");
                    for (String string2 : map.get(object2)) {
                        gs.V("      " + string2);
                    }
                }
            }
            gs.V("  Body:");
            if (string != null) {
                for (int i = 0; i < Math.min(string.length(), 100000); i+=1000) {
                    gs.V(string.substring(i, Math.min(string.length(), i + 1000)));
                }
            } else {
                gs.V("    null");
            }
            gs.V("  Response Code:\n    " + n + "\n}");
        }
    }

    @Override
    public fk b(fi fi) {
        return fr.a(this.mContext, this.uj, this.ui, this.uh, fi);
    }

}

