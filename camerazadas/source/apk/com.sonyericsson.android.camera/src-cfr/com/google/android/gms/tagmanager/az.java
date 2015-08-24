/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.aj;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.dm;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class az
extends aj {
    private static final String ID = com.google.android.gms.internal.a.ae.toString();
    private static final String apA;
    private static final String apB;
    private static final String apC;
    private static final String apf;

    static {
        apf = b.bw.toString();
        apA = b.di.toString();
        apB = b.dm.toString();
        apC = b.cH.toString();
    }

    public az() {
        super(ID, apf);
    }

    private String a(String string, a iterator, Set<Character> object) {
        switch (.apD[iterator.ordinal()]) {
            default: {
                return string;
            }
            case 1: {
                try {
                    iterator = dm.de(string);
                    return iterator;
                }
                catch (UnsupportedEncodingException var2_3) {
                    bh.b("Joiner: unsupported encoding", var2_3);
                    return string;
                }
            }
            case 2: 
        }
        string = string.replace((CharSequence)"\\", (CharSequence)"\\\\");
        iterator = object.iterator();
        while (iterator.hasNext()) {
            object = iterator.next().toString();
            string = string.replace((CharSequence)object, (CharSequence)("\\" + (String)object));
        }
        return string;
    }

    private void a(StringBuilder stringBuilder, String string, a a, Set<Character> set) {
        stringBuilder.append(this.a(string, a, set));
    }

    private void a(Set<Character> set, String string) {
        for (int i = 0; i < string.length(); ++i) {
            set.add(Character.valueOf(string.charAt(i)));
        }
    }

    /*
     * Exception decompiling
     */
    @Override
    public d.a C(Map<String, d.a> var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:141)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:380)
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

    @Override
    public boolean nN() {
        return true;
    }

    private static enum a {
        apE,
        apF,
        apG;
        

        private a() {
        }
    }

}

