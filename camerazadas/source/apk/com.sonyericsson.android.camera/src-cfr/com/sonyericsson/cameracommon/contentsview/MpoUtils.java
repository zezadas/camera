/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

public class MpoUtils {
    public static final int MULTIANGLE = 2;
    public static final int STEREO = 1;
    private static final String TAG = MpoUtils.class.getSimpleName();
    public static final int UNKNOWN = 0;

    private MpoUtils() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static boolean checkFormatIdentifier(RandomAccessFile randomAccessFile) throws IOException {
        boolean bl = true;
        byte[] arrby = new byte[4];
        if (arrby.length != randomAccessFile.read(arrby)) {
            return false;
        }
        if (arrby[0] != 77) return false;
        if (arrby[1] != 80) return false;
        if (arrby[2] != 70) return false;
        if (arrby[3] != 0) return false;
        return bl;
    }

    static boolean checkMPEntryTag(RandomAccessFile randomAccessFile) throws IOException {
        if (45058 == (65535 & randomAccessFile.readShort())) {
            return true;
        }
        return false;
    }

    /*
     * Exception decompiling
     */
    public static int getType(String var0) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [1[TRYBLOCK]], but top level block is 18[FORLOOP]
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

    static boolean isAPP(byte by, byte by2) {
        if (by == -1 && by2 >= -32 && by2 <= -17) {
            return true;
        }
        return false;
    }

    static boolean isAPP2(byte by, byte by2) {
        if (by == -1 && by2 == -30) {
            return true;
        }
        return false;
    }

    static boolean isEOI(byte by, byte by2) {
        if (by == -1 && by2 == -39) {
            return true;
        }
        return false;
    }

    static boolean isSOI(byte by, byte by2) {
        if (by == -1 && by2 == -40) {
            return true;
        }
        return false;
    }

    static void skip(RandomAccessFile randomAccessFile, int n) throws EOFException, IOException {
        if (n != randomAccessFile.skipBytes(n)) {
            throw new EOFException();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static int typeFromEntries(int n) {
        int n2 = 2;
        if (n == 2) {
            return 1;
        }
        if (n == 15) return n2;
        return 0;
    }

    private static class JpegMaker {
        static final byte APP0 = -32;
        static final byte APP15 = -17;
        static final byte APP2 = -30;
        static final byte EOI = -39;
        static final byte MARKER = -1;
        static final byte SOI = -40;

        private JpegMaker() {
        }
    }

}

