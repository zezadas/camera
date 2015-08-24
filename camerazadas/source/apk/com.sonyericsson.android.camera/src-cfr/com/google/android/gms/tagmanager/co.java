/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.internal.c;
import com.google.android.gms.tagmanager.bg;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.bn;
import com.google.android.gms.tagmanager.ce;
import com.google.android.gms.tagmanager.r;

class co
implements Runnable {
    private final String aoc;
    private volatile String aoy;
    private final bn aqr;
    private final String aqs;
    private bg<c.j> aqt;
    private volatile r aqu;
    private volatile String aqv;
    private final Context mContext;

    co(Context context, String string, bn bn, r r) {
        this.mContext = context;
        this.aqr = bn;
        this.aoc = string;
        this.aqu = r;
        this.aoy = this.aqs = "/r?id=" + string;
        this.aqv = null;
    }

    public co(Context context, String string, r r) {
        this(context, string, new bn(), r);
    }

    private boolean oM() {
        NetworkInfo networkInfo = ((ConnectivityManager)this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (!(networkInfo != null && networkInfo.isConnected())) {
            bh.V("...no network connectivity");
            return false;
        }
        return true;
    }

    /*
     * Exception decompiling
     */
    private void oN() {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [0[TRYBLOCK]], but top level block is 6[CATCHBLOCK]
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

    void a(bg<c.j> bg) {
        this.aqt = bg;
    }

    void cJ(String string) {
        bh.S("Setting previous container version: " + string);
        this.aqv = string;
    }

    void cu(String string) {
        if (string == null) {
            this.aoy = this.aqs;
            return;
        }
        bh.S("Setting CTFE URL path: " + string);
        this.aoy = string;
    }

    String oO() {
        String string;
        String string2 = string = this.aqu.od() + this.aoy + "&v=a65833898";
        if (this.aqv != null) {
            string2 = string;
            if (!this.aqv.trim().equals("")) {
                string2 = string + "&pv=" + this.aqv;
            }
        }
        string = string2;
        if (ce.oJ().oK().equals((Object)ce.a.aqj)) {
            string = string2 + "&gtm_debug=x";
        }
        return string;
    }

    @Override
    public void run() {
        if (this.aqt == null) {
            throw new IllegalStateException("callback must be set before execute");
        }
        this.aqt.ob();
        this.oN();
    }
}

