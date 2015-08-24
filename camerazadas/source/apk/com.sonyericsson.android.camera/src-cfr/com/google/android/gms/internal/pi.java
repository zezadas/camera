/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pf;
import com.google.android.gms.internal.pg;
import com.google.android.gms.internal.ph;
import com.google.android.gms.internal.pn;
import com.google.android.gms.internal.pp;
import com.google.android.gms.internal.pq;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class pi<M extends ph<M>, T> {
    protected final Class<T> awK;
    protected final boolean awL;
    protected final int tag;
    protected final int type;

    private pi(int n, Class<T> class_, int n2, boolean bl) {
        this.type = n;
        this.awK = class_;
        this.tag = n2;
        this.awL = bl;
    }

    public static <M extends ph<M>, T extends pn> pi<M, T> a(int n, Class<T> class_, int n2) {
        return new pi<M, T>(n, class_, n2, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private T m(List<pp> object) {
        int n;
        int n2 = 0;
        ArrayList<Object> arrayList = new ArrayList<Object>();
        for (n = 0; n < object.size(); ++n) {
            pp pp = (pp)object.get(n);
            if (pp.awV.length == 0) continue;
            this.a(pp, arrayList);
        }
        int n3 = arrayList.size();
        if (n3 == 0) {
            object = null;
            return (T)object;
        } else {
            T t = this.awK.cast(Array.newInstance(this.awK.getComponentType(), n3));
            n = n2;
            do {
                object = t;
                if (n >= n3) return (T)object;
                Array.set(t, n, arrayList.get(n));
                ++n;
            } while (true);
        }
    }

    private T n(List<pp> object) {
        if (object.isEmpty()) {
            return null;
        }
        object = object.get(object.size() - 1);
        return this.awK.cast(this.u(pf.p(object.awV)));
    }

    int A(Object object) {
        if (this.awL) {
            return this.B(object);
        }
        return this.C(object);
    }

    protected int B(Object object) {
        int n = 0;
        int n2 = Array.getLength(object);
        for (int i = 0; i < n2; ++i) {
            int n3 = n;
            if (Array.get(object, i) != null) {
                n3 = n + this.C(Array.get(object, i));
            }
            n = n3;
        }
        return n;
    }

    protected int C(Object object) {
        int n = pq.gI(this.tag);
        switch (this.type) {
            default: {
                throw new IllegalArgumentException("Unknown type " + this.type);
            }
            case 10: {
                return pg.b(n, (pn)object);
            }
            case 11: 
        }
        return pg.c(n, (pn)object);
    }

    protected void a(pp pp, List<Object> list) {
        list.add(this.u(pf.p(pp.awV)));
    }

    void a(Object object, pg pg) throws IOException {
        if (this.awL) {
            this.c(object, pg);
            return;
        }
        this.b(object, pg);
    }

    /*
     * Exception decompiling
     */
    protected void b(Object var1_1, pg var2_3) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
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

    protected void c(Object object, pg pg) {
        int n = Array.getLength(object);
        for (int i = 0; i < n; ++i) {
            Object object2 = Array.get(object, i);
            if (object2 == null) continue;
            this.b(object2, pg);
        }
    }

    final T l(List<pp> list) {
        if (list == null) {
            return null;
        }
        if (this.awL) {
            return this.m(list);
        }
        return this.n(list);
    }

    /*
     * Exception decompiling
     */
    protected Object u(pf var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
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
}

