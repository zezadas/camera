/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.util;

import com.sonymobile.cameracommon.remotedevice.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class Util {
    private static final boolean IS_DEBUG = false;

    public static int byteArray2Integer(byte[] arrby, int n, int n2) {
        int n3 = 0;
        for (int i = n; i < n + n2; ++i) {
            n3 = n3 << 8 | arrby[i] & 255;
        }
        return n3;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static byte[] readInputStreamAsByteArray(String var0, InputStream var1_1, int var2_4) {
        var4_5 = new ByteArrayOutputStream();
        var5_6 = new byte[1024];
        try {
            do {
                var3_7 = var4_5.size();
                if ((var3_7 = var1_1 /* !! */ .read(var5_6, 0, Math.min(var5_6.length, var2_4 - var3_7))) < 0) ** break;
                var4_5.write(var5_6, 0, var3_7);
            } while (var2_4 > (var3_7 = var4_5.size()));
        }
        catch (IOException var1_2) {
            Log.logError(var0, "Failed to read InputStream.");
            var1_2.printStackTrace();
            return null;
        }
        var1_1 /* !! */  = (InputStream)var4_5.toByteArray();
        try {
            var4_5.close();
            return var1_1 /* !! */ ;
        }
        catch (IOException var1_3) {
            Log.logError(var0, "Failed to close output stream.");
            var1_3.printStackTrace();
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static String readInputStreamAsString(String string, InputStream closeable) {
        closeable = new InputStreamReader((InputStream)closeable);
        StringBuilder stringBuilder = new StringBuilder();
        char[] arrc = new char[1024];
        try {
            int n;
            while ((n = closeable.read(arrc)) > 0) {
                stringBuilder.append(arrc, 0, n);
            }
            return stringBuilder.toString();
        }
        catch (IOException iOException) {
            Log.logError(string, "Failed to read InputStream.");
            iOException.printStackTrace();
            return null;
        }
    }

    public static class Http {
        private static int CONNECTION_TIMEOUT = 10000;
        private static final boolean IS_DEBUG = false;
        private static int READ_TIMEOUT = 10000;

        /*
         * Exception decompiling
         */
        public static InputStream get(String var0, String var1_1) {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [5[TRYBLOCK]], but top level block is 27[SIMPLE_IF_TAKEN]
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:392)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:444)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:644)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:727)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
            // org.benf.cfr.reader.Main.doJar(Main.java:126)
            // org.benf.cfr.reader.Main.main(Main.java:178)
            throw new IllegalStateException("Decompilation failed");
        }

        /*
         * Exception decompiling
         */
        public static InputStream post(String var0, String var1_1, String var2_15) {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [9[TRYBLOCK]], but top level block is 37[SIMPLE_IF_TAKEN]
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:392)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:444)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:644)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:727)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
            // org.benf.cfr.reader.Main.doJar(Main.java:126)
            // org.benf.cfr.reader.Main.main(Main.java:178)
            throw new IllegalStateException("Decompilation failed");
        }
    }

    public static class Uri {
        /*
         * Enabled aggressive block sorting
         */
        public static String getHostFrom(String string) {
            int n;
            int n2 = string.indexOf("://");
            if (n2 == -1 || (n = string.indexOf("/", n2 + 3)) == -1) {
                return null;
            }
            return string.substring(n2 + 3, n);
        }

        /*
         * Enabled aggressive block sorting
         */
        public static String getSchemeAndHostFrom(String string) {
            int n = string.indexOf("://");
            if (n == -1 || (n = string.indexOf("/", n + 3)) == -1) {
                return null;
            }
            return string.substring(0, n);
        }
    }

}

